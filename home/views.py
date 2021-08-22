""" File Home App Views """
from django.http import HttpResponse
from django.shortcuts import render


def index(request):
    """This is Index"""
    return HttpResponse("This works!")


def hello(request):
    """This is Hello"""
    return HttpResponse("This is Hello!")


def home(request):
    """This is Home"""
    hi = "this is hi"
    return render(request, "home/home.html", {"text": hi})
