# Generated by Django 5.0.6 on 2024-06-06 18:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('handball', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='UpcomingGame',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('team1', models.CharField(max_length=100)),
                ('team2', models.CharField(max_length=100)),
                ('venue', models.CharField(max_length=100)),
                ('time', models.DateTimeField()),
                ('team1_image', models.ImageField(upload_to='team_images/')),
                ('team2_image', models.ImageField(upload_to='team_images/')),
            ],
        ),
    ]