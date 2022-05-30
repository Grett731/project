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
<br><br>

<form action="" method="post" enctype="multipart/form-data">
<textarea name="msg" class="form-control" placeholder="Enter the message"></textarea><br>
<input type="date" name="edate" placeholder="Enter date "  class="form-control"required><br />


Add image: <input name="uploadedfile" type="file" /><br />

<input type="submit" name="submit" class='btn btn-primary'>
</form>

<?php


if(isset($_POST['submit']))
{

///$data="semantic similarity for Knowledge Graphs (KGs). It is easy to use Sematch to compute semantic similarity scores of concepts, claims you are winner";
$data=$_POST['msg'];
$d=$_POST['edate'];
$target_path = "uploads/";
$date=date('Y-m-d H:i:s');
$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 

//move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path) ;
   

//echo $data;



$res=mysqli_query($con,"INSERT INTO event(msg,user,photo,date,date_time) VALUES('$data','$_SESSION[email]','$target_path','$d','$date')");
if($res)
{
move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path) ;
}

}


  
  
  
?>

 <span style="color:#F00;">EVENTS </span><br>
 
 <?php
 
 $query="select * from event order by id desc";
 

$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
 ?>
 <table width="100%">
 <tr>
 <?php

echo "<td class='alert alert-success'>";
 
 
 echo "USER : ".$row['user'];
 echo "</br></br>";
 $allowed = array('gif', 'png', 'jpg');
$filename = $row['photo'];
$ext = pathinfo($filename, PATHINFO_EXTENSION);
if (!in_array($ext, $allowed)) {
   
    
 echo "MESSAGE:".$row['msg']."<br>".$row['date']; 
}
else{
	
	
 echo "<img src='$row[photo]' width='100%' > </br></br>";

	
}
 echo "<br>Event Date : ".$row['date'];

  echo " <br>MESSAGE:".$row['msg']."<br>".$row['date_time']; 
?> </td>
 


 <?php

 }
 
 ?>
 
  </tr>
 </table>
 
 </div>
<br /> 
 <?php
 
 include("right.php");
 ?>