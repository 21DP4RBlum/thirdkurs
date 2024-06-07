from django.db import models
from django.conf import settings

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
class Team(models.Model):
    # Define the choices for teams
    TEAM_CHOICES = [
        (1, 'ZRHK TENAX Dobele'),
        (2, 'MSĢ'),
        (3, 'ASK Zemessardze/LSPA'),
        (4, 'HK Ogre/HYDROX'),
        (5, 'Salaspils'),
        (6, 'HK Vaiņode'),
        (7, 'SK Latgols'),
        (8, 'HK S&A'),
        # Add more teams as needed
    ]

    # Define fields for the Team model
    team_name = models.CharField(max_length=100, choices=TEAM_CHOICES)

    def __str__(self):
        return self.get_team_name_display()

    def get_default_logo_path(self):
        """
        Method to generate the default logo path based on the team's ID.
        Modify this method as needed to match your file structure.
        """
        team_id = self.pk  # Primary key (ID) of the team
        # Assuming your logo files are named after the team IDs (e.g., 1.png, 2.png)
        return f'images/{team_id}.png'

    def save(self, *args, **kwargs):
        # Check if the logo field is empty and generate the default logo path if so
        if not hasattr(self, 'logo'):
            self.logo = self.get_default_logo_path()
        super().save(*args, **kwargs)


from django.db import models

class UpcomingGame(models.Model):
    team1_id = models.IntegerField(choices=Team.TEAM_CHOICES)
    team2_id = models.IntegerField(choices=Team.TEAM_CHOICES)
    venue = models.CharField(max_length=100)
    time = models.DateTimeField()
    team1_image = models.ImageField(upload_to='images/')
    team2_image = models.ImageField(upload_to='images/')

    class Team(models.Model):
        team_name = models.CharField(max_length=100)
