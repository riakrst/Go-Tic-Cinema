from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


class Genre(models.Model):
    genre = models.CharField(max_length=50)

    def __str__(self):
        return self.genre


class Film(models.Model):
    judul = models.CharField(max_length=200,)
    cover = models.ImageField(upload_to="cover/", blank=True,
                              default="no-image.png")
    genre = models.ForeignKey(Genre, on_delete=models.CASCADE,)
    durasi = models.CharField(max_length=50,)
    deskripsi = models.TextField("deskripsi", null=True, blank=True)

    class Meta:
        ordering = ['judul']

    def __str__(self):
        return self.judul


class Jadwal(models.Model):
    tanggal = models.DateField("tanggal tayang")
    jam = models.TimeField("jam tayang")
    film = models.ForeignKey(Film, on_delete=models.CASCADE,)


class Tiket(models.Model):
    jadwal = models.ForeignKey(Jadwal, on_delete=models.CASCADE,)
    jumlah = models.IntegerField()


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,)
    tiket = models.ForeignKey(Tiket, on_delete=models.CASCADE,)
    tanggal = models.DateField(auto_now_add=True)
    jumlah = models.IntegerField("jumlah tiket")
