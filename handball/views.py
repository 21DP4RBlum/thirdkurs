from django.shortcuts import render
from django.utils import timezone
from .models import Virsliga2324, UpcomingGame
from handball.models import Team, TeamStats

def index(request):
    # Query data from Virsliga2324 table
    virsliga_data = Virsliga2324.objects.values(
        'vieta', 'komanda', 'spelets', 'uzvarets',
        'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
    )
    print("Virsliga Data:", virsliga_data)

    # Query data from handball_teamstats table
    team_stats = TeamStats.objects.values(
        'vieta', 'team__team_name', 'spelets', 'uzvarets',
        'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
    ).order_by('vieta')
    print("Team Stats:", team_stats)

    # Query upcoming games sorted by time, date, and venue
    upcoming_games = UpcomingGame.objects.filter(time__gte=timezone.now()).order_by('time', 'venue')

    # Fetch related team objects for each upcoming game
    for game in upcoming_games:
        game.team1 = Team.objects.get(pk=game.team1_id).team_name
        game.team2 = Team.objects.get(pk=game.team2_id).team_name

    context = {
        'virsliga_data': virsliga_data,
        'team_stats': team_stats,
        'upcoming_games': upcoming_games,
        'no_games': not upcoming_games.exists(),  
    }

    return render(request, 'index.html', context)