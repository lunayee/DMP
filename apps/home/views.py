from django.shortcuts import render

def index(request):
    context={}
    context["name"]="旅義軒"
    return render(request,"index.html",context)
