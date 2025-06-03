from django import forms
from .models import UpcomingGame, Team

class UpcomingGameForm(forms.ModelForm):
    class Meta:
        model = UpcomingGame
        fields = ['team1_id', 'team2_id', 'time', 'venue']
        widgets = {
            'team1': forms.Select(choices=Team.TEAM_CHOICES),
            'team2': forms.Select(choices=Team.TEAM_CHOICES),
            'time': forms.DateTimeInput(attrs={'type': 'datetime-local'}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        if self.instance:
            if self.instance.team1:
                team1_logo_path = self.instance.team1.get_default_logo_path()
                self.fields['team1_image'] = forms.ImageField(initial=team1_logo_path)
            if self.instance.team2:
                team2_logo_path = self.instance.team2.get_default_logo_path()
                self.fields['team2_image'] = forms.ImageField(initial=team2_logo_path)

class ScoreUpdateForm(forms.ModelForm):
    class Meta:
        model = UpcomingGame
        fields = ['team1_score', 'team2_score']
