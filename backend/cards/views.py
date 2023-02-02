from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from .serializers import CardSerializer
from .models import Card

# Create your views here.
@api_view(["GET","POST"])
def card_list(request):
    if request.method == "POST":
        serializer = CardSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    elif request.method == "GET":
        queryset = Card.objects.all()
        serializer = CardSerializer(queryset, many=True)
        return Response(serializer.data)

@api_view(["GET","PUT","DELETE"])
def card_detail(request, pk):
    card = get_object_or_404(Card, pk=pk)
    if request.method == "GET":
        serializer = CardSerializer(card)
        return Response(serializer.data)
    elif request.method == "PUT":
        serializer = CardSerializer(card, data=request.data)
        serializer.is_valid(raise_exception=True)
        return Response(serializer.data, status=status.HTTP_202_ACCEPTED)
    elif request.method == "DELETE":
        card.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

@api_view(["GET"])
def collection_cards(request,pk):
    matching_cards = Card.objects.filter(collection_id=pk)
    serializer = CardSerializer(matching_cards, many=True)
    return Response(serializer.data)