from django.db import models
from card_collections.models import CardCollection
# Create your models here.

class Card(models.Model):
    word = models.CharField(max_length=255)
    definition = models.CharField(max_length=255)
    collection = models.ForeignKey(CardCollection, on_delete=models.CASCADE)