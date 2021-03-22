<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/> 
    <link href="css/style.css" rel="stylesheet" type="text/css"/> 
    <title>Azure Migration</title>
</head>


    <header>
<div id="headercontainer">
      <div class="col3">
        <img class="mainlogo" src="https://drive.google.com/thumbnail?id=1bsS_JaYsoGYpUh90rPlXUBUfri3Bt_Mz" height="80" width="80">

      </div>
      <div class="col2">
        <nav>
          <ul class="menu"  >
            
            <li><b><button id="myBtn">Help</button>

                  <!-- The Modal -->
                  <div id="myModal" class="modal">

                  <!-- Modal content -->
                  <div class="modal-content">
                  <span class="close">&times;</span>
                  <p>Contact US:9875621430</p>
                  <p>Drop Mail:xyz@gmail.com</p>
                  </div></b></li>



            

            

            <li><b><a href="create"> Save </a></b></li>
            


            <li><b><a href="enteruserid"> View </a></b></li>

          </ul>
        </nav>
      </div>




    </div>

</header>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/enterpolicy">View User Details</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler1"
            aria-controls="navbarToggler1" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        </div>
    </nav>
<table class="table table-hover">
	<thead class="table-primary">
		<th> Id</th>
		<th>Name</th>
		<th>Date Of Birth</th>
		<th>Gender</th>
		<th>Phone Number</th>
		<th>Quote Amount</th>
	</thead>
	<tbody>
	<tr>
				<td>${details.id}</td>
				<td>${details.name}</td>
				<td>${details.dateOfBirth}</td>
				<td>${details.gender}</td>
				<td>${details.phoneNumber}</td>
				<td>${details.quoteAmount}</td>
				
			</tr>
	</tbody>
</table>
	<div class="form-row">
                <div class="col-sm-10">
				
                  <div class="container">
  <a href="enteruserid" class="btn btn-info" role="button">Back</a>
                </div>
				
				</div>
            </div>
			
	
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>   

    <style>
        .material-icons {
            vertical-align: middle;
        }
		section{
		    float:left;
			width:60%;
			
			padding-left:10px;
		
			
		}
		.right{
		float:right;
			width:40%;
			padding-left:40px;
		
		}
		h5{
		color:purple;
		padding-left:20px;
		}



/*-----------------*/

header {
  height: 90px;
  background-color: #1a1a1a;
}
footer {
  height: 20px;
  background-color: #1a1a1a;
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   color: white;
   text-align: center;
}

#headercontainer {
  width: 75%;
  margin: auto;
}

.col3 {
  width: 30%;
  float: left;
  margin: auto;
}

.col2 {
  width: 50%;
  float: right;
  margin: auto;
}

.menu {
  margin-top: 30px;
  padding-right: 0px;
}


.menu li {
  list-style-type: none;
  display: inline;
  
  float: right;
  margin: 0 1.5%;
  width: 10%;
  font-size: 15px;
  padding-right:0px 15px;
}

/*pop-up*/
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float:right;
  font-size: 40px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

/*  pop -up*/

.black_overlay {
  display: none;
  position: absolute;
  top: 0%;
  left: 0%;
  width: 100%;
  height: 100%;
  background-color: black;
  z-index: 1001;
  -moz-opacity: 0.8;
  opacity: .80;
  filter: alpha(opacity=80);
}
.white_content {
  display: none;
  position: absolute;
  top: 25%;
  left: 25%;
  width: 50%;
  height: 50%;
  padding: 16px;
  border: 16px solid orange;
  background-color: white;
  z-index: 1002;
  overflow: auto;
}


body {
   
    color: #606468;
  font: 87.5%/1.5em 'Open Sans', sans-serif;
  margin: auto;
}

a {
  color: #eee;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

input {
  border: none;
  font-family: 'Open Sans', Arial, sans-serif;
  font-size: 14px;
  line-height: 1.5em;
  padding: 0;
  -webkit-appearance: none;
}

p {
  line-height: 1.5em;
}

h4 {
  color:red;
  font-size: 12px;
  float: right; 

}

.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}
section{
		    float:left;
			width:50%;
			left:0px;
			
		
			
		}
		.right{
		float:right;
			width:50%;
			
		
		}
		h1{
		color:purple;
		padding-left:20px;
		}



    </style>
<script>
// Get the modal
var modal = document.getElementById("myModal");

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
function myfun(){
document.getElementById("buttonId").value="Issued";
}


</script>

</body>
<footer> 
  <p>© 2020-2021 </p>
</footer>
</html>