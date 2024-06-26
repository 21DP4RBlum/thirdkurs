# Generated by Django 5.0.6 on 2024-06-05 08:27

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Virsliga2324',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('vieta', models.CharField(db_column='Vieta', max_length=10)),
                ('komanda', models.CharField(db_column='Komanda', max_length=100)),
                ('spelets', models.IntegerField(db_column='Spēlēts')),
                ('uzvarets', models.IntegerField(db_column='Uzvarēts')),
                ('neizskirts', models.IntegerField(db_column='Neizšķirts')),
                ('zaudets', models.IntegerField(db_column='Zaudēts')),
                ('guti_varti', models.CharField(db_column='Gūti vārti', max_length=50)),
                ('plus_minus', models.IntegerField(db_column='+/-')),
                ('punkti', models.IntegerField(db_column='Punkti')),
            ],
            options={
                'db_table': 'virslīga 23_24',
                'managed': False,
            },
        ),
    ]
