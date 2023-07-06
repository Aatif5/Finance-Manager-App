<?php
session_start();
if (!isset($_SESSION['name'])) {
  echo "session";
          header("Location: login.php");
          die();
}
else {
          $name=$_SESSION['name'];
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
                      background:#eee;
                    }
                    .rt{
                              float: right;
                    }
                    .lt{
                              float: left;
                    }
                    nav{
                      background-color: #1DA1F2;
                    }
          </style>
          <body>

                    <!-- jQuery -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                    <!-- Bootstrap JavaScript -->
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

          <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
          
          <a class="navbar-brand" href="index.php" id="logo">
          <span class="glyphicon glyphicon-stats" aria-hidden="true"></span> BudgetDot.com
          </a>

          <a href="home.php" class="navbar-btn btn btn-info rt" style="margin: 5px;">
                              <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                               Plans</a>

                               
                               <!-- Single button -->
<div class="btn-group navbar-btn rt" style="margin: 5px;">
  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                               <?php echo $name;?> <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
                              <li><a href="about.php">
                              <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
                               About</a></li>
                              <li><a href="settings.php">
                              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                               Settings</a></li>
                              <li role="separator" class="divider"></li>
                              <li><a href="logout.php">
                              <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
                               Log out</a></li>
                              </ul>

</div>

<a href='#calculator' data-toggle="modal" class="navbar-btn btn btn-warning rt" style="margin: 5px;">
                              <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                               Calculator</a>
          
          </nav>

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
