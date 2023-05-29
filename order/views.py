from django.shortcuts import render, redirect
from .models import Order

def order_tiket(request, tiket_id):
    tiket = Tiket.objects.get(id=tiket_id)
    if request.method == 'POST':
        jumlah = int(request.POST.get('jumlah'))
        order = Order(user=request.user, tiket=tiket, jumlah=jumlah,)
        order.save()
        return redirect('sukses')
    else:
        return render(request, 'order_tiket.html', {'tiket': tiket})
