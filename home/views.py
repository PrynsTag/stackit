""" File Home App Views """
from django.http import HttpResponse
from django.template.loader import render_to_string


# Create your views here.


def home(request):  # pylint: disable=unused-argument
    response_data = render_to_string("index.html")
    return HttpResponse(response_data)
