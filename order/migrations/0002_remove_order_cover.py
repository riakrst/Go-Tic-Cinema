# Generated by Django 4.1.6 on 2023-05-28 03:30

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('order', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='cover',
        ),
    ]