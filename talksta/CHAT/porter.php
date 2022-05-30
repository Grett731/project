<?php
session_start();
//$_SESSION['reg_no']="14153015";

?>



<?php
error_reporting(0);
include("chatconn.php");


$data="";
$SdataC="";
$datacount="";
$val=0;
//mysql_query("update msgt set weight='0'  ") 
//or die(mysql_error());



     // Open the file and returns a file pointer resource. 
    
     // Returns the read string.
    $contents = $_POST['content'];
     // Close the opened file pointer.
 
	
	
    # the key should be random binary, use scrypt, bcrypt or PBKDF2 to
    # convert a string into a key
    # key is specified using hexadecimal
    $key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    # show key size use either 16, 24 or 32 byte keys for AES-128, 192
    # and 256 respectively
    $key_size =  strlen($key);
    //echo "Key size: " . $key_size . "\n";
	//echo "orginal".$contents."<br>";
 #--- ENCRYPTION ---	

    # create a random IV to use with CBC encoding
    $iv_size = mcrypt_get_iv_size(MCRYPT_BLOWFISH, MCRYPT_MODE_CBC);
    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    
    # creates a cipher text 
    # to keep the text confidential 
    # only suitable for encoded input that never ends with value 00h
    # (because of default zero padding)
    $ciphertext = mcrypt_encrypt(MCRYPT_BLOWFISH, $key,
                                 $contents, MCRYPT_MODE_CBC, $iv);

    # prepend the IV for it to be available for decryption
    $ciphertext = $iv . $ciphertext;
    
    # encode the resulting cipher text so it can be represented by a string
    $ciphertext_base64 = base64_encode($ciphertext);

	
	//echo "Encript".$ciphertext_base64."<br>";
	
	
 #





$data=$ciphertext_base64;



//echo "OBJ :: ".$_SESSION['obj'];
//$_SESSION['obj']=$obj;


mysql_query("insert into msg(msg,sender,receiver) values ('$data','$_SESSION[email]','$_SESSION[receiver]')");
$insert_id=mysql_insert_id();

  
    






  
  
  
?>