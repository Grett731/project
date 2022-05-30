<?php
session_start();
include("connectionclass.php");
$status=$_REQUEST['st'];
$id=$_REQUEST['id'];

$rr=mysqli_query($con,"SELECT * FROM activity_data WHERE user='$_SESSION[user_id]' and activity_id='$id' ");

$cc=mysqli_num_rows($rr);

if($cc==0)
{
$query="INSERT INTO activity_data(activity_id,status,user) VALUES('$_REQUEST[id]','$_REQUEST[st]','$_SESSION[user_id]')";
}
else{
	$query="UPDATE activity_data SET status='$_REQUEST[st]' WHERE user='$_SESSION[user_id]' and activity_id='$id'";
}

if(mysqli_query($con,$query))
   {
       header("location:index.php");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
?>