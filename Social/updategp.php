<?php
$id=$_REQUEST['id'];
include("connectionclass.php");
if(isset($_POST['update']))
{
$query = "UPDATE group_tb SET name='$_POST[name]' where id='$id'";
if(mysqli_query($con,$query))
{
header("location:nwgp.php");
}
else
{
echo"Error: " .mysqli_error($con);
}
}

$query="select * from group_tb where id='$id'";
$data=mysqli_query($con,$query);
$row=mysqli_fetch_array($data);
?>
<form method="POST">
<center>Group Id : <input type="text" name = "id" value="<?php echo $row['id']; ?>" readonly></center><br>
<center>Group Name : <input type="text" name = "name" placeholder="Enter new group name" ></center><br>
<center> <input type="submit" name="update" value="Update"></center>
</form>
