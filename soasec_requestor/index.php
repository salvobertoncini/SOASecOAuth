<!DOCTYPE html>
<html>
<head>
	<title>Simple HTML Requester page</title>
	
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
	 <script src="jquery.min.js"></script>

</head>
<body>
	<h2>Click your choice</h2>

	<li><a href="index.php?hello=true">Web Server 1</a></li>
<!--
	<form>
		<input type="input" name="username" placeholder="username">
		<input type="password" name="password" placeholder="password">
		<input type="submit" name="submit" >
	</form>
-->

	<li><a href="#" id="resource2">Web Server 2</a></li>

		<?php

		
		include_once __DIR__ . "/config.php";

		
		if (isset($_GET['hello'])) {
		    runMyFunction();
		  }

		/*
		
			CHIAMATA SOAP CLIENT


		 */


		//PRELEVARE TOKEN, SE ESISTE
		

		function retrieveCredential()
		{
			//query

			global $pdo;
			
			$Categories = array();
			
			$sql = 'SELECT * FROM auth';

			$stmt = $pdo->prepare($sql);

			$stmt->execute();

            $clientid = "";
            $clientsecret = "";
			$token = "";

			foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row){
				$clientid = $row["client_id"];
				$clientsecret = $row["client_secret"];
				$token = $row["token"];
			}

			if (!empty($clientid) && !empty($clientsecret) )
				$risposta = array('response' => 'true', 'client_id' => $clientid, 'client_secret' => $clientsecret, 'token' => $token);
			else
				$risposta = array('response' => 'false', 'data' => 'ko');


			return $risposta;

		}

		function runMyFunction(){

		require_once __DIR__.'/config.php';

		$username = "username";
		$password = "password";

		if (isset($_POST["username"]) && !empty($_POST["password"])) {
		    $username = $_POST["username"];
			$password = $_POST["password"];
		}


		$result = retrieveCredential();
		//$result["response"] = "false";

		if ($result["response"] == "true")
		{
            $clientid = $result["client_id"];
            $clientsecret = $result["client_secret"];
            $token = $result["token"];
		}
		else
		{
			$clientid = "client_id";
			$clientsecret = "client_secret";
		 	$token = "token";
		}

		// The data to send to the API
		$postData = array(
		    'r' => 'requestToOAuth',
		    'u' => $username,
		    'p' => $password,
		    't' => $token,
		);

		// Setup cURL
		$ch = curl_init('http://localhost:8000/resource1/');
		curl_setopt_array($ch, array(
		    CURLOPT_POST => TRUE,
		    CURLOPT_RETURNTRANSFER => TRUE,
		    CURLOPT_HTTPHEADER => array(
		        "Authorization: Basic " . base64_encode($clientid . ":" . $clientsecret),
		        'Content-Type: application/json'
		    ),
		    CURLOPT_POSTFIELDS => json_encode($postData)
		));

		// Send the request
		$response = curl_exec($ch);
		

		/*
		//$client = new SoapClient(WSDL.wsdl,array());
		$url         = "http://127.0.0.1:8000/resource1/?wsdl"; 
		$client     = new SoapClient($url, array("trace" => 1, "exception" => 0)); 

	    $header_param = array(
	            'Authorization'=>"Basic " . base64_encode($clientid . ":" . $clientsecret),
	        );
	      $header = new SoapHeader('http://127.0.0.1:8000/resource1/?wsdl','Auth',$header_param,false);
	      $params = array(
			    'r' => 'requestToOAuth',
			    'u' => $username,
			    'p' => $password,
			    't' => $token,
			);
	      $client->__setSoapHeaders($header);
	      $response = $client->__soapCall('Resource1', array($params));

	      echo '<script type="text/javascript">alert("'.print_r($response).'");</script>';
		*/
		// Check for errors
		if($response === FALSE){
		    die(curl_error($ch));
		}

		// Decode the response
		$responseData = json_decode($response, TRUE);

		if ($responseData["response"] == True)
		// Print the date from the response
			echo '<script type="text/javascript">alert("login: '.$responseData["login"].', \ntoken: '.$responseData["key"].'");</script>';
		else
			echo '<script type="text/javascript">alert("error: '.$responseData["key"].'");</script>';

		
		
		}
		?>

</body>
</html>
