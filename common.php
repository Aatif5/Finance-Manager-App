<?php
$con=mysqli_connect("localhost","root","","cinegraph") or die(mysqli_error($con));
  $res=mysqli_query($con,$qr);
  while($dis = mysqli_fetch_array($res)){}
    $res2=mysqli_query($con,$qr2);
    $hit_paint = mysqli_fetch_array($res2);
      $res3=mysqli_query($con,$qr3) or die(mysqli_error($con)) ;
      $hit=mysqli_fetch_assoc($res3);
?>