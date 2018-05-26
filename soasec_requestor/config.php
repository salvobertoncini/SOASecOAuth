<?php
	$servername 	= "localhost";
	$db_username 	= "berto";
	$db_password 	= "berto";
	$db_name 	 	= "applicazione1";
	$userLogged 	= null;
	try
	{
		$pdo = new PDO("mysql:host=$servername;dbname=$db_name;charset=UTF8", $db_username, $db_password);
		// set the PDO error mode to exception
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch(PDOException $e)
	{
		echo "Connection failed: " . $e->getMessage();
	}