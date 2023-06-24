from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth import get_user_model
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .forms import LoginForm, RegistrationForm, OrderForm
from .models import Film, Jadwal, Order, Tiket


@login_required
def home(request):
    user = request.user
    posts = Film.objects.all()
    return render(request, 'film/home.html', {'user': user, 'posts': posts, })


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

# view halaman detail dan pesan tiket

@login_required
def detail_film(request, id):
    posts = get_object_or_404(Film, pk=id)
    jadwal = Jadwal.objects.filter(film=posts)
    return render(request, 'film/detail.html', {'posts': posts, 'jadwal': jadwal})


def pesan_tiket(request, id):
    film = get_object_or_404(Film, pk=id)
    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            jumlah = form.cleaned_data['jumlah']
            jadwal = get_object_or_404(Jadwal, pk=id)
            tiket = Tiket.objects.filter(jadwal=jadwal).first()
            order = Order.objects.create(
                user=request.user, tiket=tiket, jumlah=jumlah)
            return redirect('list_order')
    else:
        form = OrderForm()
    return redirect('detail_film', id=id)


"""view untuk halaman history tiket"""
# list order


def list_order(request):
    orders = Order.objects.filter(user=request.user,)
    return render(request, 'film/daftar_order.html', {'orders': orders, })


"""edit order"""


def edit_order(request, id):
    order = get_object_or_404(Order, id=id)

    if request.method == 'POST':
        form = OrderForm(request.POST, instance=order)
        if form.is_valid():
            form.save()
            return redirect('list_order')
    else:
        form = OrderForm(instance=order)
    return redirect('list_order')


"""delete order"""


def delete_order(request, id):
    order = get_object_or_404(Order, id=id)
    order.delete()
    return redirect('list_order')
