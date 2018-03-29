<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<style>
.bg-4 { 
    background-color: #66c2ff;
    color: #ffffff;
}

    
html {
  height: 100%;
}
body {
  min-height: 100%;
    
}
    
.bg {
    /* The image used */
    background-image: url("bg2.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}    
    
</style>
    
    <link rel="stylesheet" href="styles.css">
    
    <script type="text/javascript">
	function validate() {
		//debugger;
		var password = document.getElementById("password")
		var confirm_password = document.getElementById("pwdcf");

		  if(password.value != confirm_password.value) {
		    confirm_password.setCustomValidity("Passwords Don't Match");
		    return false;
		  } else {
		    confirm_password.setCustomValidity('');
		  
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
		
	}
</script>
    
    
</head>

<body> <!-- Start of main page code -->
 
<div class="bg">     
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">Cancer Connect</a>
    </div>  
  </div>
</nav><br><br><br><br><br>
    

    
<div class="container-fluid bg-3"> 
   <div class="row"> 
       <div class="col-sm-4">
   </div>
   <div class="container-fluid">   
       <div class="col-sm-4"  style ='background-color:#66c2ff; padding:40px;'>
           <h2 style="color:#ffffff;"><center>Welcome Back</center></h2>
           <form action="LoginServlet" method="post">
           <div class="form-group">
           
  <label for="usr" style="color:#ffffff;">Email Address:</label>
  <input type="text" class="form-control" name="usr" required>
           </div>
           <div class="form-group">
    <label for="pwd" style="color:#ffffff;">Password:</label>
    <input type="password" class="form-control" name="pwd" required>
           </div>
           
          <div class="btn-group">
          <button id="submit" name="submit" class="btn btn-default">Login</button>
           <!-- <a class="btn btn-default" role="button">Login</a> -->
           </form>
           <a href="register.jsp" class="btn btn-default" role="button">Register</a>
           </div>
           
   </div>
       </div>
       <div class="col-sm-4">
   </div> 
    </div>     
    </div><br><br><br><br><br>    
       
    <div class="container-fluid" style ='background-color:#f2f2f2;'>
  <div class="row">
      <h2 style="color:#808080;"><center><u>Our Goal</u></center></h2>
      <h4 style="color:#808080;"><center>Our goal with this project and the site as a whole is to develop a web community and support tool for those who are battling or recovering from cancer. With it we hope to provide numerous tools that will prove useful in assisting the day to day management of their life as well as provide useful information. More importantly to provide support in the form of others in the same situation who can provide advice, experiences and simply listen</center></h4> 
      <h4 style="color:#808080;"><strong><center>In this small way we hope to assist in aiding those who need it</center></strong></h4>  
  </div>
</div>



</div>


<footer class="container-fluid bg-4 text-center">
  <p>COMP-4310/5413 Project 2018</p> 
</footer>  
    
</body>
</html>