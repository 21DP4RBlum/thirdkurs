from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import UpcomingGame

'''@receiver(post_save, sender=UpcomingGame)
def update_team_stats(sender, instance, created, **kwargs):
    if not created: 
        instance.move_to_past_games()'''

def update_team_stats_on_save(sender, instance, created, **kwargs):
    instance.update_team_stats()

@receiver(post_save, sender=UpcomingGame)
def handle_upcoming_game_save(sender, instance, created, **kwargs):
    if not created:  
        if instance.team1_score != 0 and instance.team2_score != 0:
            instance.move_to_past_games()
