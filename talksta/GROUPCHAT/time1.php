<?php
session_start();
//$_SESSION['reg_no']="14153015";

?>

  
  <style>

.container {
   
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 5px;
    margin: 5px 0;
}

.darker2 {
   
    background-color: #FDCCDD;
	width:80%;
	float:left;
}



.darker {
    
    background-color: #E1F8FF;
	width:80%;
	float:right;
}

.container::after {
    content: "";
    clear: both;
    display: table;
}

.container img {
    float: left;
    max-width: 60px;
    width: 100%;
    margin-right: 20px;
    border-radius: 50%;
}

.container img.right {
    float: right;
    margin-left: 20px;
    margin-right:0;
}

.time-right {
    float: right;
    color: #aaa;
}

.time-left {
    float: left;
    color: #999;
}

</style>

<?php
error_reporting(0);














echo date("Y-m-d h:i:s");
//
//similar_text("Hello World","Hello World",$percent);
//echo $percent;
$flag=0;

include("chatconn.php");


$data=$_POST['content'];

//mysql_query("insert into msg(msg,chat_reg) values ('$data','$_SESSION[reg_no]')");

$result22=mysql_query("select * from msg where (sender='$_SESSION[email]' or receiver='$_SESSION[email]') or (sender='$_SESSION[receiver]' or receiver='$_SESSION[receiver]')");
while($row22=mysql_fetch_array($result22))
{
	
	//echo " $row22[msg] <br> ";
	$datetime=$row22['datetime'];
	$sender=$row22['sender'];
	if($_SESSION['email']==$row22['sender'])
	{
	
 if($row22['path']!="")
 {
	 $file=$row22['path'];
	 $ff=explode(".",$file);
	 if($ff[1]=="jpg" || $ff[1]=="gif" || $ff[1]=="PNG" || $ff[1]=="png" || $ff[1]=="JPG" )
	 {
		$code=$code. "<div class='container darker'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p> $row22[msg]  </p><br><img src='$file' height='100' height='140'><br>
  
  <span class='time-right'>$datetime <br>$sender</span>
</div>";
	 }
	 elseif($ff[1]=="mp4" || $ff[1]=="ogg")
	 {
		 
		 $code=$code. "<div class='container darker'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p> $row22[msg]  </p><br>
  <video width='100' height='140' controls>
  <source src='$file' type='video/mp4'>
  <source src='$file' type='video/ogg'>
Your browser does not support the video tag.
</video> 
<br>
  
  <span class='time-right'>$datetime <br>$sender</span>
</div>";
		
	 }
	  elseif($ff[1]=="mp3")
	 {
		 $code=$code. "<div class='container darker'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p> $row22[msg]  </p><br> <audio controls>
  <source src='$file' type='audio/ogg'>
  <source src='$file' type='audio/mpeg'>
Your browser does not support the audio element.
</audio>  
  
  <span class='time-right'>$datetime <br>$sender</span>
</div>"; 
	 }
	  elseif($ff[1]=="pdf")
	 {
		  $code=$code. "<div class='container darker'>
  <img src='user.jpg' alt='Avatar' style='width:100%;'>
  <p> $row22[msg]  </p><br> 
		  <a href='$file' download> Click here</a> 
		   <span class='time-right'>$datetime <br>$sender</span>
</div>";
	 }
 
 }
  
  
  
  
	}
	else
	{

  
  
 if($row22['path']!="")
 {
	 $file=$row22['path'];
	 $ff=explode(".",$file);
	 if($ff[1]=="jpg" || $ff[1]=="gif" || $ff[1]=="PNG" || $ff[1]=="png" || $ff[1]=="JPG" )
	 {
		 $code=$code."<div class='container darker2'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p> $row22[msg]</p> <br><img src='$file' height='100' height='140'>
  <br>
  <span class='time-left'>$datetime <br>$sender</span>
</div>";
	 }
	 elseif($ff[1]=="mp4" || $ff[1]=="ogg")
	 {
		 
		  $code=$code."<div class='container darker2'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p> $row22[msg]</p> <br> <video width='100' height='140' controls>
  <source src='$file' type='video/mp4'>
  <source src='$file' type='video/ogg'>
Your browser does not support the video tag.
</video>
  <br>
  <span class='time-left'>$datetime <br>$sender</span>
</div>";
	 }
	  elseif($ff[1]=="mp3")
	 {
		 
		  $code=$code."<div class='container darker2'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p> $row22[msg]</p> <br>  <audio controls>
  <source src='$file' type='audio/ogg'>
  <source src='$file' type='audio/mpeg'>
Your browser does not support the audio element.
</audio> 
  <br>
  <span class='time-left'>$datetime <br>$sender</span>
</div>";
		
	 }
	  elseif($ff[1]=="pdf")
	 {
		 
		 
		  $code=$code."<div class='container darker2'>
  <img src='user2.jpg' alt='Avatar' class='right' style='width:100%;'>
  <p> $row22[msg]</p> <br>  <a href='$file' download> Click here</a> 
  <br>
  <span class='time-left'>$datetime <br>$sender</span>
</div>";
		
	 }
 
 }
  
  
  
  
	}
	
	
}





 
?>
















<div class="showbox"> <div class='bot'>











<?php echo $code ?></div> </div>