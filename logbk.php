<?php
$name=test_input($_POST['name']);
$con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
$qr="SELECT `name`,`password` FROM `users` WHERE `name`='$name' ";
$res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
if(mysqli_num_rows($res)<1){
          header("Location: login.php?er=name");
          die();
}
$dis=mysqli_fetch_assoc($res);
if( $dis['password'] == test_input($_POST['pass']) ){
          session_start();
          $_SESSION['name']=$dis['name'];
          header("Location: home.php");
}else {
          header("Location: login.php?er=pass");
          die();
}
die();

function test_input($data) {
          $data = trim($data);
          $data = stripslashes($data);
          $data = htmlspecialchars($data);
          return $data;
        }
?>