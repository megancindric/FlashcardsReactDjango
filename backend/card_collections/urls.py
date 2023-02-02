from django.urls import path
from . import views

urlpatterns = [
    path("", views.card_collection_list),
    path("<int:pk>/", views.card_collection_detail)
]