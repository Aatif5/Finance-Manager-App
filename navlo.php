<?php
session_start();
if (isset($_SESSION['name'])) {
          header("Location: home.php");
          die();
}
?>
<!DOCTYPE html>
<html lang="">
          <head>
                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1">

                    <!-- Bootstrap CSS -->
                    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

                    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                    <!--[if lt IE 9]>
                              <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
                              <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
                    <![endif]-->
                    <link href='https://fonts.googleapis.com/css?family=Gothic LT Std Bold' rel='stylesheet'>
                    <link href='https://fonts.googleapis.com/css?family=Capriola' rel='stylesheet'>
                    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<style>
body {
    font-family: 'Gothic LT Std Bold';
    font-size: 20px;
}
#logo {
    font-family: 'Capriola';font-size: 22px;
}
</style>

          </head>
          <style>
                    footer{
                              background-color: ;
                    }
                    body{
                              background-color: #eee;
                    }
                    .rt{
                              float: right;
                    }
                    .lt{
                              float: left;
                    }
          </style>
          <body>

                    <!-- jQuery -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                    <!-- Bootstrap JavaScript -->
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                    

<div class="container">
          
          <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <a class="navbar-brand" href="index.php" id="logo"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> BudgetDot.com</a>
                    <a href="login.php" type="button" class="btn btn-info navbar-btn rt" style="margin-right: 5px;">Log in</a>
                    <a href="sign.php" type="button" class="btn btn-info navbar-btn rt" style="margin-right: 5px;">Sign up</a>
                    <a href='#calculator' data-toggle="modal" class="btn btn-warning navbar-btn" style="margin: 5px;">
                              <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                               Calculator</a>
                    
          </nav>
</div>

                    
          </body>
</html>
<div class="modal fade" id="calculator">
          <div class="modal-dialog">
                    <div class="modal-content">
                              <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">
                                        <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                                         Calculator</h4>
                              </div>
                              <div class="modal-body">
                                        <center>
                                        <?php
                                        include 'cal.htm';
                                        ?>
                                        </center>
                              </div>
                              <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                              </div>
                    </div>
          </div>
</div>
