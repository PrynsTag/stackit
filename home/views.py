""" File Home App Views """
import os

import firebase_admin
from django.shortcuts import render
from dotenv import load_dotenv
from firebase_admin import db

load_dotenv()

default_app = firebase_admin.initialize_app()


def home(request):
    ref = db.reference("/Books/Best_Sellers")
    data = ref.get()
    return render(request, "index.html", {"books": data})
