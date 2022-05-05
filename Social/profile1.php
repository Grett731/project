<?php
error_reporting(0);
$fid=$_REQUEST['fid'];
session_start();
include("connectionclass.php");
include("header.php");
//$db_name="music"; // Database name 
$tbl_name="profile_tb"; // Table name 
 $result = mysqli_query($con,"SELECT * FROM $tbl_name WHERE id='$_REQUEST[id]' ") or die('Could not connect: ' . mysqli_error($con));

$row = mysqli_fetch_array($result);

?>

<div class="col-sm-6">



<div class="container" >

      
  <table class="table table-striped table-bordered" style="width:615px;">
   
    <tbody>
    <br>
    <br>
 <tr>
 <td colspan="2" align="center">
 <center>
  <img src="<?php echo $row['profile_pic']; ?>" class="img-circle" width="100px" height="100px">
  </center>
  </td>
  </tr>
     <tr>
        <th class="col-sm-4">First Name</th>
        <td><?php echo $row["fname"]; ?></td>
       
      </tr>
  
      
         <tr>
        <th>Last Name</th>
        <td><?php echo $row["lname"]; ?></td>
       
      </tr>
     
     
      <tr>
        <th>Email</th>
        <td><?php echo $row["email"]; ?></td>
       
      </tr>
      
      <tr>
        <th>Gender</th>
        <td><?php echo $row["gender"]; ?></td>
       
      </tr>
      
      
      
       <tr>
        <th>DOB</th>
        <td><?php echo $row["dob"]; ?></td>
       
      </tr>
   
   
    <tr>
 <th colspan="2" style="padding-left:650px; font-size:20px;">
 <a href="frd_request.php">Back</a>
  </th>
  </tr>
     
    </tbody>
  </table>
  
   <?php
   $result2 = mysqli_query($con,"SELECT * FROM skills WHERE user='$row[email]' ") or die('Could not connect: ' . mysqli_error($con));

   ?>
  
        <h3>Skills</h3>
        
     <h4>  <?php while($row2 = mysqli_fetch_array($result2)){ echo $row2["skills"] .","; } ?>
       </h4>
       <br/>
       
   <?php
   $result3 = mysqli_query($con,"SELECT * FROM experiance WHERE user='$row[email]' ") or die('Could not connect: ' . mysqli_error($con));

   ?>
  
        <h3>Experiance details</h3></br>
        
     <h4>  <?php while($row3 = mysqli_fetch_array($result3)){
		echo "ORGANIZATION NAME : " . $row3['orgnization'];
		echo "<br>POSTION       :" . $row3['title'];
		echo "<br>EXPERIANCE    :" . $row3['exp']; 
		echo "<br> -------------------------------------------------------------------
		<br><br> " ; 
		  
		  } ?>
       </h4>
 
   <?php
   $result4 = mysqli_query($con,"SELECT * FROM education WHERE user='$row[email]' ") or die('Could not connect: ' . mysqli_error($con));

   ?>
  
        <h3>Education details</h3></br>
        
     <h4>  <?php while($row4 = mysqli_fetch_array($result4)){
		echo "ORGANIZATION NAME : " . $row4['name'];
		echo "<br>TIME PERIOD     :" . $row4['time'];
		echo "<br>COURSE NAME    :" . $row4['course']; 
		echo "<br>MARK    :" . $row4['mark']; 
		echo "<br> ---------------------------------------------------------------------
		<br><br> " ; 
		  
		  } ?>
       </h4>
 
  
</div>


  </div>
  <?php
  include("right.php");
  
  ?>