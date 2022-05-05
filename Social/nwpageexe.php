<?php
include("connectionclass.php");
$pagename=$_POST['pagename'];
$query="INSERT INTO page_tb(pagename) VALUES('$_POST[pagename]')";

if(mysqli_query($con,$query))
   {
     header("location:nwpage.php");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
?>