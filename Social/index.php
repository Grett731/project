<?php
error_reporting(0);
session_start();
include("connectionclass.php");

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
 
 $allowed = array('gif', 'png', 'jpg');
$filename = $row['photo'];
$ext = pathinfo($filename, PATHINFO_EXTENSION);
if (!in_array($ext, $allowed)) {
   
    echo "USER : ".$row['user'];
 echo "</br></br>";
 echo "MESSAGE:".$row['msg']."<br>".$row['date_time']; 
}
else{
	
	 echo "USER : ".$row['user'];
 echo "<img src='$row[photo]' width='100%' > </br></br>";
 echo "MESSAGE:".$row['msg']."<br>".$row['date_time']; 
	
}
 
?> </td>
 
 </tr>
 </table>
 <br>
 <?php
 }?>
 
 
 
  
  
  </div>
  
  
  
  <?php
  include("right.php");
  
  ?>