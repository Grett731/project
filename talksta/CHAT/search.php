<?php
session_start();
error_reporting(0);


?> 
<script src="jquery-1.12.4.js"></script>
  <script src="jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="jquery.dataTables.min.css">

<script>

$(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#example tfoot2 th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#example').DataTable();
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
} );
</script>

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
         $query="select * from frd where ((frd_id='$_SESSION[user_id]')||(frd2_id='$_SESSION[user_id]')) AND status='Confirm'";
$res=mysqli_query($con,$query);
while($row=mysqli_fetch_array($res))
 {
	 $frd_id=$row['frd_id'];
	 if($frd_id==$_SESSION['user_id'])
	 {
	     $query2="select * from profile_tb where id='$row[frd2_id]'";
	 }
	 else
	 {
		 $query2="select * from profile_tb where id='$row[frd_id]'";
	 }
$res2=mysqli_query($con,$query2);
$row2=mysqli_fetch_array($res2);
         echo   "<h7 style='color:#FF0000;'>$row2[fname] $row2[lname]
				$row2[email]  </h7>
						<br><a href='?request=1&receiver=$row2[email]'>Chat</a>
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
    <?php
	include("chat_new.php");
	
	?>
    </td>
    </tr>
    </table>
    </div>