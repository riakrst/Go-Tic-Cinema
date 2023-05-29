from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from film.models import Tiket


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,)
    tiket = models.ForeignKey(Tiket, on_delete=models.CASCADE,)
    tanggal = models.DateField(auto_now_add=True)
    jumlah = models.IntegerField("jumlah tiket")