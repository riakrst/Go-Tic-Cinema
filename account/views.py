from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
# from django.views.decorators.csrf import csrf_protect
from .forms import LoginForm, RegistrationForm


"""@csrf_protect
def csrf_failure_view(request, reason=""):
    return render(request, 'account/registration/csrf_failure.html')"""


@login_required
def dashboard(request):
    return render(request,
                  'account/post/home.html',
                  {'section': 'dashboard'})


def user_logout(request):
    logout(request)
    # return HttpResponse("You have successfully logged out.")
    form = LoginForm()
    return render(request, 'account/registration/login.html', {'form': form})


def user_login(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            user = authenticate(request,
                                username=cd['username'],
                                password=cd['password'])
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return dashboard(request)
                    # return HttpResponse('Authenticated '\
                    # 'successfully')
                else:
                    return HttpResponse('Disabled account')
            else:
                return HttpResponse('Invalid login')
    else:
        form = LoginForm()
        return render(request, 'account/registration/login.html', {'form': form})


def registration(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            email = form.cleaned_data['email']

            # Membuat objek pengguna baru
            user = User.objects.create_user(
                username=username, password=password, email=email)

            # Mengarahkan pengguna ke halaman login setelah registrasi sukses
            return redirect('login')
    else:
        form = RegistrationForm()

    return render(request, 'account/registration/registration.html', {'form': form})
