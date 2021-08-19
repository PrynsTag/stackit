""" File Home App Views """
from django.http import HttpResponse


def index(request):
    """This is Index"""
    return HttpResponse("This works!")


def hello(request):
    """This is Hello"""
    return HttpResponse("This is Hello!")


def home(request):
    """This is Home"""
    return HttpResponse("THIS IS HOME")
