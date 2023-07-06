<?php
session_start();
$name=$_SESSION['name'];
$budget=test_input($_POST['budget']);
$title=tets_input($_POST['title']);
$from=tets_input($_POST['from']);
$to=tets_input($_POST['to']);
$con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
$qr="INSERT INTO `plans`(`user`,`budget`, `title`, `from_date`, `to_date`) VALUES ('$name','$budget','$title','$from','$to')";
$res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
header("Location: home.php");
die();

function test_input($data) {
          $data = trim($data);
          $data = stripslashes($data);
          $data = htmlspecialchars($data);
          return $data;
        }
?>