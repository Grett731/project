<?php
session_start();
include("connectionclass.php");
include("header.php");
?> <div class="col-sm-6">
 <br>
 
 
 
 <form action="exp_exe.php" method="post">

<input type="text" name="org" placeholder="Enter The orgnization " class="form-control"><br>
<input type="text" name="title" placeholder="Enter The Title ( postion of compnay)" class="form-control"><br>
<select name="exp">
<option value="">-- Select Your Experiance --</option>
  <option value="Bellow 6 month">Bellow 3 month</option>
  <option value="Bellow 1 Year">Bellow 1 Year</option>
  <option value="Above 1 Year">Above1 Year</option>
  <option value="Above 3 Year">Above 3 Year</option>
   <option value="Above 5 Year">Above 5 Year</option>
</select><br><br>

<input type="submit" value="Add Experiance" class="btn btn-primary"><br><br><br><br>


<?php
include("connectionclass.php");
$query="select * from experiance WHERE user='$_SESSION[email]' ";
$res=mysqli_query($con,$query);
$count=mysqli_num_rows($res);
?>
<table class="table">
  <tr>
  <th>ID</th>
   <th>Organization Name</th>
     <th>Titele</th>
     <th>Experiance</th>
     <th>Delete</th>
  </tr>
  
 <?php
 if($count==0)
	{?>
 <tr>
  <th style="text-align:center; color:#F00;" colspan="3"><?php echo "No Experiance Added" ?></th>
  </tr>
 <?php
	}
	else
	{
		$i=0;
while($row=mysqli_fetch_array($res))
{
	$i++;
  ?>
  <tr>
  <td><?php echo $i; ?></td>
  <td><?php echo $row['orgnization']; ?></td>
    <td><?php echo $row['title']; ?></td>
   <td><?php echo $row['exp']; ?></td>
       <td><a href="?idd=<?php echo $row['id'];?>">del</a></td>
  </tr>
<?php 

}

}
?>
</table>
 
 <?php
 if($_REQUEST["idd"]!="")
 {
	 $q="delete from experiance WHERE id='$_REQUEST[idd]' ";
	 mysqli_query($con,$q);
	  header("location:exp.php");
 }
 
 ?>
 
 
 
 
 
 
 
  </div>
  
  
  
  <?php
  include("right.php");
  
  ?>