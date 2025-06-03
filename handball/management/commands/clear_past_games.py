from django.core.management.base import BaseCommand
from handball.models import HandballPastgames

class Command(BaseCommand):
    help = 'Clear past games'

    def handle(self, *args, **kwargs):
        # Your logic to clear past games
        HandballPastgames.objects.all().delete()
        self.stdout.write(self.style.SUCCESS('Successfully cleared past games.'))
