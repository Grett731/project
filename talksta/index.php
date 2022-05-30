<?php
error_reporting(0);
session_start();
include("connectionclass.php");
if(isset($_POST['csubmit']))
{
	
	//echo"INSERT INTO activity_comments(user,msg,post_id) VALUES('$_SESSION[user_id]','$_POST[c_msg]','$_POST[post_id]')";
	mysqli_query($con,"INSERT INTO activity_comments(user,msg,post_id) VALUES('$_SESSION[user_id]','$_POST[c_msg]','$_POST[post_id]')");
	header("location:index.php");
}
 
if(isset($_REQUEST['del_id']))
{
	
	mysqli_query($con,"DELETE FROM activity_comments WHERE id='$_REQUEST[del_id]'");
	header("location:index.php");
}
if(isset($_REQUEST['del_pid']))
{
	
	mysqli_query($con,"DELETE FROM activity WHERE id='$_REQUEST[del_pid]'");
	header("location:index.php");
}
 

include("header.php");

$status=$_REQUEST['status'];
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
<br />
 <br>ADD Post<br>
 <?php
 include("spama.php");
 ?>

 <span style="color:#F00;">Posts</span><br>
 
 <?php
 
 $query="select * from activity order by id desc";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
 ?>
 <table width="100%">
 <tr>
 <?php
 if($row['status']=="")
 {
echo "<td class='alert alert-success'>";
 }
 else
 {
	 echo "<td class='alert alert-danger'>";
	 
 }
 echo "".$row['user'];
  if($_SESSION['email']==$row['user'])
	 {
		 echo"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href='?del_pid=$row[id]' class='btn btn-primary'>Remove</a> <br>";
	 }
 
 $allowed = array('gif', 'png', 'jpg');
$filename = $row['photo'];
$ext = pathinfo($filename, PATHINFO_EXTENSION);
if (!in_array($ext, $allowed)) {
   
    
 echo "</br></br>";
 echo "MESSAGE:".$row['msg']."<br>".$row['date_time']; 
}
else{
	
	 
 echo "<img src='$row[photo]' width='100%' > </br></br>";
 echo "MESSAGE:".$row['msg']."<br>".$row['date_time']; 
	
}
$query22c="SELECT COUNT(*) cc FROM `activity_data` WHERE activity_id='$row[id]' and status='like'";
$res22c=mysqli_query($con,$query22c);
$row22c=mysqli_fetch_array($res22c);
 
 $query22cl="SELECT COUNT(*) cc FROM `activity_data` WHERE activity_id='$row[id]' and status='unlike'";
$res22cl=mysqli_query($con,$query22cl);
$row22cl=mysqli_fetch_array($res22cl);

?>
<h4>LIKES</h4>

<a href="lk.php?id=<?php echo $row['id']?>&st=like" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-thumbs-up"></span> Like <?php echo "(".$row22c['cc'].")"; ?>
</a>
 <a href="lk.php?id=<?php echo $row['id']?>&st=unlike" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-thumbs-down"></span> Unlike <?php echo "(".$row22cl['cc'].")"; ?>
        </a>
<br>




<br>

<h3>Comments</h3>

<form action="" method='post'>
<textarea name='c_msg' class='form-control'></textarea>
<input type='hidden' value='<?php echo $row['id']?>' name='post_id' />
<br>
<input type='submit' value='comments' name='csubmit'>
</form>

<?php

$query22="SELECT activity_comments.*, profile_tb.fname FROM activity_comments INNER JOIN profile_tb ON activity_comments.user = profile_tb.id WHERE post_id='$row[id]' order by id desc";
$res22=mysqli_query($con,$query22);
while($row22=mysqli_fetch_array($res22))
 {
	 echo"<br>
	 User: $row22[fname]<br>
	 <b>$row22[msg]</b>
	  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;";
	 
	 if($_SESSION['user_id']==$row22['user'])
	 {
		 echo"<a href='?del_id=$row22[id]' class='btn btn-danger'>Delete</a> <br>";
	 }
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
  include("right.php");
  
  ?>