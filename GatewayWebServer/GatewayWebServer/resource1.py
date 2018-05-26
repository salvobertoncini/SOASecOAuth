from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

import custom_requests

def authorization_request(request):

    to_return = ""

    for header, value in request.META.items():
        if header == 'HTTP_AUTHORIZATION':
            print header + "\n"
            print value
            to_return = value

    return to_return



@csrf_exempt
def home(request):
    if request.method == "POST":
        authorization_header = authorization_request(request)

        r = custom_requests.Requests(request)

        response = r.postRequest(authorization_header, "resource1")

        return JsonResponse(response, safe=False)