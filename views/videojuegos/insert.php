<?php
	$dbhost	= "localhost";	   // localhost or IP
	$dbuser	= "root";		  // database username
	$dbpass	= "";		     // database password
	$dbname	= "project"; 
	
	$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	
	$turista_id = $_POST['turista_id'];
	$nombre = $_POST['name'];
	$precio = $_POST['price'];
    $consola = $_POST['console'];
    $descripcion = $_POST['description'];

	$sql = "INSERT INTO videojuegos (turista_id, nombre, precio,consola, descripcion ) VALUES ('$turista_id', '$nombre', '$precio', '$consola', '$descripcion')";

	if (mysqli_query($conn, $sql)) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}


		
	header("HTTP/1.1 302 Moved Temporarily"); 
	header("Location: index.php");
	
?>