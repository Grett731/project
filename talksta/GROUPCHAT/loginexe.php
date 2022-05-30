<?php
session_start();
include("connectionclass.php");
$email=$_POST['email'];
$password=$_POST['password'];
if($email=="admin@admin.com" && $password=="admin")
{
header("location:../admin/header.php");
break;
}
$query="select * FROM profile_tb where email='$email' and password='$password'";
$res=mysqli_query($con,$query);
$row=mysqli_fetch_array($res);
$count=mysqli_num_rows($res);
if($count==1)
{
	$_SESSION['user_id']=$row['id'];
	$_SESSION['email']=$email;
	$_SESSION['fname']=$row['fname'];
	$_SESSION['organization']=$row['organization'];
	$_SESSION['place']=$row['place'];
  header("location:search.php");
}
else
{
  header("location:login.php?status=error");
}
?> 