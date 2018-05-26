from django.views.decorators.csrf import csrf_exempt
from spyne.application import Application
from spyne.decorator import rpc
from spyne.model.primitive import Unicode, Integer, String, Mandatory
from spyne.protocol.soap import Soap11
from spyne.server.django import DjangoApplication
from spyne.service import ServiceBase

class SoapService(ServiceBase):
    @rpc(Unicode(nillable=False), Unicode(nillable=False), _returns=Unicode)
    def Resource1(ctx, t, r):

        """
        for x in ctx.in_header_doc:
            if x.tag == '{http://127.0.0.1:8000/resource1/?wsdl}Auth':
                print x


        http_token = ctx.transport.req.get('HTTP_AUTHORIZATION')
        print http_token
        """

        request = ctx.transport.req
        headers = request.getAllHeaders()
        content_type = headers.get('content-type', None)

        print content_type

        return 'Hello, {}'.format(t+" "+r)

    @rpc(Integer(nillable=False), Integer(nillable=False), _returns=Integer)
    def sum(ctx, a, b):
        return int(a + b)

    @rpc(Mandatory.String, _returns=String)
    def get_head(ctx, user_name):
        print '*' * 20
        print ctx.in_header_doc
        print ctx.in_body_doc
        print ctx.in_header.ee
        retval = "Where's the header"
        return retval


soap_app = Application(
    [SoapService],
    tns='django.soap.example',
    in_protocol=Soap11(validator='lxml'),
    out_protocol=Soap11(),
)

django_soap_application = DjangoApplication(soap_app)
my_soap_application = csrf_exempt(django_soap_application)