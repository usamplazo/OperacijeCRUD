<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";

try {
  $db = new PDO("mysql:host=$servername;dbname=crud_wp;port=3306", $username, $password);
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
