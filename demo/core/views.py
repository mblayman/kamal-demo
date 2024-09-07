from django.shortcuts import render


def index(request):
    return render(request, "core/index.html", {})


def up(request):
    return render(request, "core/up.html", {})
