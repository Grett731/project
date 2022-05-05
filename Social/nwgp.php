<html>
<body>
<form action="nwgpexe.php" method="post">
<input type="text" name="userid" placeholder="user id"><br><br>
<input type="text" name="grpname" placeholder="grp name"><br><br>
<input type="submit" value="Create Group"><br><br>


<?php
include("connectionclass.php");
$query="select * from group_tb ";
$res=mysqli_query($con,$query);
?>
<table>
  <tr>
  <th>ID</th>
   <th>USER ID</th>
   <th>GROUP NAME</th>
  </tr>
 <?php
while($row=mysqli_fetch_array($res))
{
  ?>
  <tr>
  <td><?php echo $row['id']; ?></td>
  <td><?php echo $row['userid']; ?></td>
  <td><?php echo $row['grpname']; ?></td>
  <td><a href="updategp.php?id=<?php echo $row['id']; ?>">edit</a></td>
    <td><a href="deletegp.php?id=<?php echo $row['id']; ?>">delete</a></td>>
  </tr>
<?php 
}?>
</table>
 </form>
 </body>
 </html>