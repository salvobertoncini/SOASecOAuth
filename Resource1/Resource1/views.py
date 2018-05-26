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

    IPGateway = "localhost:8000"
    IPcurrent = request.get_host()

    if IPcurrent != IPGateway:
        return JsonResponse({"result": "Some network errors"}, safe=False)
    else:
        return JsonResponse({"result": request.get_host()}, safe=False)

@csrf_exempt
def login(request):

    print "richiesta: "
    print request

    r = custom_requests.Requests(request)

    authorization_header = authorization_request(request)
    response = r.postRequest(authorization_header)

    return JsonResponse(response, safe=False)

    """
    IPGateway = "localhost:8000"
    IPcurrent = request.get_host()

    if IPcurrent != IPGateway:
        return JsonResponse({"result": "Some network errors"}, safe=False)
    else:
        r = custom_requests.Requests(request)

        #authorization_header = authorization_request(request)
        #response = r.postRequest(authorization_header)

        response = r.postRequest()

        return JsonResponse(response, safe=False)

        #return JsonResponse({"result": request.get_host()}, safe=False)
    """