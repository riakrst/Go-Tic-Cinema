from django.contrib import admin
from .models import Genre, Film, Jadwal, Tiket


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
    ordering = ('jam', 'tanggal')


@admin.register(Tiket)
class PostTiket(admin.ModelAdmin):
    list_display = ('film', 'jumlah',)
    list_filter = ('jumlah',)
    search_fields = ('film', 'jumlah',)
    raw_id_fields = ('film',)
    ordering = ('film', 'jumlah')
