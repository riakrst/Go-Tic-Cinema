from django.urls import path
from . import views

urlpatterns = [
    path('film/', views.film, name='film'),
]
