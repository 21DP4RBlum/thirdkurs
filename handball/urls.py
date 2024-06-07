from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),

    # Other paths if any
]