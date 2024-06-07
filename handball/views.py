from django.shortcuts import render
from django.utils import timezone
from .models import Virsliga2324, UpcomingGame
from .forms import UpcomingGameForm
from handball.models import Team  # Import the Team model

def index(request):
    table_data = Virsliga2324.objects.values('vieta', 'komanda', 'spelets', 'uzvarets', 'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti')

    # Query upcoming games sorted by time, date, and venue
    upcoming_games = UpcomingGame.objects.filter(time__gte=timezone.now()).order_by('time', 'venue')

    # Fetch related team objects for each upcoming game
    for game in upcoming_games:
        game.team1 = Team.objects.get(pk=game.team1_id).team_name
        game.team2 = Team.objects.get(pk=game.team2_id).team_name

    context = {
        'upcoming_games': upcoming_games,
        'no_games': not upcoming_games.exists(),  
        'table_data': table_data,
    }

    return render(request, 'index.html', context)
