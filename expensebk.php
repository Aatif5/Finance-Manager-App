<?php
session_start();
$name=$_SESSION['name'];
$plan=test_input($_POST['plan']);
$title=test_input($_POST['title']);
$amount=test_input($_POST['amount']);
$date=tets_input($_POST['date']);

$picfileformats=array("jpg","jpeg","png","gif","JPG","JPEG","PNG","GIF");
$folder=null;

if($_FILES['file']['size']>0){
          $orginalname=$_FILES['file']['name'];
          $filetype=strtolower(pathinfo($orginalname,PATHINFO_EXTENSION));
          if(!in_array($filetype,$picfileformats)){
          echo "stoped";
          die();
          }
          $filename=$name.date("Ymdhisa").'.'.$filetype;
          $tempname=$_FILES['file']['tmp_name'];
          $folder="bills/".$filename;
          move_uploaded_file($tempname,$folder);

}

$con=mysqli_connect("localhost","root","","budget") or die(mysqli_error($con));
$qr="INSERT INTO `expenses`(`user`,`planid`,`title`,`amount`,`date`,`bill`) VALUES ('$name','$plan','$title','$amount','$date','$folder')";
$res=mysqli_query($con,$qr) or die(mysqli_error($con)) ;
$url="plan.php?plan=".$plan;
header("Location: home.php");
die();

function test_input($data) {
          $data = trim($data);
          $data = stripslashes($data);
          $data = htmlspecialchars($data);
          return $data;
        }
?>