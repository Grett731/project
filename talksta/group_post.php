<?php
error_reporting(0);
session_start();
include("connectionclass.php");
include("header.php");


if(isset($_REQUEST['del_id']))
{
	
	mysqli_query($con,"DELETE FROM group_posts WHERE id='$_REQUEST[del_id]'");
	header("location:index.php");
}
 

$status=$_REQUEST['status'];
$group_id=$_REQUEST['group_id'];
if($status=="already")
{
?>	
	<script type="text/javascript">
	alert("Already Joined");
	</script>
	
<?php	
}
if($status=="success")
{
?>	
	<script type="text/javascript">
	alert("Successfully Joined");
	</script>
	
<?php	
}


?> 







<div class="col-sm-6">
 <br>Page Posting<br>
 <?php
 include("spam3.php");
 ?>



 <span style="color:#306;">Page Posts</span><br>
 <?php
 $query="select * from group_posts WHERE group_id='$group_id' order by id desc";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
 ?>
 <table width="100%">
 <tr>
 <?php

echo "<td class='alert alert-success'>";
 
	
 echo "USER : ".$row['user_id']."<br>".$row['post']."<br>".$row['date']; 

if($row['spam_status']!="")
{
 echo "<img src='$row[spam_status]' width='100%' > </br></br>";
}
 if($_SESSION['email']==$row['user_id'])
	 {
		 echo"<a href='?del_id=$row[id]' class='btn btn-danger'>Delete</a> <br>";
	 }
 ?>

 </td>
 
 </tr>
 </table>
 <br>
 <?php
 }?>


 </div>
  
  
  
  <?php
  include("right1.php");
  
  ?>