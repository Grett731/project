<?php
session_start();
include("connectionclass.php");
$group_id=$_REQUEST['group_id'];
$data=mysqli_query($con,"SELECT * FROM group_list WHERE user_id='$_SESSION[email]' AND group_id='$group_id'");
$count=mysqli_num_rows($data);
if($count>0)
{
header("location:index.php?status=already");	
}
else
{
$query="INSERT INTO group_list(user_id,group_id,status) VALUES('$_SESSION[email]','$group_id','member')";
if(mysqli_query($con,$query))
   {
       header("location:index.php?status=success");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
}
?>