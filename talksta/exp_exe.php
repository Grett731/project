<?php
session_start();
include("connectionclass.php");
$grpname=$_POST['org'];
$query="INSERT INTO experiance(orgnization,title,exp,user) VALUES('$_POST[org]','$_POST[title]','$_POST[exp]','$_SESSION[email]')";

if(mysqli_query($con,$query))
   {
	  // $query1="INSERT INTO group_list(user_id,group_id,status) VALUES('$_SESSION[email]','$_POST[grpname]','owner')";
	  // mysqli_query($con,$query1);
       header("location:exp.php");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
?>