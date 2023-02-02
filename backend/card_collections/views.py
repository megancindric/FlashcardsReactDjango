from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from .serializers import CardCollectionSerializer
from .models import CardCollection

# Create your views here.
@api_view(["GET","POST"])
def card_collection_list(request):
    if request.method == "POST":
        serializer = CardCollectionSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    elif request.method == "GET":
        queryset = CardCollection.objects.all()
        serializer = CardCollectionSerializer(queryset, many=True)
        return Response(serializer.data)

@api_view(["GET","PUT","DELETE"])
def card_collection_detail(request, pk):
    card_collection = get_object_or_404(CardCollection, pk=pk)
    if request.method == "GET":
        serializer = CardCollectionSerializer(card_collection)
        return Response(serializer.data)
    elif request.method == "PUT":
        serializer = CardCollectionSerializer(card_collection, data=request.data)
        serializer.is_valid(raise_exception=True)
        return Response(serializer.data, status=status.HTTP_202_ACCEPTED)
    elif request.method == "DELETE":
        card_collection.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)