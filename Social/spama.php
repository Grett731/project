
<form action="" method="post" enctype="multipart/form-data">
<textarea name="msg" class="form-control" placeholder="Enter the message"></textarea><br>

Add image: <input name="uploadedfile" type="file" /><br />
<input type="submit" name="submit" class='btn btn-primary'>
</form>
<br /> 
<?php
$msgResponds="";
if(isset($_POST['submit']))
{

///$data="semantic similarity for Knowledge Graphs (KGs). It is easy to use Sematch to compute semantic similarity scores of concepts, claims you are winner";
$data=$_POST['msg'];
$target_path = "uploads/";

$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 
$date=date('Y-m-d H:i:s');

$res=mysqli_query($con,"INSERT INTO activity(msg,user,photo,date_time) VALUES('$data','$_SESSION[email]','$target_path','$date')");
if($res)
{
move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path) ;
}

}






  
  
  
?>