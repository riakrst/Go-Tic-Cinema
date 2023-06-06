from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth.decorators import login_required
from .models import Film, Order


@login_required
def post_film(request):
    posts = Film.objects.all()
    paginator = Paginator(film_list, 6)
    page = request.GET.get('page')
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        post = paginator.page(paginator.num_pages)

    return render(request, 'film/home.html', {'page': page, 'posts': posts})


def film_detail(request, pk):
    film = Film.objects.get(pk=pk)
    return render(request, 'film/detail.html', {'film': film})


def order_tiket(request, tiket_id):
    tiket = Tiket.objects.get(id=tiket_id)
    if request.method == 'POST':
        jumlah = int(request.POST.get('jumlah'))
        order = Order(user=request.user, tiket=tiket, jumlah=jumlah,)
        order.save()
        return redirect('sukses')
    else:
        return render(request, 'order_tiket.html', {'tiket': tiket})
