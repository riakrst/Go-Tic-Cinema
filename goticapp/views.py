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
    # pagination
    # paginator = Paginator(posts, 6)
    # page = request.GET.get('page')
    # try:
    #     posts = paginator.page(page)
    # except PageNotAnInteger:
    #     posts = paginator.page(1)
    # except EmptyPage:
    #     post = paginator.page(paginator.num_pages)

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
            schedule = get_object_or_404(Jadwal, pk=id)
            tiket = Tiket.objects.filter(jadwal=schedule).first()
            order = Order.objects.create(
                user=request.user, tiket=tiket, jumlah=jumlah)
            return redirect('history')
    else:
        form = OrderForm()
    return redirect('detail_film')


'''def pesan_tiket(request, id):
    film = get_object_or_404(Film, pk=id)

    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            jumlah = form.cleaned_data['jumlah']
            jadwal = request.POST['id']
            tiket = Tiket.objects.filter(jadwal=jadwal)
            order = Order.objects.create(
                user=request.user, tiket=tiket, jumlah=jumlah)
            order.save()
            return redirect('history')
    else:
        form = OrderForm()

    return render(request, 'film/detail.html', {'film': film, 'form': form})
'''

"""@login_required()
def detail_film(request, id):
    posts = get_object_or_404(Film, pk=id)
    jadwal = Jadwal.objects.filter(film=posts, pk=jadwal_id)
    film = jadwal.film

    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            jumlah_tiket = form.cleaned_data['jumlah']
            tiket = Tiket.objects.create(jadwal=jadwal, jumlah=jumlah_tiket)
            order = Order.objects.create(user=request.user, tiket=tiket, jumlah=jumlah_tiket)
            return redirect('history', order_id=order.id)
    else:
        form = OrderForm()
    
    return render(request, 'film/detail.html', {'posts': posts, 'film': film, 'jadwal': jadwal, 'form': form})
"""

"""view untuk halaman history tiket"""

# list order


@login_required()
def history_tiket(request,):
    return render(request, 'film/history.html')

# edit order


def edit_order(request, id):
    order = get_object_or_404(Order, id=id)

    if request.method == 'POST':
        form = OrderForm(request.POST, instance=order)
        if form.is_valid():
            form.save()
            return redirect('order_detail', id=order.id)
    else:
        form = OrderForm(instance=order)

    return render(request, 'film/history.html', {'form': form})

# delete order


def delete_order(request, id):
    order = get_object_or_404(Order, id=id)
    order.delete()
    return redirect('history_tiket')
