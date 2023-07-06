<?php
include 'navli.php';
?>
<style>

</style>
<body style="padding:60px">
          
          <div class="container">
                    
                    <div class="row">
                 

<div class="col-xs-12 col-sm-12 col-md-offset-3 col-md-6 col-lg-6">
<div class="panel panel-info">
                             <div class="panel-heading">
                                               <h3 class="panel-title">Change Password</h3>
                             </div>
                             <div class="panel-body">
                                               
                                               <form action="setbk.php" method="POST" class="form-horizontal" role="form" style="padding:5px">
<?php
$msg=null;
if(isset($_GET['er'])){
      ?>
      
      <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Passwords didn't match.
      </div>
      
      <?php
}
?>
                                                                   
                                                                   <div class="form-group">
                                                                                       <input type="password" name="newpass" class="form-control" required="required" placeholder="New Password">
                                                                   </div>

                                                                   <div class="form-group">
                                                                                       <input type="password" name="confirmpass" class="form-control" required="required" placeholder="Confirm New Password">
                                                                   </div>
                                                                   
                                                                   
                                               
                                                                   <div class="form-group">
                                                                             
                                                                                       <button type="submit" class="btn btn-primary btn-block">Change</button>
          
                                                                   </div>
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