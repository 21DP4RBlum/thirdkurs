from django.shortcuts import render
from django.utils import timezone
from django.http import HttpResponse
from django.template.defaulttags import register
from django.shortcuts import render, get_object_or_404
from .models import Virsliga2324, UpcomingGame, HandballPastgames, Team, TeamStats
from handball.models import TeamStats
from django.db.models import F, Q
from django.template.loader import render_to_string
from weasyprint import HTML
from django.utils.text import slugify

@register.filter
def get_item(dictionary, key):
    return dictionary.get(key)

def index(request):
    # Query data from Virsliga2324 table
    virsliga_data = Virsliga2324.objects.values(
        'vieta', 'komanda', 'spelets', 'uzvarets',
        'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
    )

    # Query data from TeamStats table
    team_stats = TeamStats.objects.select_related('team_id').all().annotate(
        goals_scored=F('guti_varti'),
        goals_conceded=F('zaudets')
    ).order_by(
        '-punkti', '-plus_minus', '-goals_scored', 'goals_conceded'
    )

    # Update the 'vieta' field based on the sorted order
    for index, stats in enumerate(team_stats, start=1):
        stats.vieta = index

    # Fetch past games with scores assigned
    past_games = HandballPastgames.objects.filter(
        Q(team1_score__isnull=False) & Q(team2_score__isnull=False)
    )

    # Fetch upcoming games with scores assigned
    upcoming_games = UpcomingGame.objects.filter(
        Q(time__gte=timezone.now()) & (Q(team1_score__isnull=False) | Q(team2_score__isnull=False))
    ).order_by('time', 'venue')

    for game in past_games:
        game.team1_name = game.team1_id.team_name
        game.team2_name = game.team2_id.team_name
        game.team1_display_name = game.team1_id.team_name
        game.team2_display_name = game.team2_id.team_name
        game.team1_display_image = game.team1_id.get_default_logo_path()
        game.team2_display_image = game.team2_id.get_default_logo_path()

    for game in upcoming_games:
        game.team1_name = game.team1_id.team_name
        game.team2_name = game.team2_id.team_name
        game.team1_display_name = game.team1_id.team_name
        game.team2_display_name = game.team2_id.team_name
        game.team1_display_image = game.team1_id.get_default_logo_path()
        game.team2_display_image = game.team2_id.get_default_logo_path()

    team_name_to_id_map = {
        team.team_name.lower().strip(): team.id for team in Team.objects.all()
    }

    context = {
        'virsliga_data': virsliga_data,
        'team_stats': team_stats,
        'past_games': past_games,
        'upcoming_games': upcoming_games,
        'no_games': not (past_games.exists() or upcoming_games.exists()),
        'team_name_to_id_map': team_name_to_id_map,
}

    return render(request, 'index.html', context)

def export_table_pdf(request, season):
    if season == '2324':
        table_data = Virsliga2324.objects.values(
            'vieta', 'komanda', 'spelets', 'uzvarets',
            'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
        )
        template_name = 'pdf/virsliga_2324_only.html'
    elif season == '2425':
        table_data = TeamStats.objects.values(
            'team_id__team_name', 'spelets', 'uzvarets',
            'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti'
        ).annotate(
            goals_scored=F('guti_varti'),
            goals_conceded=F('zaudets')
        ).order_by(
            '-punkti', '-plus_minus', '-goals_scored', 'goals_conceded'
        )

        for i, stat in enumerate(table_data, start=1):
            stat['vieta'] = i

        template_name = 'pdf/virsliga_2425_only.html'
    else:
        return HttpResponse("Invalid season", status=400)

    html = render_to_string(template_name, {'data': table_data})
    pdf = HTML(string=html).write_pdf()
    return HttpResponse(pdf, content_type='application/pdf')

def team_profile(request, team_id):
    team = get_object_or_404(Team, id=team_id)
    stats = TeamStats.objects.filter(team_id=team).first()

    past_games = HandballPastgames.objects.filter(
        Q(team1_id=team.id) | Q(team2_id=team.id),
        time__lt=timezone.now(),
        team1_score__isnull=False,
        team2_score__isnull=False
    ).select_related('team1_id', 'team2_id').order_by('-time')

    upcoming_games = UpcomingGame.objects.filter(
        Q(team1_id=team.id) | Q(team2_id=team.id),
        time__gte=timezone.now()
    ).filter(
        team1_score=0,
        team2_score=0
    ).select_related('team1_id', 'team2_id').order_by('time')

    # Manually attach names and logos
    for game in past_games:
        game.team1_display_name = game.team1_id.team_name
        game.team2_display_name = game.team2_id.team_name
        game.team1_display_image = game.team1_id.get_default_logo_path()
        game.team2_display_image = game.team2_id.get_default_logo_path()

    for game in upcoming_games:
        game.team1_display_name = game.team1_id.team_name
        game.team2_display_name = game.team2_id.team_name
        game.team1_display_image = game.team1_id.get_default_logo_path()
        game.team2_display_image = game.team2_id.get_default_logo_path()

    context = {
        'team': team,
        'stats': stats,
        'past_games': past_games,
        'upcoming_games': upcoming_games,
    }

    return render(request, 'team_profile.html', context)
