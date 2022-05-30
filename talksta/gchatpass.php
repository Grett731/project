<?php
error_reporting(0);
session_start();
include("connectionclass.php");
include("header.php");
//$db_name="music"; // Database name 

	header("Location:GROUPCHAT/search.php");


?>

<div class="col-sm-6">


<div class="container">
  <div class="row-justify-content-center">

     <h1>Password</h1><br>
     <form action="" method="POST">
     <div id="t1">
     Password : <input type="password" name="password" placeholder="Password" required id="ip1"><br><br>
     
   <input type="Submit" name="sub" value="Submit" style="height: 40px; width: 250px" id="p1" ><br>
     </div>
   </form>
 
   </div>
   </div>

  </div>
  <?php
  include("right.php");
  
  ?>