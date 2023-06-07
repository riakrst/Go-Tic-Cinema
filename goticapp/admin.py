from django.contrib import admin
from .models import Genre, Film, Jadwal, Tiket, Order


@admin.register(Genre)
class PostGenre(admin.ModelAdmin):
    list_display = ('genre',)
    search_fields = ('genre',)


@admin.register(Film)
class PostFilm(admin.ModelAdmin):
    list_display = ('judul', 'cover', 'genre', 'durasi', 'deskripsi')
    list_filter = ('genre',)
    search_fields = ('judul', 'genre', 'deskripsi')
    raw_id_fields = ('genre',)
    ordering = ('judul', 'durasi')


@admin.register(Jadwal)
class PostJadwal(admin.ModelAdmin):
    list_display = ('film', 'jam', 'tanggal')
    list_filter = ('film', 'jam', 'tanggal')
    search_fields = ('film', 'jam', 'tanggal')
    raw_id_fields = ('film',)
    ordering = ('tanggal', 'jam',)


@admin.register(Tiket)
class PostTiket(admin.ModelAdmin):
    list_display = ('jadwal', 'jumlah',)
    list_filter = ('jumlah',)
    search_fields = ('jadwal', 'jumlah',)
    raw_id_fields = ('jadwal',)
    ordering = ('jadwal', 'jumlah')


@admin.register(Order)
class Order(admin.ModelAdmin):
    list_display = ('user', 'tiket',  'jumlah', 'tanggal',)
    list_filter = ('tiket', 'tanggal',)
    search_fields = ('user', 'tiket',)
    raw_id_fields = ('user', 'tiket',)
    ordering = ('tiket', 'tanggal',)
