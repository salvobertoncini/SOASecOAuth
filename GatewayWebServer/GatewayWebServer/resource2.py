from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def home(request):
    return JsonResponse({"result": "resource2"}, safe=False)