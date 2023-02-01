from rest_framework import serializers
from .models import CardCollection

class CardCollectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = CardCollection
        fields = ['name']