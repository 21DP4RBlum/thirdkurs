from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from django.core.management import call_command
from django.utils import timezone
from .models import UpcomingGame, TeamStats, HandballPastgames
from handball.models import Team

class UpcomingGameAdmin(admin.ModelAdmin):
    list_display = ('__str__', 'venue', 'time', 'team1_score', 'team2_score', 'get_team1_name', 'get_team2_name', 'team1_image_tag', 'team2_image_tag')
    readonly_fields = ('_moved_to_pastgames', 'team1_image_tag', 'team2_image_tag')  # Ensure readonly fields are correctly set

    fieldsets = (
        (None, {
            'fields': ('venue', 'time')
        }),
        ('Team Information', {
            'fields': (('team1_id', 'team1_score', 'team1_image'), ('team2_id', 'team2_score', 'team2_image')),
        }),
    )

    def get_team1_name(self, obj):
        return obj.team1_id.team_name if obj.team1_id else ''

    def get_team2_name(self, obj):
        return obj.team2_id.team_name if obj.team2_id else ''


    def team1_image_tag(self, obj):
        return '<img src="{}" style="max-width: 100px; max-height: 100px;" />'.format(obj.team1_image.url) if obj.team1_image else 'No image'

    team1_image_tag.short_description = 'Team 1 Image'

    def team2_image_tag(self, obj):
        return '<img src="{}" style="max-width: 100px; max-height: 100px;" />'.format(obj.team2_image.url) if obj.team2_image else 'No image'

    team2_image_tag.short_description = 'Team 2 Image'

admin.site.register(UpcomingGame, UpcomingGameAdmin)

class TeamStatsAdmin(admin.ModelAdmin):
    actions = ['clear_and_reset_team_stats']
    list_display = ('team_id', 'spelets', 'uzvarets', 'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti')

    def clear_and_reset_team_stats(self, request, queryset):
        call_command('clear_and_reset_team_stats')
        self.message_user(request, _('Successfully cleared and reset team statistics.'))

    def has_add_permission(self, request):
        return False  # Disable ability to add new past games

    clear_and_reset_team_stats.short_description = _('Clear and Reset Team Statistics')

admin.site.register(TeamStats, TeamStatsAdmin)

class HandballPastgamesAdmin(admin.ModelAdmin):
    list_display = ('id', 'venue', 'time', 'team1_score', 'team2_score')
    readonly_fields = [field.name for field in HandballPastgames._meta.fields]  # Make all fields read-only

    def has_add_permission(self, request):
        return False  # Disable ability to add new past games

    def has_change_permission(self, request, obj=None):
        return False  # Disable ability to change existing past games

admin.site.register(HandballPastgames, HandballPastgamesAdmin)

# Renaming sections in admin
admin.site.site_header = _('Handball Administration')
admin.site.index_title = _('Manage Handball Data')
admin.site.site_title = _('Handball Admin')
