from django.urls import path
from . import views

urlpatterns = [
    path("",views.card_list),
    path("<int:pk>/", views.card_detail),
    path("collection/<int:pk>", views.collection_cards)
]