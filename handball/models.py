from django.db import models
from django.conf import settings
from .team import Team

class Virsliga2324(models.Model):
    vieta = models.CharField(max_length=10, db_column='Vieta')
    komanda = models.CharField(max_length=100, db_column='Komanda')
    spelets = models.IntegerField(db_column='Spēlēts')
    uzvarets = models.IntegerField(db_column='Uzvarēts')
    neizskirts = models.IntegerField(db_column='Neizšķirts')
    zaudets = models.IntegerField(db_column='Zaudēts')
    guti_varti = models.CharField(max_length=50, db_column='Gūti vārti')
    plus_minus = models.IntegerField(db_column='+/-')
    punkti = models.IntegerField(db_column='Punkti')


    class Meta:
        db_table = 'virslīga 23_24'
        managed = False  # This tells Django not to manage the table creation


class TeamStats(models.Model):
    vieta = models.IntegerField()
    team = models.ForeignKey(Team, on_delete=models.CASCADE)
    spelets = models.IntegerField()
    uzvarets = models.IntegerField()
    neizskirts = models.IntegerField()
    zaudets = models.IntegerField()
    guti_varti = models.CharField(max_length=50)
    plus_minus = models.IntegerField()
    punkti = models.IntegerField()

    class Meta:
        db_table = 'team_stats'  # Customize the table name if needed


class UpcomingGame(models.Model):
    team1_id = models.IntegerField(choices=Team.TEAM_CHOICES)
    team2_id = models.IntegerField(choices=Team.TEAM_CHOICES)
    venue = models.CharField(max_length=100)
    time = models.DateTimeField()
    team1_image = models.ImageField(upload_to='images/')
    team2_image = models.ImageField(upload_to='images/')
