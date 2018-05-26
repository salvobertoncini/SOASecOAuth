<?php
/*
    $client = new SoapClient("some.wsdl");

    $output_headers     = new SoapHeader("http://127.0.0.1:8000/", "APICredentials", $auth, false); 
    $client->__soapCall("SomeFunction", array($a, $b, $c), NULL,
                        NULL, $output_headers);

    */

    $client = new SoapClient(WSDL,array());

    $auth = array(
            'Authorization'=>"Basic " . base64_encode($clientid . ":" . $clientsecret),
            'Password'=>'PASSWORD',
            'SystemId'=> array('_'=>'DATA','Param'=>'PARAM'),
            );
      $header = new SoapHeader('NAMESPACE','Auth',$auth,false);
      $client->__setSoapHeaders($header);

?>