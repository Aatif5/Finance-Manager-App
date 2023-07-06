<?php
$name=test_input($_POST['name']);
$mail=test_input($_POST['mail']);
$con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
$qr="SELECT * FROM `users` WHERE `name`='$name' ";
$res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
if(mysqli_num_rows($res)>0){
          header("Location: sign.php?er=name");          
          die();
}
if( test_input($_POST['confpass']) == test_input($_POST['pass']) ){
          $pass=test_input($_POST['pass']);
}
else{
          header("Location: sign.php?er=pass");          
          die();
}
$qr="INSERT INTO `users`(`name`, `mail`, `password`) VALUES ('$name','$mail','$pass')";
$res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
session_start();
$_SESSION['name']=$name;
header("Location: home.php");
die();

function test_input($data) {
          $data = trim($data);
          $data = stripslashes($data);
          $data = htmlspecialchars($data);
          return $data;
        }
?>