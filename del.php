<?php
session_start();
$name=$_SESSION['name'];
if (isset($_POST['expense']) && isset($_POST['plan']) ) {
          # code...
          $plan=$_POST['plan'];
          $expense=$_POST['expense'];
          $con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
          $qr="DELETE FROM `expenses` WHERE `planid`='$plan' AND `sno`='$expense' AND `user`='$name' ";
          $res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
}
elseif ( isset($_POST['plan']) ) {
          $plan=$_POST['plan'];
          $con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
          $qr="DELETE FROM `expenses` WHERE `planid`='$plan' AND `user`='$name' ";
          $res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
          $qr="DELETE FROM `plans` WHERE `sno`='$plan' AND `user`='$name' ";
          $res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
}
header("Location: home.php");
die();
?>