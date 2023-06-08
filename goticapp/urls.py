from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('register/', views.user_register, name='register'),
    path('login/', views.user_login, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('film/<int:id>/', views.detail_film, name='detail_film'),
    path('history/', views.history_tiket, name='history'),
]
