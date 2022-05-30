<?php
error_reporting(0);
session_start();
include("connectionclass.php");
include("header.php");
$status=$_REQUEST['status'];
$status1=$_REQUEST['status1'];
$receiver_id=$_REQUEST['receiver_id'];
$receiver=$_REQUEST['receiver'];
$receiver_name=$_REQUEST['receiver_name'];
$id=$_REQUEST['id'];
if($_REQUEST['status']=="accept")
 {
	mysqli_query($con,"update message_unknown set accept_status='accept' WHERE ((sender_id='$_SESSION[user_id]') AND (receiver_id='$receiver_id')) OR ((sender_id='$receiver_id') AND (receiver_id='$_SESSION[user_id]'))") or die("error".mysqli_error($con));
 
 }
 
 if($_REQUEST['status']=="decline")
 {
	mysqli_query($con,"update message_unknown set accept_status='decline' WHERE ((sender_id='$_SESSION[user_id]') AND (receiver_id='$receiver_id')) OR ((sender_id='$receiver_id') AND (receiver_id='$_SESSION[user_id]'))") or die("error".mysqli_error($con));
 
 }

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
 <br>Send Message<br>
 <?php
 include("spam4.php");
 ?>
<?php 
$query="select * from message_unknown WHERE ((sender_id='$_SESSION[user_id]' AND receiver_id='$receiver_id') OR (sender_id='$receiver_id' AND receiver_id='$_SESSION[user_id]'))";
$res=mysqli_query($con,$query);
$query1="select * from message_unknown WHERE (sender_id='$receiver_id' AND receiver_id='$_SESSION[user_id]')";
$res1=mysqli_query($con,$query1);
?>

 <table width="100%">
<?php
while($row=mysqli_fetch_array($res))
 {
$row1=mysqli_fetch_array($res1);
 ?>


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
 ?>
 <?php echo $row['sender_name'];?> : <?php echo $row['msg']; if($row['receiver_id']==$_SESSION['user_id']){ ?>  <a href="?status=accept&&receiver_id=<?php echo $receiver_id; ?>">Accept</a> / <a href="?status=decline&&receiver_id=<?php echo $receiver_id; ?>">Decline</a> <?php } ?><br />
 </td>
 
 </tr>

 <br>
 <?php
 }
 ?>

  </table>
 
 
  
  
  </div>
  
  
  
  <?php
  include("right.php"); 
  ?>