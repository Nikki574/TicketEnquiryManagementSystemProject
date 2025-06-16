<?php
// db_config.php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cse_travels";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
