<?php

include_once __DIR__ . "/config.php";

function writeLog($data)
{
	$fp = fopen("log.txt", "a");
	if(!$fp) die ("Errore operazione con il file");

	fwrite($fp, date('d/m/Y H:i:s').' - '.print_r($data, true)."\r\n");

	fclose($fp);
}
function sanitize($str, $quotes = ENT_NOQUOTES)
{
	$str = htmlspecialchars($str, $quotes);
	return $str;
}
function returnsomething($return)
{
//Encode the stdClass object containing information and return data as a json string
	$json = json_encode($return);
	writeLog("response: ".$json);
	echo $json;
}
function default_return()
{
	$risposta = array('response' => 'error');
	return $risposta;
}

function testing()
{
	$risposta = array('response' => 'true', 'data' => 'test');
	return $risposta;
}

function fetchUserCredential($allHeaders)
{
	foreach ($allHeaders as $name => $value) {
	    if ($name == "Authorization") 
	    {
	    	$chunks = $value;
	    }
	}
	$chunk = explode("Basic ", $chunks);
	$decode = base64_decode($chunk[1]);

	$id_client_array = explode(":", $decode);

	$i = 0;

	$client_id = $id_client_array[0];
	$client_secret = $id_client_array[1];

	//query
	/*	
		SELECT * 
		FROM table_name
		ORDER BY id DESC
	*/

	global $pdo;
	
	$Categories = array();
	
	$sql = 'SELECT * FROM oauth_clients WHERE client_id = ? AND client_secret = ?';

	$stmt = $pdo->prepare($sql);
	$stmt->bindValue(1, $client_id);
	$stmt->bindValue(2, $client_secret);

	writeLog($stmt);

	$stmt->execute();


	foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row){
		$clientid = $row["client_id"];
		$clientsecret = $row["client_secret"];
		$scope = $row["scope"];
	}

	if (!empty($clientid) && !empty($clientsecret) )
		$risposta = array('response' => 'true', 'data' => 'ok', 'client_id' => $client_id, 'client_secret' => $client_secret, 'scope' => $scope);
	else
		$risposta = array('response' => 'false', 'data' => 'ko');


	return $risposta;

}

function requestForAuthCode($data)
{

}

function evilIPRequestor($allHeaders)
{
	$IPgateway = "127.0.0.1";

	foreach ($allHeaders as $name => $value) {
	    if ($name == "Host") 
	    {
	    	$chunk = $value;
	    }
	}

	if ($chunk != $IPgateway){
		$risposta = array('response' => 'false', 'data' => 'ko');
		returnsomething($risposta);
	}
}

function checkForExpiredToken($token, $scope)
{
	global $pdo;
	
	$Categories = array();
	
	$sql = 'SELECT `expires`,`scope` FROM `oauth_access_tokens` WHERE `access_token` =  ? LIMIT 1';

	$stmt = $pdo->prepare($sql);
	$stmt->bindValue(1, $token);

	writeLog($stmt);

	$stmt->execute();

	$data = "";
	$scope_row = "";

	foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row){
		$data = $row["expires"];
		$scope_row = $row["scope"];
	}

	

	$risposta = array('response' => 'false', 'data' => 'ko');

	writeLog("data: ".strtotime($data)." time: ".time());

	if (strtotime($data) > time()){
		writeLog("data is fine");

		if ($scope == $scope_row)
			$risposta = array('response' => 'true', 'data' => 'ok');
	 }



	return $risposta;
}

function verificationScopeApplication($resource, $scope)
{

	global $pdo;
	
	$Categories = array();
	
	$sql = 'SELECT `scope` FROM `oauth_resources_scope` WHERE `resource` =  ? LIMIT 1';

	$stmt = $pdo->prepare($sql);
	$stmt->bindValue(1, $resource);

	writeLog($stmt);

	$stmt->execute();

	$data = 0;

	foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row){
		if ($row["scope"] == $scope)
			$data = 1;
	}
	

	$risposta = array('response' => 'false', 'data' => 'ko');

	if ($data == 1){
		$risposta = array('response' => 'true', 'data' => 'ok');
	 }



	return $risposta;
}


header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, Content-Type, Authorization');
header('Content-Type: application/json; charset=utf-8');

//Create a stdClass instance to hold important information
$return = new stdClass();
$return->success = true;
$return->errorMessage = "";
$return->data = array();
$method = $_POST;


$client_data = file_get_contents("php://input");
$php_object = json_decode($client_data, true);

$allHeaders = getallheaders();

/*
	
	securization from evil IP source

 */
$ip_requestor = $_SERVER ["REMOTE_ADDR"];
evilIPRequestor($allHeaders);


//writeLog("request: ".$php_object);

foreach ($php_object as $key => $value) {
	writeLog($key.": ".$value);
}

switch ($php_object['r'])
{
	case "Testing":
		$return = testing();
		returnsomething($return);
		break;
	case "FetchUserCredential":
		$return = fetchUserCredential($allHeaders);
		returnsomething($return);
		break;
	case "RequestForAuthCode":
		$return = requestForAuthCode($php_object['t']);
		returnsomething($return);
		break;
	case "checkForExpiredToken":
		$return = checkForExpiredToken($php_object['t'], $php_object['s']);
		returnsomething($return);
		break;
	case "verificationScopeApplication":
		$return = verificationScopeApplication($php_object['re'], $php_object['s']);
		returnsomething($return);
		break;
	default:
		$return = default_return();
		returnsomething($return);
		break;
		

}
