<?php
session_start();
include("connectionclass.php");
include("header.php");
?> <div class="col-sm-6">
 <br>
 
 
 
 <form action="nwgpexe.php" method="post">

<input type="text" name="grpname" placeholder="Page Name" class="form-control"><br><br>
<textarea  name="description"  class="form-control" placeholder="Description"></textarea><br><br>
<input type="submit" value="Create Page" class="btn btn-primary"><br><br>


<?php
include("connectionclass.php");
$query="select * from group_creation WHERE user='$_SESSION[email]' ";
$res=mysqli_query($con,$query);
$count=mysqli_num_rows($res);
?>
<table class="table">
  <tr>
  <th>ID</th>
   <th>PAGE NAME</th>
   <th>DESCRIPTION</th>
  </tr>
  
 <?php
 if($count==0)
	{?>
 <tr>
  <th style="text-align:center; color:#F00;" colspan="3"><?php echo "No Page Created" ?></th>
  </tr>
 <?php
	}
	else
	{
while($row=mysqli_fetch_array($res))
{
	
  ?>
  <tr>
  <td><?php echo $row['id']; ?></td>
  <td><?php echo $row['group_name']; ?></td>
  <td><?php echo $row['description']; ?></td>
  </tr>
<?php 
}
}
?>
</table>
 
 
 
 
 
 
 
 
 
 
 
 
  </div>
  
  
  
  <?php
  include("right.php");
  
  ?>