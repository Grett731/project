<?php
error_reporting(0);
session_start();
include("connectionclass.php");
include("header.php");

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
 if($row['spam_status']=="")
 {
echo "<td class='alert alert-success'>";
 }
 else
 {
	 echo "<td class='alert alert-danger'>";
	 
 }
 echo "USER : ".$row['user_id']."<br>".$row['post']."<br>".$row['date']; ?> </td>
 
 </tr>
 </table>
 <br>
 <?php
 }?>


 </div>
  
  
  
  <?php
  include("right1.php");
  
  ?>