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
  $query="select * from group_creation";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	     $group_name=$row['group_name'];
		 $owner_name=$row['user'];
	     $query2="select * from group_list where group_id='$row[group_name]' ";
	     $res2=mysqli_query($con,$query2);
         $row2=mysqli_fetch_array($res2);
 ?>

 <tr>
 
 <td><?php echo $row['group_name']; ?> </td>
  <td>
  <?php
 
  if(($row2['user_id'])==($_SESSION['email']))
  {
	echo "owner";  
  }
  else 
  {
	  //echo $row2['group_id'];
	  $query3="select * from group_list where group_id='$row2[group_id]' AND user_id='$_SESSION[email]' ";
	  $res3=mysqli_query($con,$query3);
      $row3=mysqli_fetch_array($res3);
	  if(mysqli_num_rows($res3))
	  {
		  echo "member";
	  }
		 
		 else
		 {
			echo "not a member"; 
		 }
	  
  }
  ?>
  </td>
  <td>
  <?php
 
  if(($row2['user_id'])==($_SESSION['email']))
  {
	echo "owner";  
  }
  else 
  {
	  //echo $row2['group_id'];
	  $query3="select * from group_list where group_id='$row2[group_id]' AND user_id='$_SESSION[email]' ";
	  $res3=mysqli_query($con,$query3);
      $row3=mysqli_fetch_array($res3);
	  if(mysqli_num_rows($res3))
	  {
		  echo "member";
	  }
		 
		 else
		 {
			 
		?>
			<a href="join_group.php?group_id=<?php echo $row2['group_id']; ?>">join now</a>
		 <?php }
	  
  }
  ?>
  </td>
  
 <td>
 
 <?php
 
  if(($row2['user_id'])==($_SESSION['email']))
  {
		  ?>
		 <a href="send_post.php?receiver_id=<?php echo $row2['id']; ?>&&receiver=<?php echo $row2['email']; ?>&&receiver_name=<?php echo $row2['fname']; ?>&&status=send">Post</a>
	<?php  }
  else 
  {
	  //echo $row2['group_id'];
	  $query3="select * from group_list where group_id='$row2[group_id]' AND user_id='$_SESSION[email]' ";
	  $res3=mysqli_query($con,$query3);
      $row3=mysqli_fetch_array($res3);
	  if(mysqli_num_rows($res3))
	  {
		  ?>
		 <a href="send_post.php?receiver_id=<?php echo $row2['id']; ?>&&receiver=<?php echo $row2['email']; ?>&&receiver_name=<?php echo $row2['fname']; ?>&&status=send">Post</a>
	<?php  }
		 
		 else
		 {
			echo "can't post"; }
	  
  }
  ?>
  </td>
 
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