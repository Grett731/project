<?php
$id=$_REQUEST['id'];
include("connectionclass.php");
$query = "DELETE FROM page_tb WHERE id='$id'";
if(mysqli_query($con,$query))
{
header("location:nwpage.php");
}
else
{
echo"Error: " .mysqli_error($con);
}
?>