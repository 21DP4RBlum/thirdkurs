from django.db import models
from .team import Team
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.core.exceptions import ValidationError

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
        managed = False  

class TeamStats(models.Model):
    vieta = models.IntegerField()
    team_id = models.ForeignKey(Team, on_delete=models.CASCADE)
    spelets = models.IntegerField(default=0)
    uzvarets = models.IntegerField(default=0)
    neizskirts = models.IntegerField(default=0)
    zaudets = models.IntegerField(default=0)
    guti_varti = models.CharField(default='0 : 0', max_length=20)
    plus_minus = models.IntegerField(default=0)
    punkti = models.IntegerField(default=0)
    cumulative_goals_scored = models.IntegerField(default=0)
    cumulative_goals_conceded = models.IntegerField(default=0)

    class Meta:
        db_table = 'team_stats'

    def update_statistics(self, scored, conceded):
        self.spelets += 1
        self.cumulative_goals_scored += scored
        self.cumulative_goals_conceded += conceded
        self.guti_varti = f"{self.cumulative_goals_scored} : {self.cumulative_goals_conceded}"
        self.plus_minus += (scored - conceded)

        if scored > conceded:
            self.uzvarets += 1
            self.punkti += 2
        elif scored < conceded:
            self.zaudets += 1
        else:
            self.neizskirts += 1
            self.punkti += 1

        self.save()  
        print(f"Updated stats: spelets={self.spelets}, uzvarets={self.uzvarets}, neizskirts={self.neizskirts}, zaudets={self.zaudets}, guti_varti={self.guti_varti}, plus_minus={self.plus_minus}, punkti={self.punkti}")

    def clean(self):
        super().clean()
        if self.spelets < 0:
            raise ValidationError({'spelets': 'Jābūt pozitīvam skaitlim.'})
        if self.uzvarets < 0:
            raise ValidationError({'uzvarets': 'Jābūt pozitīvam skaitlim.'})
        if self.neizskirts < 0:
            raise ValidationError({'neizskirts': 'Jābūt pozitīvam skaitlim.'})
        if self.zaudets < 0:
            raise ValidationError({'zaudets': 'Jābūt pozitīvam skaitlim.'})
        if self.punkti < 0:
            raise ValidationError({'punkti': 'Jābūt pozitīvam skaitlim.'})

        try:
            scored, conceded = map(int, self.guti_varti.split(' : '))
            if scored < 0 or conceded < 0:
                raise ValidationError({'guti_varti': 'Jābūt pozitīviem skaitļiem (Formats   (x : x)).'})
        except (ValueError, AttributeError):
            raise ValidationError({'guti_varti': 'Nepareizs formats (Formats (x : x)).'})

    class Meta:
        db_table = 'team_stats'

class UpcomingGame(models.Model):
    team1_id = models.ForeignKey(Team, related_name='upcoming_games_team1', on_delete=models.CASCADE)
    team2_id = models.ForeignKey(Team, related_name='upcoming_games_team2', on_delete=models.CASCADE)
    venue = models.CharField(max_length=100)
    time = models.DateTimeField()
    team1_image = models.ImageField(upload_to='images/')
    team2_image = models.ImageField(upload_to='images/')
    team1_score = models.IntegerField(default=0)
    team2_score = models.IntegerField(default=0)
    _moved_to_pastgames = models.BooleanField(default=False)

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
        if self.team1_score != 0 or self.team2_score != 0:
            self.move_to_past_games()

    def move_to_past_games(self):
        if not self._moved_to_pastgames:
            team1_image_url = self.team1_image.url.replace('/media/', '')
            team2_image_url = self.team2_image.url.replace('/media/', '')

            past_game = HandballPastgames.objects.create(
                venue=self.venue,
                time=self.time,
                team1_id=self.team1_id,
                team2_id=self.team2_id,
                team1_image=team1_image_url if self.team1_image else '',
                team2_image=team2_image_url if self.team2_image else '',
                team1_score=self.team1_score,
                team2_score=self.team2_score,
            )

            team1_stats = TeamStats.objects.get_or_create(team_id=self.team1_id)[0]
            team2_stats = TeamStats.objects.get_or_create(team_id=self.team2_id)[0]

            team1_stats.update_statistics(scored=self.team1_score, conceded=self.team2_score)
            team2_stats.update_statistics(scored=self.team2_score, conceded=self.team1_score)

            if self.team1_score != 0 or self.team2_score != 0:
                self._moved_to_pastgames = True
                self.save(update_fields=['_moved_to_pastgames'])
                self.delete()

            print("Game moved to past games and statistics updated.")

    def clean(self):
        super().clean()
        if self.team1_score < 0:
            raise ValidationError({'team1_score': 'Komandai nevar būt negatīvs vārtu daudzums.'})
        if self.team2_score < 0:
            raise ValidationError({'team2_score': 'Komandai nevar būt negatīvs vārtu daudzums.'})

    class Meta:
        db_table = 'upcoming_game'


class HandballPastgames(models.Model):
    venue = models.CharField(max_length=100)
    time = models.DateTimeField()
    team1_score = models.IntegerField(blank=True, null=True)
    team2_score = models.IntegerField(blank=True, null=True)
    team1_id = models.ForeignKey(Team, related_name='past_games_team1', on_delete=models.CASCADE)
    team2_id = models.ForeignKey(Team, related_name='past_games_team2', on_delete=models.CASCADE)
    team1_image = models.ImageField(upload_to='images/', blank=True, null=True)
    team2_image = models.ImageField(upload_to='images/', blank=True, null=True)

    class Meta:
        db_table = 'handball_pastgames'

    def save(self, *args, **kwargs):
        is_new = self.pk is None  
        super().save(*args, **kwargs)
        
        if not is_new:  
            old_instance = HandballPastgames.objects.get(pk=self.pk)
            old_team1_score = old_instance.team1_score
            old_team2_score = old_instance.team2_score
            
            team1_stats = TeamStats.objects.get_or_create(team_id=self.team1_id)[0]
            team2_stats = TeamStats.objects.get_or_create(team_id=self.team2_id)[0]
            
            team1_stats.update_statistics(scored=self.team1_score, conceded=self.team2_score)
            team1_stats.update_statistics(scored=-old_team1_score, conceded=-old_team2_score)
            team2_stats.update_statistics(scored=self.team2_score, conceded=self.team1_score)
            team2_stats.update_statistics(scored=-old_team2_score, conceded=-old_team1_score)

            print("Team stats updated for HandballPastgames instance.")

    def clean(self):
        super().clean()
        if self.team1_score is not None and self.team1_score < 0:
            raise ValidationError({'team1_score': 'Komandai nevar būt negatīvs vārtu daudzums.'})
        if self.team2_score is not None and self.team2_score < 0:
            raise ValidationError({'team2_score': 'Komandai nevar būt negatīvs vārtu daudzums.'})