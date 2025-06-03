from django.shortcuts import render
from django.utils import timezone
from .models import Virsliga2324, UpcomingGame, HandballPastgames
from handball.models import TeamStats
from django.db.models import F, Q

def index(request):
    # Query data from Virsliga2324 table
    virsliga_data = Virsliga2324.objects.values(
        'vieta', 'komanda', 'spelets', 'uzvarets',
        'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
    )

    # Query data from TeamStats table
    team_stats = TeamStats.objects.values(
        'team_id__team_name', 'spelets', 'uzvarets',
        'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
    ).annotate(
        goals_scored=F('guti_varti'),
        goals_conceded=F('zaudets')
    ).order_by(
        '-punkti', '-plus_minus', '-goals_scored', 'goals_conceded'
    )

    # Update the 'vieta' field based on the sorted order
    for index, stats in enumerate(team_stats, start=1):
        stats['vieta'] = index

    # Fetch past games with scores assigned
    past_games = HandballPastgames.objects.filter(
        Q(team1_score__isnull=False) & Q(team2_score__isnull=False)
    )

    # Fetch upcoming games with scores assigned
    upcoming_games = UpcomingGame.objects.filter(
        Q(time__gte=timezone.now()) & (Q(team1_score__isnull=False) | Q(team2_score__isnull=False))
    ).order_by('time', 'venue')

    # Fetch related team objects for each game
    for game in past_games:
        game.team1_name = game.team1_id.team_name
        game.team2_name = game.team2_id.team_name

    for game in upcoming_games:
        game.team1_name = game.team1_id.team_name
        game.team2_name = game.team2_id.team_name

    context = {
        'virsliga_data': virsliga_data,
        'team_stats': team_stats,
        'past_games': past_games,
        'upcoming_games': upcoming_games,
        'no_games': not (past_games.exists() or upcoming_games.exists()),  
    }

    return render(request, 'index.html', context)
