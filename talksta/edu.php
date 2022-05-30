<?php
session_start(0);
include("connectionclass.php");
include("header.php");
?> <div class="col-sm-6">
 <br>
 
 
 
 <form action="edu_exe.php" method="post">

<input type="text" name="name" placeholder="Enter Education Name " class="form-control"><br>
<input type="text" name="time" placeholder="Enter The Time period " class="form-control"><br>
<input type="text" name="course" placeholder="Enter The Course " class="form-control"><br>
<input type="text" name="mark" placeholder="Enter The Obtained Mark " class="form-control"><br>


<input type="submit" value="Add Education" class="btn btn-primary"><br><br><br><br>


<?php
include("connectionclass.php");
$query="select * from education WHERE user='$_SESSION[email]' ";
$res=mysqli_query($con,$query);
$count=mysqli_num_rows($res);
?>
<table class="table">
  <tr>
  <th>ID</th>
   <th>Organization Name</th>
     <th>Time Period</th>
     <th>Course Name</th>
     <th>Marks Obtained</th>
     <th>Delete</th>
  </tr>
  
 <?php
 if($count==0)
	{?>
 <tr>
  <th style="text-align:center; color:#F00;" colspan="3"><?php echo "No Education Added" ?></th>
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
  <td><?php echo $row['name']; ?></td>
   <td><?php echo $row['time']; ?></td>
   <td><?php echo $row['course']; ?></td>
   <td><?php echo $row['mark']; ?></td>
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
	 $q="delete from education WHERE id='$_REQUEST[idd]' ";
	 mysqli_query($con,$q);
	  header("location:edu.php");
 }
 
 ?>
 
 
 
 
 
 
 
  </div>
  
  
  
  <?php
  include("right.php");
  
  ?>