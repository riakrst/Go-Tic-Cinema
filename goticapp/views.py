from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth import get_user_model
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .forms import LoginForm, RegistrationForm, OrderForm
from .models import Film, Jadwal, Order


@login_required
def home(request):
    user = request.user
    posts = Film.objects.all()
    jadwal = Jadwal.objects.all()
    # pagination
    # paginator = Paginator(posts, 6)
    # page = request.GET.get('page')
    # try:
    #     posts = paginator.page(page)
    # except PageNotAnInteger:
    #     posts = paginator.page(1)
    # except EmptyPage:
    #     post = paginator.page(paginator.num_pages)

    return render(request, 'film/home.html', {'user': user, 'posts': posts, 'jadwal': jadwal, })


def user_register(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=password)
            login(request, user)
            return redirect('login')
    else:
        form = RegistrationForm()
    return render(request, 'account/registration.html', {'form': form})


def user_login(request):
    if request.method == 'POST':
        form = LoginForm(data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('home')
    else:
        form = LoginForm()
    return render(request, 'account/login.html', {'form': form})


@login_required
def user_logout(request):
    logout(request)
    return redirect('login')


@login_required()
def detail_film(request, id):
    film = get_object_or_404(Film, pk=id)
    detail = Film.objects.all()
    jadwal = Jadwal.objects.all()

    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('history')
    else:
        form = OrderForm()
    return render(request, 'film/detail.html', {'film': film, 'detail': detail, 'jadwal': jadwal, 'form': form})


# @login_required()
# def order_tiket(request, id):
#     tiket = Tiket.objects.get(id=id)
#     form = OrderForm(request.POST)
#     if request.method == 'POST':
#         jumlah = int(request.POST.get('jumlah'))
#         order = Order(user=request.user, tiket=tiket, jumlah=jumlah,)
#         order.save()
#         return redirect('history')
#     else:
#         return render(request, 'film/detail.html', {'tiket': tiket, 'form': form})
"""view untuk halaman history tiket"""


@login_required()
def history_tiket(request):
    return render(request, 'film/history.html')
