import json
import responses
import requests
import database
import base64

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

    def requestCredentialToOAuth(self, authorization_header):
        url = "http://127.0.0.1/oauth2/index.php"
        datas = {"r": "FetchUserCredential"}
        headers = {'Content-type': 'application/json', 'Authorization': authorization_header}
        rsp = requests.post(url, json=datas, headers=headers)

        print "sto stampando"
        print rsp.content

        x = json.loads(rsp.content)

        if x["response"] == "true":
            return x["scope"]
        else:
            return "ko"

    def fromAuthHeader_to_client_it(self, authorization_header):
        basic, decoded = authorization_header.split(' ')
        x = decoded.decode('base64')
        return x.split(':')


    def requestForGrantOAuth(self, code):
        data = [
            ('access_token', code),
        ]
        rsp = requests.post('http://localhost/oauth2/resource.php', data=data)

        x = json.loads(rsp.content)
        if x["success"] == True:
            return "ok"
        else:
            return "ko"


    def requestForOAuthCode(self, authorization_header):

        client_it, client_secret = self.fromAuthHeader_to_client_it(authorization_header)

        data = [
            ('grant_type', 'client_credentials'),
        ]
        rsp = requests.post('http://localhost/oauth2/token.php', data=data, auth=(client_it, client_secret))

        x = json.loads(rsp.content)

        try:
            access_token = x["access_token"]
        except NameError:
            access_token = None

        if access_token:
            return access_token
        else:
            return "ko"


    def requestForTokenOAuth(self, authorization_header, code, scope):
        client_id, client_secret = self.fromAuthHeader_to_client_it(authorization_header)

        data = [
            ('grant_type', 'authorization_code'),
            ('code', code),
            ('scope', scope)
        ]
        rsp = requests.post('http://localhost/oauth2/token.php', data=data, auth=(client_id, client_secret))

        x = json.loads(rsp.content)

        print x

        try:
            access_token = x["access_token"]
        except NameError:
            access_token = None

        if access_token:
            return access_token
        else:
            return "ko"


    def requestForAuthorization(self, authorization_header):
        client_id, client_secret = self.fromAuthHeader_to_client_it(authorization_header)

        rsp = requests.post('http://localhost/oauth2/authorize.php?response_type=code&client_id='+client_id+'&state=xyz')
        x = rsp.content

        return x


    def loginTentativeWS1(self, username, password):

        """
        data = [
            ('r', "login"),
            ('username', username),
            ('password', password)
        ]
        """

        data = {
            "r": "login",
            "username": username,
            "password": password
        }

        rsp = requests.post(
            'http://localhost:8001/login/', data=json.dumps(data))
        x = rsp.content

        return x

    def verificationUserCredentialAndToken(self, data):

        #retrieve data from database with database.query
        x = database.selectCredentialAndToken(data["u"], data["p"], data["t"])

        if x == "ok":
            return "ok"
        else:
            return "ko"

    def checkTokenExpiration(self, token, scope):
        url = "http://127.0.0.1/oauth2/index.php"
        datas = {"r": "checkForExpiredToken", "t": token, "s": scope}
        headers = {'Content-type': 'application/json'}
        rsp = requests.post(url, json=datas, headers=headers)

        print "sto stampando"
        print rsp.content

        x = json.loads(rsp.content)

        if x["response"] == "true":
            return "ok"
        else:
            return "ko"

    def verificationScopeApplication(self, scope, resourceCalled):
        url = "http://127.0.0.1/oauth2/index.php"
        datas = {"r": "verificationScopeApplication", "re": resourceCalled, "s": scope}
        headers = {'Content-type': 'application/json'}
        rsp = requests.post(url, json=datas, headers=headers)

        print "sto stampando"
        print rsp.content

        x = json.loads(rsp.content)

        if x["response"] == "true":
            return "ok"
        else:
            return "ko"


    def fluxOrchestrator(self, authorization_header, data, resourceCalled):
        #print data["u"] + " " +  data["p"] + " " +  data["t"]
        token = data["t"]

        # Initialize response
        response = responses.Responses()
        response.setResponse("response", False)

        # Initial request if exist credentials
        scope = self.requestCredentialToOAuth(authorization_header)

        if scope != "ko":
            #verifico se lo scope coincide
            check = self.verificationScopeApplication(scope, resourceCalled)

            if check == "ok":
                x = self.verificationUserCredentialAndToken(data)
                if x == "ok":
                    #check if token not expired for that client_id, client_secret
                    y = self.checkTokenExpiration(data["t"], scope)
                    print "check if token not expired for that client_id, client_secret"
                    print y

                    #NOW CHECK HERE, NOW USE THE TOKEN AS THE CURRENT TOKEN!
                    if y == "ok":
                        print "NOW CHECK HERE, NOW USE THE TOKEN AS THE CURRENT TOKEN!"
                        token = data["t"]
                    else:
                        token = self.requestToOAuth(authorization_header)
                else:
                    token = self.requestToOAuth(authorization_header)

                response.setResponse("response", True)
                response.setResponse("key", token)

                #effettuo il login
                loginresult = self.loginTentativeWS1(data["u"], data["p"])
                loginresult = json.loads(loginresult)

                if loginresult["key"] == "ok":
                    response.setResponse("login", "ok")
                else:
                    response.setResponse("login", "ko")

        else:
            response.setResponse("key", "invalid scope")


        #save into db gateway token
        database.updateCredentialAndTokenGateway(data["u"], data["p"], token)
        # save into db application token
        database.updateCredentialAndTokenApp(token)
        print "inserito token " + token

        return response


    def requestToOAuth(self, authorization_header):

        # Initialize response
        response = responses.Responses()

        #Initial request if exist credentials
        scope = self.requestCredentialToOAuth(authorization_header)


        if scope != "ko":

            """
            #request for auth code
            code = self.requestForOAuthCode(authorization_header)

            #request for auth token
            test = self.requestForGrantOAuth(code)

            if test == "ok":
                result = self.requestForAuthorization(authorization_header)
                token = self.requestForTokenOAuth(authorization_header, result)
            else:
                token = "error with token"
                
            """
            result = self.requestForAuthorization(authorization_header)
            token = self.requestForTokenOAuth(authorization_header, result, scope)

            response.setResponse("response", True)
            response.setResponse("key", token)
        else:
            token = "None"
            response.setResponse("response", False)
            response.setResponse("key", "some errors occurred")

        #return response
        return token



    def postRequest(self, authorization_header, resourceCalled):

        # Initialize response
        response = responses.Responses()

        # Grub body from request
        data = self.getBody()

        # Grub request from body
        r = self.getReq(data)
        print "request: " + r


        # Switch 'r' for every possible request
        if r == "requestToOAuth":
            response = self.fluxOrchestrator(authorization_header, data, resourceCalled)
            #response = self.requestToOAuth(authorization_header)

        print "response: "
        print response.getResponse()

        # If we haven't a response
        if not response.getResponse():
            response.setResponse("response", False)
            response.setResponse("Message", "Qualcosa e' andato storto")

        # Return the response
        return response.getResponse()