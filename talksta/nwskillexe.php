<?php
session_start();
include("connectionclass.php");
$grpname=$_POST['skill'];
$query="INSERT INTO skills(skills,user,rate) VALUES('$_POST[skill]','$_SESSION[email]','$_POST[rate]')";

if(mysqli_query($con,$query))
   {
	   
       header("location:skills.php");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
?>