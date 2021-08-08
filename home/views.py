""" File Home App Views """
import os

import firebase_admin
from django.shortcuts import render
from dotenv import load_dotenv
from firebase_admin import db

load_dotenv()

cred_obj = firebase_admin.credentials.Certificate(
    os.getenv("GOOGLE_APPLICATION_CREDENTIALS")
)
default_app = firebase_admin.initialize_app(
    cred_obj, {"databaseURL": os.getenv("DATABASE_URL")}
)


def home(request):  # pylint: disable=unused-argument
    ref = db.reference("/Books/Best_Sellers")
    data = ref.get()
    return render(request, "index.html", {"books": data})
