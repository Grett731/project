<?php
error_reporting(0);
$status=$_REQUEST['status'];
$last_id=$_REQUEST['last_id'];
$fname=$_REQUEST['fname'];
$lname=$_REQUEST['lname'];
$email=$_REQUEST['email'];
$contact=$_REQUEST['contact'];
$dob=$_REQUEST['dob'];
$gender=$_REQUEST['gender'];
$organization=$_REQUEST['organization'];
?>
 
  <style>
  .page-header2
  {
	background:#141D29;
	color:#FFF;  
	height:60px;
  }
  .page-header2 a
  {
	  float:right;
	color:#FFF;  
  }
  .tmenu
  {
	margin-top:15px;  
  }
  
  .right
  {
	background:#F5F5F5; 
	height:100%;
	min-height:600px;
  }
  
  
  
  .menu
  {
	background:#F0F0F0; 
	height:100%;
	min-height:600px;
	 
  }
  .menu ul
  {
list-style-type:none ;
margin-left:-10px;
  }
   .menu li
  {
height:30px; 
font-size:16px;
  }
  .glyphicon
  {
	color:#06F; 
	margin-right:10px; 
  }
  </style>
 



<html>
  <head>
    <meta name="viewport" content="width=device-width" content="initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/new3.css" rel="stylesheet">
   </head>
<body>

