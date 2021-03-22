<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 

    <title>Azure Migration</title>
    <script type="text/javascript">
    	function validate()
    	{
    		var userId=document.enteruser.id.value;
    		if(userId===null || userId==='' || userId==='0')
    		{
    			document.getElementById("idError").innerHTML="<b><p>User Id cannot be empty or 0</p></b>";
    			return false;		
    		}
    		return true;
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
           



            

           


             <li><b><a href="create"> Save </a></b></li>
            


            <li><b><a href="enteruserid"> View </a></b></li>

          </ul>
        </nav>
      </div>




    </div>

</header>
<body>
<div class="container p-3">
     
    
        <form method="GET" action="view" model="UserViewer" onsubmit="return validate()" onsubmit="return validate()" name="enteruser">
		<h1>View Quotes</h1>
		
		<div class="form-row">
                <div class="form-group col-md-5">
                  <label for="userdetails"><b>Enter User Id</b></label>
                  <input type="number" class="form-control" name= "id" min=1 >
                  <span class="text text-danger" id="idError"></span>
                </div>
            </div>
			
			
			
			<div class="form-row">
                <div class="col-sm-10">
                  
<div class="container">
  <button type="submit" class="btn btn-primary" >Submit</button>
            </div>

  
 </form>
			
	
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
		  
		    function myFunction() {
                var p=0;
            
            }
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
			
			
		#hid{
		display:none;
			
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


.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

    </style>



</body>
<footer> 
  <p>© 2020-2021 </p>
</footer>
</html>