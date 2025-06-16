<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cse_travels";

$conn = new mysqli($servername, $username, $password, $dbname);


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


if (isset($_POST['button'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $query = "INSERT INTO login (username, password) VALUES ('$username', '$password')";
    mysqli_query($conn, $query);
    echo "Account created successfully!";
} else {
    echo "Error: Please submit the form";
}


mysqli_close($conn);
?>