<div class="col-sm-12 page-header2">
  <div class="col-sm-4"><h2>TALKSTA</h2></div>
   <div class="col-sm-8 tmenu">
  </div>
  </div>

  <div id="p3">
   <div class="container">
    <div class="row-justify-content-center">
     <div class="col-sm-5">
      <h1><center>Create New Account</center></h1><br>
      
      <?php 
	  if($status=="")
	  {
		  ?>
         <form action="newaccexe.php" method="POST" enctype="multipart/form-data">
         <div id="t1">
         <input type="text" name="fname" placeholder="First Name" id="ip1" required><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required ><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1" required><br><br>
	     Birthday : <input id="date" name="dob" type="date" placeholder="Birthday" required><br><br>
         <input type="radio" name="gender" value="male" required > Male
         <input type="radio" name="gender" value="female" required> Female<br><br>
		 
		 <input type="text" name="place" placeholder="Place" id="ip1" required><br><br>
         <input type="text" name="username" placeholder="User/Login Name" id="ip1" required><br><br>
		 <input type="password" name="password" placeholder="Password" id="ip1" required><br><br>
		 Type:
		 <input type="radio" name="organization" value="Student" required > Student
         <input type="radio" name="organization" value="Staff" required> Staff<br><br>
         Profile Pic : <input type="file" name="profile_pic" placeholder="Profile Pic" id="ip2" ><br><br>
         <input type="Submit" value="Register Account" name="register" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
        <?php 
	    }
        elseif($status=="lname")
		{
		?>
         <form action="newaccexe1.php" method="POST">
         <div id="t1">
         <input type="hidden" name="last_id" value="<?php echo $last_id; ?>"><br><br>
         <input type="hidden" name="status" value="<?php echo $status; ?>"><br><br>
         <input type="text" name="fname" placeholder="First Name" id="ip1" required value="<?php echo $fname; ?>" readonly><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required autofocus style="border-color:#F00;" value="<?php echo $lname; ?>"><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required  value="<?php echo $email; ?>"><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1" required value="<?php echo $contact; ?>"><br><br>
	     Birthday : <input id="date"  name="dob" type="date" placeholder="Birthday" required value="<?php echo $dob; ?>"><br><br>
         <input type="radio" name="gender" value="male" <?php if($gender=="male"){ echo "checked";} ?> > Male
         <input type="radio" name="gender" value="female" <?php if($gender=="female"){ echo "checked";} ?>> Female<br><br>
         <input type="text" name="organization" placeholder="Organization" id="ip1" required value="<?php echo $organization; ?>"><br><br>
         <input type="Submit" value="Update Account" name="update" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
		<?php
        }
		elseif($status=="email")
		{
		?>
         <form action="newaccexe2.php" method="POST">
         <div id="t1">
         <input type="hidden" name="last_id" value="<?php echo $last_id; ?>"><br><br>
         <input type="hidden" name="status" value="<?php echo $status; ?>"><br><br>
         <input type="text" name="fname" placeholder="First Name" id="ip1" required value="<?php echo $fname; ?>" readonly><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required value="<?php echo $lname; ?>" readonly><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required autofocus style="border-color:#F00;"  value="<?php echo $email; ?>"><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1" required value="<?php echo $contact; ?>"><br><br>
	     Birthday : <input id="date" name="dob" type="date" placeholder="Birthday" required value="<?php echo $dob; ?>"><br><br>
         <input type="radio" name="gender" value="male" <?php if($gender=="male"){ echo "checked";} ?> > Male
         <input type="radio" name="gender" value="female" <?php if($gender=="female"){ echo "checked";} ?>> Female<br><br>
         <input type="text" name="organization" placeholder="Organization" id="ip1" required value="<?php echo $organization; ?>"><br><br>
         <input type="Submit" value="Update Account" name="update" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
		<?php
        }
		elseif($status=="contact")
		{
		?>
         <form action="newaccexe3.php" method="POST">
         <div id="t1">
         <input type="hidden" name="last_id" value="<?php echo $last_id; ?>"><br><br>
         <input type="hidden" name="status" value="<?php echo $status; ?>"><br><br>
         <input type="text" name="fname" placeholder="First Name" id="ip1" required value="<?php echo $fname; ?>" readonly><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required value="<?php echo $lname; ?>" readonly><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required  value="<?php echo $email; ?>" readonly><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1"  required autofocus style="border-color:#F00;"  value="<?php echo $contact; ?>"><br><br>
	     Birthday : <input id="date" name="dob" type="date" placeholder="Birthday" required value="<?php echo $dob; ?>"><br><br>
          <input type="radio" name="gender" value="male" <?php if($gender=="male"){ echo "checked";} ?> > Male
         <input type="radio" name="gender" value="female" <?php if($gender=="female"){ echo "checked";} ?>> Female<br><br>
         <input type="text" name="organization" placeholder="Organization" id="ip1" required value="<?php echo $organization; ?>"><br><br>
         <input type="Submit" value="Update Account" name="update" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
		<?php
        }
		elseif($status=="dob")
		{
		?>
         <form action="newaccexe4.php" method="POST">
         <div id="t1">
         <input type="hidden" name="last_id" value="<?php echo $last_id; ?>"><br><br>
         <input type="hidden" name="status" value="<?php echo $status; ?>"><br><br>
         <input type="text" name="fname" placeholder="First Name" id="ip1" required value="<?php echo $fname; ?>" readonly><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required value="<?php echo $lname; ?>" readonly><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required  value="<?php echo $email; ?>" readonly><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1" required value="<?php echo $contact; ?>" readonly><br><br>
	     Birthday : <input id="date" name="dob" type="date" placeholder="Birthday" required autofocus style="border-color:#F00;" value="<?php echo $dob; ?>"><br><br>
          <input type="radio" name="gender" value="male" <?php if($gender=="male"){ echo "checked";} ?> > Male
         <input type="radio" name="gender" value="female" <?php if($gender=="female"){ echo "checked";} ?>> Female<br><br>
         <input type="text" name="organization" placeholder="Organization" id="ip1" required value="<?php echo $organization; ?>"><br><br>
         <input type="Submit" value="Update Account" name="update" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
		<?php
        }
		elseif($status=="gender")
		{
		?>
         <form action="newaccexe5.php" method="POST">
         <div id="t1">
         <input type="hidden" name="last_id" value="<?php echo $last_id; ?>"><br><br>
         <input type="hidden" name="status" value="<?php echo $status; ?>"><br><br>
         <input type="text" name="fname" placeholder="First Name" id="ip1" required value="<?php echo $fname; ?>" readonly><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required value="<?php echo $lname; ?>" readonly><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required  value="<?php echo $email; ?>" readonly><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1" required value="<?php echo $contact; ?>" readonly><br><br>
	     Birthday : <input id="date" name="dob" type="date" placeholder="Birthday" required value="<?php echo $dob; ?>" readonly><br><br>
         <input type="radio" name="gender" value="male" <?php if($gender=="male"){ echo "checked";} ?> autofocus style="border-color:#F00;" > Male
         <input type="radio" name="gender" value="female" <?php if($gender=="female"){ echo "checked";} ?> autofocus style="border-color:#F00;"> Female<br><br>
         <input type="text" name="organization" placeholder="Organization" id="ip1" required value="<?php echo $organization; ?>"><br><br>
         <input type="Submit" value="Update Account" name="update" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
		<?php
        }
		elseif($status=="organization")
		{
		?>
        
         <form action="newaccexe6.php" method="POST">
         <div id="t1">
         <input type="hidden" name="last_id" value="<?php echo $last_id; ?>"><br><br>
         <input type="hidden" name="status" value="<?php echo $status; ?>"><br><br>
         <input type="text" name="fname" placeholder="First Name" id="ip1" required value="<?php echo $fname; ?>" readonly><br><br>
         <input type="text" name="lname" placeholder="Last Name" id="ip1" required value="<?php echo $lname; ?>" readonly><br><br>
         <input type="email" name="email" placeholder="Email ID" id="ip1" required  value="<?php echo $email; ?>" readonly><br><br>
         <input type="text" name="contact" placeholder="Contact No" id="ip1" required value="<?php echo $contact; ?>" readonly><br><br>
	     Birthday : <input id="date" name="dob" type="date" placeholder="Birthday" required  value="<?php echo $dob; ?>" readonly><br><br>
          <input type="radio" name="gender" value="male" <?php if($gender=="male"){ echo "checked";} ?> readonly > Male
         <input type="radio" name="gender" value="female" <?php if($gender=="female"){ echo "checked";} ?> readonly> Female<br><br>
         <input type="text" name="organization" placeholder="Organization" id="ip1" required autofocus style="border-color:#F00;" value="<?php echo $organization; ?>"><br><br>
         <input type="Submit" value="Update Account" name="update" style=" height: 30px; width: 250px" id="p1">
        </div>
        </form>
		<?php
        }
		?>
        
        
        
        
        
       </div>
      </div>
    </div> 
   </div>
 </body>
</html>