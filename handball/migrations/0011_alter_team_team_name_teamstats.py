# Generated by Django 5.0.6 on 2024-06-07 01:27

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('handball', '0010_remove_upcominggame_team1_logo_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='team',
            name='team_name',
            field=models.CharField(max_length=100),
        ),
        migrations.CreateModel(
            name='TeamStats',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('games_played', models.IntegerField(default=0)),
                ('wins', models.IntegerField(default=0)),
                ('draws', models.IntegerField(default=0)),
                ('losses', models.IntegerField(default=0)),
                ('goals_scored', models.IntegerField(default=0)),
                ('goals_conceded', models.IntegerField(default=0)),
                ('points', models.IntegerField(default=0)),
                ('team', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='handball.team')),
            ],
        ),
    ]
