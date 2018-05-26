import json
import responses
import requests
import base64
import database

class Requests:

    req = any

    def __init__(self, req, type = "POST"):
        if type == "POST":
            self.req = json.loads(req.body)
        else:
            self.req = req

     # getters
    def getBody(self):
        print self
        return self.req

    def getReq(self, r):
        return r["r"]

    def loginProcess(self, data):
        # Initialize response
        response = responses.Responses()

        username = data["username"]
        password = data["password"]

        x = database.selectCredential()

        #fetch database data in order to check if theres something
        #if yes, return ok
        #if not, return ko
        if x == "ok":
            response.setResponse("response", True)
            response.setResponse("key", "ok")

        else:
            response.setResponse("response", False)
            response.setResponse("key", "ko")

        return response


    def postRequest(self, authorization_header):

        # Initialize response
        response = responses.Responses()

        # Grub body from request
        data = self.getBody()

        # Grub request from body
        r = self.getReq(data)
        print "request: " + r


        # Switch 'r' for every possible request
        if r == "login":
            response = self.loginProcess(data)

        print "response: "
        print response.getResponse()

        # If we haven't a response
        if not response.getResponse():
            response.setResponse("response", False)
            response.setResponse("Message", "Qualcosa e' andato storto")

        # Return the response
        return response.getResponse()