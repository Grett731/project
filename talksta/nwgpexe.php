<?php
session_start();
include("connectionclass.php");
$grpname=$_POST['grpname'];
$query="INSERT INTO group_creation(group_name,description,organization,place,user) VALUES('$_POST[grpname]','$_POST[description]','$_SESSION[organization]','$_SESSION[place]','$_SESSION[email]')";

if(mysqli_query($con,$query))
   {
	   $query1="INSERT INTO group_list(user_id,group_id,status) VALUES('$_SESSION[email]','$_POST[grpname]','owner')";
	   mysqli_query($con,$query1);
       header("location:create_group.php");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
?>