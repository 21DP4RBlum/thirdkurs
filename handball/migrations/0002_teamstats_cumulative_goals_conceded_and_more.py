# Generated by Django 5.0.6 on 2024-06-19 07:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('handball', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='teamstats',
            name='cumulative_goals_conceded',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='teamstats',
            name='cumulative_goals_scored',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='teamstats',
            name='guti_varti',
            field=models.CharField(default='0 : 0', max_length=50),
        ),
    ]
