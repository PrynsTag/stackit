""" File Home App Views """
from django.http import HttpResponse


def index(request):
    return HttpResponse("This works!")


def hello(request):
    return HttpResponse("This is Hello!")


def home(request):
    return HttpResponse("THIS IS HOME")
