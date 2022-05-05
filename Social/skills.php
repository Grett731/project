<?php
session_start(0);
include("connectionclass.php");
include("header.php");
?> <div class="col-sm-6">
 <br>
 
 
 
 <form action="nwskillexe.php" method="post">

<input type="text" name="skill" placeholder="Enter Skills" class="form-control"><br>
<select name="rate">
<option value="">-- Select Your Knwolage level --</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
</select><br><br>

<input type="submit" value="Add Skills" class="btn btn-primary"><br><br><br><br>


<?php
include("connectionclass.php");
$query="select * from skills WHERE user='$_SESSION[email]' ";
$res=mysqli_query($con,$query);
$count=mysqli_num_rows($res);
?>
<table class="table">
  <tr>
  <th>ID</th>
   <th>SKILLS</th>
     <th>RATEINGS</th>
     <th>DELETE</th>
  </tr>
  
 <?php
 if($count==0)
	{?>
 <tr>
  <th style="text-align:center; color:#F00;" colspan="3"><?php echo "No Skills Added" ?></th>
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
  <td><?php echo $row['skills']; ?></td>
    <td><?php echo $row['rate']; ?></td>
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
	 $q="delete from skills WHERE id='$_REQUEST[idd]' ";
	 mysqli_query($con,$q);
	  header("location:skills.php");
 }
 
 ?>
 
 
 
 
 
 
 
  </div>
  
  
  
  <?php
  include("right.php");
  
  ?>