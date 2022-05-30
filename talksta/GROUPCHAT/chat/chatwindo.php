<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
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


body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
#myBtn{
    width: 200px;
    height: 60px;
    background-color:#fff;
    margin:20px;
    color:#000;
    font-size:18px;
    font-weight: bolder;
    border: 1px solid #ccc; 
}
.modal {
    position: fixed;
    width: 200px;
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width:100%; /* Full width */
    height: 100%; /* Full height */
    z-index:1000;
  /*  background-color: #000;*/
    -webkit-animation-duration: 0.4s;
    animation-name: fadeIn;
    animation-duration: 0.4s
}

/* Modal Content */
.modal-header{
    color: #fff;
    font-size:17px;
}
.modal-content {
    margin-top: 300px;
    float: right;
    margin-left:65%;
    position: fixed;
    bottom: 0;
    overflow: auto;
    margin-bottom: 30px; 
    background-color: #fefefe;
    width:400px;
    -webkit-animation-name: slideIn;
    -webkit-animation-duration: 0.4s;
    animation-name: slideIn;
    animation-duration: 0.4s;
    z-index:1000;
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color:#fff;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #0270BF;
    color:#fff;
    font-size:18px;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
}

/* Add Animation */
@-webkit-keyframes slideIn {
    from {bottom: -300px; opacity: 0} 
    to {bottom: 0; opacity: 1}
}

@keyframes slideIn {
    from {bottom: -300px; opacity: 0}
    to {bottom: 0; opacity: 1}
}

@-webkit-keyframes fadeIn {
    from {opacity: 0} 
    to {opacity: 1}
}

@keyframes fadeIn {
    from {opacity: 0} 
    to {opacity: 1}
}
</style>
</head>
<body>



<!-- Trigger/Open The Modal -->
<button id="myBtn">Help Desk</button>

<!-- The Modal -->



<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
   
      <span class="close">&times;</span>
      <h2>Help Desk</h2>
    </div>


  <img src="google.png" class="img-responsive">

  

</div>
</div>

    



<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>