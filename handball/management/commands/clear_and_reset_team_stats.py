from django.core.management.base import BaseCommand
from handball.models import TeamStats

class Command(BaseCommand):
    help = 'Clear and reset team statistics'

    def handle(self, *args, **kwargs):
        # Your logic to clear and reset team statistics
        TeamStats.objects.all().update(
            spelets=0,
            uzvarets=0,
            neizskirts=0,
            zaudets=0,
            guti_varti='0 : 0',
            plus_minus=0,
            punkti=0,
            cumulative_goals_scored=0,
            cumulative_goals_conceded=0
        )
        self.stdout.write(self.style.SUCCESS('Successfully cleared and reset team statistics.'))
