  <script src="jquery.min.js"></script>
<style>
.align2
{
text-align:center;	
}

</style>
<?php
//session_start();
if($_REQUEST['receiver']!="")
{
echo "<div class='container align2'><center>Login User::".$_SESSION['email'];
$_SESSION['receiver']=$_REQUEST['receiver'];
echo "<br>Chat Friend :".$_SESSION['receiver']."</center></div><br>";
?> 

<!--<script>
 
 function autoRefresh()
{
	window.location = window.location.href;
}
 
 setInterval('autoRefresh()', 5000); // this will reload page after every 5 secounds; Method I
</script>
-->

<script>
window.setInterval(function() {
  var elem = document.getElementById('data');
  elem.scrollTop = elem.scrollHeight;
}, 5000);
</script>

  
  
  <script>
 function autoRefresh_div()
 {
      $("#result").load("time.php");// a function which will load data from other file after x seconds
  }
 
  setInterval('autoRefresh_div()', 2000); // refresh div after 5 secs
            </script>

  
<br /><br />


<table align="center" width="400px"><tr><td width="300px">


<h3>Chat Bot</h3>
<div style="height:350px;overflow:auto;" id='data'>



<?php

include("chatconn.php");

?>



<div id="result">

<?php


?></div>







<script type="text/javascript">
$(function() {
$(".submit_button").click(function() {
var textcontent = $("#note-textarea").val();
var dataString = 'content='+ textcontent;

if(textcontent=='')
{
var textcontent = $("#note-textarea2").val();
var dataString = 'content='+ textcontent;
}

if(textcontent=='')
{
alert("Enter some text..");
$("#note-textarea").focus();
}
else
{
$("#flash").show();
$("#flash").fadeIn(100).html("<span class='load'><img src='loading.gif'></span>");
$.ajax({
type: "POST",
url: "porter.php",
data: dataString,
cache: false,
success: function(html){
$("#show").before(html);
document.getElementById('note-textarea').value='';
$("#flash").hide();
$("#note-textarea").focus();

document.getElementById('note-textarea').value = "";
}  

});
}
return false;
});
});
</script>










<div class="container">
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<div class="space"></div>

<div id="show"></div>
<div style="clear:both"></div>
<div id="flash"></div>

<div style="clear:both"></div>
<div class="main">


</div>

</div>
</div>



<form  method="post" name="form" action="" enctype="multipart/form-data">
<!--<textarea style="width:80%; font-size:14px; height:60px; font-weight:bold; resize:none;float:left;" name="content"  id="content22" ></textarea>-->

<input style="width:72%; font-size:14px; height:30px; font-weight:bold; resize:none;float:left;" name="content"  id="note-textarea" placeholder="type msg" >
<!--<input style="width:80%; font-size:14px; height:30px; font-weight:bold; resize:none;float:left;" name="content2" type="text" name="content22"  id="note-textarea" on"myFunction()" value='ee' placeholder="mic">
-->

<input type="image" src="send.png" value="Send" name="submit" class="submit_button" style="float:right;width:25px;"/>

        
</form>

<?php

/*  
  $result2 = mysql_query("SELECT count(*) as cc FROM msgt where weight>.15 order by weight desc ") 
or die(mysql_error());  


while($row2 = mysql_fetch_array( $result2 )) {
$cc=$row2['cc'];
 
}
*/


?>

<p id="demo"></p>
<script>
function myFunction() {
    var x = document.getElementById("note-textarea").value;
    document.getElementById("demo").innerHTML = "You wrote: " + x;
}
</script>

<?php
include("index.html");
?>
<br /><br /><br /><br /><br /><br />

</td></tr></table>

<?php
}
else
{
echo "<center><h3>Click On Chat Button To Start </h3><center>";	
}
?>