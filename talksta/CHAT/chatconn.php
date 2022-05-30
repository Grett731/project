<?php

$conn = mysql_connect('localhost','root','') or die (mysql_error);
$db=mysql_select_db('talksta', $conn) or die (mysql_error);

?>