""" File for URL Routing """
from django.urls import path

from . import views

urlpatterns = [
    path("", views.index),
    path("hello", views.hello),
    path("home", views.home),
]
