from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from film.models import Tiket


class order(models.Model):
    user = models.CharField(max_length=200,)
    cover = models.ForeignKey(User, on_delete=models.CASCADE,)
    tiket = models.ForeignKey(Tiket, on_delete=models.CASCADE,)
    tanggal = models.DateField("tanggal pemesanan")
    jumlah = models.IntegerField()