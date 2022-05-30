<?php
error_reporting(0);
session_start();
include("connectionclass.php");
include("header.php");
//$db_name="music"; // Database name 
$tbl_name="profile_tb"; // Table name 
if(isset($_POST['sub']))
{
 $result = mysqli_query($con,"SELECT * FROM $tbl_name WHERE id='$_SESSION[user_id]' and password='$_POST[password]' ") or die('Could not connect: ' . mysqli_error($con));

$r = mysqli_num_rows($result);
if($r==1)
{
	header("Location:profile.php");
}
else
{
	?>
    <script type="text/javascript">
	alert("Sorry :Password Error !!!");
	</script>
    <?php
}

}

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