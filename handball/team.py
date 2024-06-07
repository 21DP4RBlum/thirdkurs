from django.db import models

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
