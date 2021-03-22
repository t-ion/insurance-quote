<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    
    
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/> 
    
    <link href="css/style.css" rel="stylesheet" type="text/css"/> 
     

    <title>Save Quotes</title>
    <script type="text/javascript">
//Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
// When the user clicks the button, open the modal 
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

function validate()
{
	var id=document.quotesDetails.id.value;
	var name=document.quotesDetails.name.value;
	var gender=document.quotesDetails.gender.value;
	var phoneNumber=document.quotesDetails.phoneNumber.value;
	var quoteAmount=document.quotesDetails.quoteAmount.value;
	
	var status=false;
	var letters= /^[A-Za-z]+$/;
	var phoneno = /^\d{10}$/;
	if(name===null || name==='' || !(name.match(letters)) ||name.length<=2)
	{
		console.log(name);
		document.getElementById("name").innerHTML="<b><p>Name cannot be empty or must be words</p></b>";
		status=false;
	}
	else if(gender===null || gender==='' || !(gender.match(letters)))
	{
		if(gender === ''){
		console.log(gender);
		document.getElementById("gender").innerHTML="<b><p>Gender cannot be empty </p></b>";
		status=false;
		}
		else
			{
			console.log(gender);
			document.getElementById("gender").innerHTML="<b><p>Gender must be sepicifeid in correct format</p></b>";
			status=false;
			}
	}
	else if(phoneNumber===null || phoneNumber==='' || !(phoneNumber.match(phoneno)))
	{
		if(phoneNumber==='')
			{
		console.log(phoneNumber);
		document.getElementById("phoneNumber").innerHTML="<b><p>Phone number can not be empty </p></b>";
		status=false;
			}
		else
			{
			console.log(phoneNumber);
			document.getElementById("phoneNumber").innerHTML="<b><p>Phone number must be in correct format</p></b>";
			status=false;
			}
	}
	else if(quoteAmount===null || quoteAmount==='')
	{
		console.log(quoteAmount);
		document.getElementById("quoteAmount").innerHTML="<b><p>Quote Amount cannot be empty</p></b>";
		status=false;
	}
	else if(id===null || id==='')
	{
		console.log(id);
		document.getElementById("id").innerHTML="<b><p>id cannot be empty</p></b>";
		status=false;
	}

	else
	{
		status=true;
	}
	return status;
}
</script>
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
                  <p>Contact US:9500619684</p>
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
<div class="div-center">

<form method="POST" action="save" model = "QuotesDetails" name="quotesDetails" onsubmit="return validate()">
    
            <div class="form-row">
              <h1>Create Policy</h1>
                <div class="form-group col-md-10">
                  <label for="userId"><b>UserId</b></label>
                  <input type="number" class="form-control" name="id"  >
                  <span class="text-danger" id="id"></span>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-10">
                  <label for="Name"><b>Name</b></label>
                  <input type="text" class="form-control"  name="name" >
                  <span class="text-danger" id="name"></span>
                </div>
        </div>
        <div class="form-row">
                <div class="form-group col-md-10">
                  <label for="dateOfBirth"><b>Date of Birth</b></label>
                 <input type="date" class="form-control" max="2002-12-31" name="dateOfBirth"  required>

                 </div>
        </div>
          <div class="form-row">
                <div class="form-group col-md-10">
                  <label for="gender"><b>Gender</b></label>
                  <input type="text" class="form-control"  name="gender" >
                  <span class="text-danger" id="gender"></span>
                </div>
        </div>
<div class="form-row">
                <div class="form-group col-md-10">
                  <label for="phoneNumber"><b>Phone Number</b></label>
                  <input type="text" class="form-control"  name="phoneNumber" >
                  <span class="text-danger" id="phoneNumber"></span>
                </div>
        </div>
<div class="form-row">
                <div class="form-group col-md-10">
                  <label for="quoteAmount"><b>Quote Amount</b></label>
                  <input type="number" class="form-control"  name="quoteAmount" >
                  <span class="text-danger" id="quoteAmount"></span>
                </div>
        </div>
        <div class="button">
            <div class="form-row">
                <div class="col-sm-10">
                  <button type="submit" class="btn btn-success">Save</button>

                </div>
            </div>
          </div>


        </form>
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
    <script>  
          $('#dateOfBirth').datepicker({  
            uiLibrary: 'bootstrap4',  
            format: 'dd/mm/yyyy'  
          });  
    </script>  

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
    
    .div-center {
  width: 400px;
  left: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  padding: 4em;
  display: table;
}


.div-button
{
   width: 400px;
  left: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  padding: 4em ;
  padding-left: 10em;
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
		color:#aa66cc;
		padding-left:10px;
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



</script>

</body>
<footer> 
  <p>© 2020-2021 </p>
</footer>
</html>