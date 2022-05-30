<?php
session_start();
include("connectionclass.php");
$grpname=$_POST['name'];
//echo $_POST['name'] . $_POST['time'].  $_POST['course'].  $_POST['mark'];
$query="INSERT INTO education (name,time,course,mark,user) VALUES('$_POST[name]','$_POST[time]','$_POST[course]','$_POST[mark]','$_SESSION[email]')";

if(mysqli_query($con,$query))
   {
       header("location:edu.php");
     }
 else
 {
  echo "Error:" .mysqli_error($con);
 }
?>