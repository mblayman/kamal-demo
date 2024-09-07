from django.contrib import admin
from django.urls import path

from demo.core.views import index, up

urlpatterns = [
    path("", index, name="index"),
    path("up", up, name="up"),
    path("admin/", admin.site.urls),
]
