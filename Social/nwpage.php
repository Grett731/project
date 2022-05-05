<html>
<body>
<form action="nwpageexe.php" method="post">
<input type="text" name="userid" placeholder="user id"><br><br>
<input type="text" name="pagename" placeholder="page name"><br><br>
<input type="submit" value="Create New Page"><br><br>


<?php
include("connectionclass.php");
$query="select * from page_tb ";
$res=mysqli_query($con,$query);
?>
<table>
  <tr>
  <th>ID</th>
   <th>USER ID</th>
    <th>PAGE NAME</th>
  </tr>
 <?php
while($row=mysqli_fetch_array($res))
{
  ?>
  <tr>
  <td><?php echo $row['id']; ?></td>
  <td><?php echo $row['userid']; ?></td>
  <td><?php echo $row['pagename']; ?></td>
  <td><a href="updatepg.php?id=<?php echo $row['id']; ?>">Edit</a></td>
   <td><a href="deletepg.php?id=<?php echo $row['id']; ?>">Delete</a></td>
  </tr>
<?php 
}?>
</table>
 