from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('pdf/virsliga/<str:season>/', views.export_table_pdf, name='export_table_pdf'),
    path('team/<int:team_id>/', views.team_profile, name='team_profile'),
]