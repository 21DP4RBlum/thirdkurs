from .models import Team

# Get all existing teams
existing_teams = Team.objects.all()

# Check if any teams already have stats (to avoid duplicating entries)
teams_with_stats = TeamStats.objects.filter(team__in=existing_teams)
teams_without_stats = existing_teams.exclude(pk__in=teams_with_stats.values_list('team', flat=True))

# Create TeamStats instances for teams without existing stats
for team in teams_without_stats:
    TeamStats.objects.create(team=team)