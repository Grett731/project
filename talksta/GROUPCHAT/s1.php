<?php
session_start();
error_reporting(0);


?> 
  <link rel="stylesheet" href="bootstrap.min.css">
  
  <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
  
<style>
body
{
margin:0px;	
}
tfoot input {
        width: 100%;
        padding: 3px;
        box-sizing: border-box;
    }
	#frdd
	{
		background:#000;color:#fff;
	}
	#frdd a
	{
	color:#fff;	
	
	
	}
</style>

<table width="100%"><tr><td width='25%' id='frdd' valign="top">
<table id="example" class="display" cellspacing="0" width="40%" height="600px">
        
            <tr>
                <th><h3 style="color:#FFF;">Chat Friend List</h3>
                <a href='../index.php'>Home</a> </th>
                <a href='../login.php'>Log Out</a> </th>
                
                
               
            </tr>
       
       
        <tbody>
        <tr><td valign="top">
        <div style="height:500px;width:300px; overflow:auto">
        <?php
include("connectionclass.php");
$target_path = "uploads/";

$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 
if(isset($_POST['Submit']))
{
if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
   if(mysqli_query($con,"insert into msg(msg,chat_reg,sender,receiver,path) values ('file','1','$_SESSION[email]','$_SESSION[receiver]','$target_path')"))
   {
	$insert_id=mysqli_insert_id($con);
	header("location:search.php?request=1&receiver=$_SESSION[receiver]");
   }
} 
else
{
	echo "<script>alert('Error Uploading')</script>";
}
}
        $result=mysqli_query($con,"select * from profile_tb WHERE email!='$_SESSION[email]'");
		
		while($row=mysqli_fetch_array($result))
		{
         echo   "<h7 style='color:#FF0000;'>$row[fname] $row[lname]
				$row[email]  </h7>
						<br><a href='search.php?request=1&receiver=$row[email]'>Chat</a>
						<br><hr>
               
            ";
			
		}
         ?>  
         </div>
         </td></tr> 
         
        
         
           
           <tr><td></td></tr>
        </tbody>
    </table>
    </td><td>
    
<table align="center" width="400px"><tr><td width="300px">

<div class="continer well">
<h3>Upload FIle</h3>

 <form enctype="multipart/form-data" action="" method="post">   
<input name="uploadedfile" type="file"  /><br/>
<input type="submit" name="Submit"  value="Upload" class="btn btn-primary"/>
</form>
</div>
</td></tr>
   </table>
    </td>
    </tr>
    </table>
    </div>
 