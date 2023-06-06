from django.urls import path
from . import views

urlpatterns = [
    path('film/', views.post_film, name='film'),
    path('order/', views.order_tiket, name='order')
]
