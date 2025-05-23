<?php
// includes/db.php

$servername = "localhost";  // Usually localhost for XAMPP
$username = "root";         // Default XAMPP username
$password = "";             // Usually empty for XAMPP
$dbname = "lemon_quiz";  // Your database name

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>