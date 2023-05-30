from django.urls import path
from . import views

urlpatterns = [
    path('film_list/', views.post_film, name='film'),
]
