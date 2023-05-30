from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .models import Film


def post_film(request):
    film_list = Film.objects.all()
    paginator = Paginator(film_list, 6)
    page = request.GET.get('page')
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        post = paginator.page(paginator.num_pages)

    return render(request, 'home.html', {'page': page, 'posts': posts})
