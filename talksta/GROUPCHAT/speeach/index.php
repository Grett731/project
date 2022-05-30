
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="robots" content="noindex, nofollow">
		<title>PHP Text to Speech</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="img/fav.png" type="image/png">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body onload="startTime()">
	
        <?php
		
@$submit = $_POST['process'];
@$word = $_POST['texttospeech'];
//@$word = "hello";
$voice = new COM("SAPI.SpVoice");

if($_SERVER["REQUEST_METHOD"] == "POST" or isset($submit ) and !empty($word)){
	$voice->Speak($word);
}





		?>
		<div class="topmost">
			<div class="col-md-12">
				<div class="panel panel-primary">
					
					<div class="panel-body">
					
						<form  method="post">
							<input type="hidden" name="texttospeech" value="<?php echo $_REQUEST['msg']?>">
							<button type="submit" name="process" class="btn btn-danger btn-block">Speek</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/script.js"></script>
	</body>


</html>
