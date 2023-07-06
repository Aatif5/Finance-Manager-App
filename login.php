<?php
include 'navlo.php';
$msg=null;
if(isset($_GET['er'])){
      if($_GET['er']=="name"){
            $msg="User doesn't exist";
      }
      elseif ($_GET['er']=="pass"){
            $msg="Incorrect Password";
      }
}
?>
<style>

</style>
<body style="padding:100px">

<div class="container">
          
          <div class="row">
                    <div class="col-xs-12 col-md-offset-3 col-md-6" id="signform">
      
                    <div class="panel panel-info">
                    <div class="panel-heading">
                                               <h3 class="panel-title">Log in</h3>
                             </div>
                             <div class="panel-body">

                          <form action="logbk.php" method="POST" role="form" style="padding:5px">
                                    <?php
if($msg){
      ?>
      
      <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <?php echo $msg;?>
      </div>
      
      <?php
}
?>
                                    
                                    <div class="form-group">
                                              
                                              <input type="text" name="name" id="name" class="form-control" required="required" placeholder="User Name" maxlength="15">
                                              
                                    </div>
                                    
                                    <div class="form-group">
                                              
                                              <input type="password" name="pass" id="pass" class="form-control" required="required" placeholder="Password" maxlength="15">
                                              
                                    </div>
                          
                                    <button type="submit" class="btn btn-info btn-block">Log in</button>
                          </form>
                          </div>
                 </div>
                              
                    </div>
          </div>
          
</div>

          
</body>
<?php
include 'footer.html';
?>
