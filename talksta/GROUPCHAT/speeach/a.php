<?php
@$submit = $_POST['process'];
@$word = $_POST['texttospeech'];

$voice = new COM("SAPI.SpVoice");

if($_SERVER["REQUEST_METHOD"] == "POST" and isset($submit) and !empty($word)){
	$voice->Speak($word);
}
?>