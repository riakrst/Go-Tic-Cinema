from django.urls import path
from django.conf.urls.static import static
from django.conf import settings

from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('register/', views.user_register, name='register'),
    path('login/', views.user_login, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('film/<int:id>/', views.detail_film, name='detail_film'),
    path('film/<int:id>/pesan/', views.pesan_tiket, name='pesan_tiket'),
    path('history/', views.history_tiket, name='history'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
