# Generated by Django 5.0.6 on 2024-06-06 19:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('handball', '0002_upcominggame'),
    ]

    operations = [
        migrations.AlterField(
            model_name='upcominggame',
            name='team1_image',
            field=models.ImageField(upload_to='images/'),
        ),
        migrations.AlterField(
            model_name='upcominggame',
            name='team2_image',
            field=models.ImageField(upload_to='images/'),
        ),
    ]