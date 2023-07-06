<?php
include 'navlo.php';
$msg=null;
if(isset($_GET['er'])){
      if($_GET['er']=="name"){
            $msg="Name already exists";
      }
      elseif ($_GET['er']=="pass"){
            $msg="Password didn't Match";
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
                                               <h3 class="panel-title">Sign in</h3>
                             </div>
                             <div class="panel-body">

                          <form action="signbk.php" method="POST" role="form" style="padding:5px">
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
                                              <input type="text" class="form-control" name="name" id="name" required="required" placeholder="Name" maxlength="15">
                                    </div>
                          
                                    
                                    
                                    <div class="form-group">
                                              
                                              <input type="email" name="mail" id="mail" class="form-control" required="required" placeholder="Mail" maxlength="30">
                                              
                                    </div>
                                    
                                    <div class="form-group">
                                              
                                              <input type="password" name="pass" id="pass" class="form-control" required="required" placeholder="Password" maxlength="15">
                                              
                                    </div>

                                    <div class="form-group">
                                              
                                              <input type="password" name="confpass" id="confpass" class="form-control" required="required" placeholder="Confirm Password" maxlength="15">
                                              
                                    </div>
                          
                                    <button type="submit" class="btn btn-info btn-block">Sign Up</button>
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
