<?php
session_start();
include("connectionclass.php");
include("header.php");
?> <div class="col-sm-7">
 <br><?php
 if($_REQUEST['status']!="")
 {
	mysqli_query($con,"update frd set status='$_REQUEST[status]' where id='$_REQUEST[tid]'") or die("error".mysqli_error($con));
//echo ",mhkjkkj";
 
 }

 

  echo " <table class='table'>
  <tr><th>Group Name</th><th>Status</th><th>Join Now</th><th>Group Post</th><th>Leave Group</th></tr>
  ";
 // $result1=mysqli_query($con,"select * from frd WHERE (frd_id='$frd_id' AND frd2_id='$frd2_id') OR (frd_id='$frd2_id' AND frd2_id='$frd_id')");
  $query="select DISTINCT group_id,user_id from group_list";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	     $group_id=$row['group_id'];
	     $query2="select * from group_list where user_id='$_SESSION[user_id]' AND group_id='$group_id' ";
	     $res2=mysqli_query($con,$query2);
         $row2=mysqli_fetch_array($res2);
 ?>

 <tr>
 
 <td><?php echo $row['group_id']; ?> </td>
  <td><?php 
  $user_email=$row['user_id']; 
  if($user_email==$_SESSION['email'])
  {
	echo "owner";  
  }
  else
  {  
	  $query3="select * from group_list WHERE group_id='$_SESSION[email]' ";
	  $res3=mysqli_query($con,$query3);
	  if(mysqli_num_rows($res3)>0)
	  {
		  echo "member";
	  }
	  else
	  {
		echo "not a member";  
	  }
  }
  
  
  ?> </td>
  <?php 
  if($row['status']=='Block')
  { ?>
	  <td>Can't Message</td>
      <?php 
  }
  else
  {
	  ?>
  
 <td><a href="send_message.php?receiver_id=<?php echo $row2['id']; ?>&&receiver=<?php echo $row2['email']; ?>&&receiver_name=<?php echo $row2['fname']; ?>&&status=send">Message</a></td>
 <?php } ?>
 <?php 
  if($row['status']=='Block')
  { ?>
	  <td>Can't Post</td>
      <?php 
  }
  else
  {
	  ?>
  
 <td><a href="send_post.php?receiver_id=<?php echo $row2['id']; ?>&&receiver=<?php echo $row2['email']; ?>&&receiver_name=<?php echo $row2['fname']; ?>&&status=send">Post</a></td>
 <?php } ?>
 <?php 
  if($row['status']=='Block')
  { ?>
	  <td>Already Blocked</td>
      <?php 
  }
  else
  {
	  ?>
 
 <td><a href="?status=Block&tid=<?php echo $row['id']; ?>">Block</a></td>
 <?php } ?>
 </tr>
 
 <?php
 }?>
 
 </table>
  </div>
  
  
  
  <?php
  include("right.php");
  
  ?>