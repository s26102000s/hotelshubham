<?php 
$host='localhost';
$user='root';
$password='';
$dbname='india';
$con=mysqli_connect($host,$user,$password) or die(mysqli_error());
mysqli_select_db($con,$dbname);


?>