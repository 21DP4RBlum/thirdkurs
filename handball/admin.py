from django.contrib import admin
from .models import UpcomingGame


class UpcomingGameAdmin(admin.ModelAdmin):
    list_display = ('team1_id', 'team2_id', 'venue', 'time')  
    list_filter = ('venue',)  
    search_fields = ('team1', 'team2')  

admin.site.register(UpcomingGame, UpcomingGameAdmin)
