<?php
session_start();
$name=$_SESSION['name'];
$newpass=test_input($_POST['newpass']);
$confirmpass=test_input($_POST['confirmpass']);
if($newpass!=$confirmpass){
          header("Location: settings.php?er=match");
          die();
}
$con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
$qr="SELECT `name`,`password` FROM `users` WHERE `name`='$name' ";
$res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
if(mysqli_num_rows($res)<1){
          header("Location: login.php?er=name");
          die();
}
else {
          $con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
          $qr="UPDATE  `users` SET `password`='$newpass' WHERE `name`='$name' ";
          $res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
          header("Location: home.php");
}
die();

function test_input($data) {
          $data = trim($data);
          $data = stripslashes($data);
          $data = htmlspecialchars($data);
          return $data;
        }
?>