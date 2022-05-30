
  <div class="col-sm-3 right">
  
  
  <!--
  
 <b>Friends List</b>
 <br />
 <?php
 /*
  $query="select * from frd where frd_id='$_SESSION[user_id]' and status='Confirm'";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	 $query2="select * from profile_tb where id='$row[frd2_id]'";
$res2=mysqli_query($con,$query2);
$row2=mysqli_fetch_array($res2);
echo $row2['fname']; ?> <a href="send_message.php?fname=<?php echo $row2['fname']; ?>&&email=<?php echo $row2['email']; ?>" style="margin-left:20px;">send message</a>
<span class="badge badge-notifications alert-animated" style="margin-left:5px;">
<?php
$c="SELECT * from message where receiver='$_SESSION[fname]' AND status='send'";
$result=mysqli_query($con,$c);
echo mysqli_num_rows($result);
$row3=mysqli_fetch_array($result);
?>
</span>
<a href="send_message.php?fname=<?php echo $row2['fname']; ?>&&email=<?php echo $row2['email']; ?>&&status=reply&&id=<?php echo $row3['id']; ?>" style="margin-left:20px;">reply</a>


<br />
<?php
 }
 
 ?>
 <br><br>
 
 -->
 <br />
  <b>Your Groups</b>
  
   <br />
 <?php
  $query="select * from group_creation where user='$_SESSION[email]' ";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	 
echo $row['group_name']; ?><br />


<?php

 }
  
  ?>
  
  
  <br><br>
 
 
  <b>Group List</b>
  
   <br />
 <?php
 
$query="select DISTINCT group_id from group_list where user_id!='$_SESSION[email]'";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	 
echo $row['group_id']; ?><br />


<?php

 }
  
  ?>
  
  
  
  <br><br>
 
 
  <b>Joined Group</b>
  
   <br />
 <?php
 
  $query="select DISTINCT group_id from group_list where user_id='$_SESSION[email]'";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	 
echo $row['group_id']; ?><br />


<?php

 }
  
  ?>
  <br><br>
 
 
  <b>Friend List</b>
  
   <br />
  
    
        <?php
include("connectionclass.php");
        $result=mysqli_query($con,"select * from profile_tb Where email!='$_SESSION[email]'");
		
		while($row=mysqli_fetch_array($result))
		{
         echo   "$row[fname] $row[lname]
				$row[email]
						<br>
						<a href='CHAT/search.php?request=1&receiver=$row[email]'>Chat</a>
						<br><hr>
               
            ";
			
		
		
		
		*/
         ?>  
  </div>