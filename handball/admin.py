from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from django.core.management import call_command
from .models import UpcomingGame, TeamStats, HandballPastgames
from handball.models import Team

class UpcomingGameAdmin(admin.ModelAdmin):
    list_display = ('__str__', 'venue', 'time', 'team1_score', 'team2_score', 'get_team1_name', 'get_team2_name')
    fieldsets = (
        (_('Norises vieta un laiks'), {
            'fields': ('venue', 'time')
        }),
        (_('Komandu informācija'), {
            'fields': (('team1_id', 'team1_score'), ('team2_id', 'team2_score')),
        }),
    )

    def get_team1_name(self, obj):
        return obj.team1_id.team_name if obj.team1_id else ''

    def get_team2_name(self, obj):
        return obj.team2_id.team_name if obj.team2_id else ''

    get_team1_name.short_description = _('1. komanda')
    get_team2_name.short_description = _('2. komanda')

admin.site.register(UpcomingGame, UpcomingGameAdmin)

class TeamStatsAdmin(admin.ModelAdmin):
    actions = ['clear_and_reset_team_stats']
    list_display = ('team_id', 'spelets', 'uzvarets', 'neizskirts', 'zaudets', 'guti_varti', 'plus_minus', 'punkti')

    def clear_and_reset_team_stats(self, request, queryset):
        call_command('clear_and_reset_team_stats')
        self.message_user(request, _('Statistika ir notīrīta un atiestatīta.'))

    def has_add_permission(self, request):
        return False

    clear_and_reset_team_stats.short_description = _('Notīrīt un atiestatīt statistiku')

admin.site.register(TeamStats, TeamStatsAdmin)

class HandballPastgamesAdmin(admin.ModelAdmin):
    list_display = ('id', 'venue', 'time', 'team1_score', 'team2_score')
    readonly_fields = [field.name for field in HandballPastgames._meta.fields]

    def has_add_permission(self, request):
        return False

    def has_change_permission(self, request, obj=None):
        return False

admin.site.register(HandballPastgames, HandballPastgamesAdmin)

admin.site.site_header = _('Handbola administrācija')
admin.site.index_title = _('Handbola datu pārvaldība')
admin.site.site_title = _('Handbola administrēšana')
