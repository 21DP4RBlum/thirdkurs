from django.core.management.base import BaseCommand
from django.utils import timezone
from django.db.models import Q
from handball.models import UpcomingGame, PastGames

class Command(BaseCommand):
    help = 'Move past games from UpcomingGame to PastGames'

    def handle(self, *args, **kwargs):
        now = timezone.now()
        games_to_move = UpcomingGame.objects.filter(
            Q(time__lt=now) | Q(team1_score__gt=0) | Q(team2_score__gt=0)
        )

        for game in games_to_move:
            PastGames.objects.create(
                team1_id=game.team1_id,
                team2_id=game.team2_id,
                venue=game.venue,
                time=game.time,
                team1_score=game.team1_score,
                team2_score=game.team2_score,
                team1_image=game.team1_image,
                team2_image=game.team2_image,
            )
            game.delete()

        self.stdout.write(self.style.SUCCESS('Successfully moved past games to PastGames'))
