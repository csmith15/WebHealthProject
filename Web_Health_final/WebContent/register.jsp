<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<style>

html {
  height: 100%;
}
body {
  min-height: 100%;
}
       
</style>
    
    <link rel="stylesheet" href="styles.css">
    
       
</head>

<body> <!-- Start of main page code -->
 


<div class="container-fluid bg-3" style ='background-color:#66c2ff;'>    
<div class="container-fluid bg-3" style ='background-color:#f2f2f2; padding:40px;'>
   <div class="row"> 
       <div class="col-sm-4">
   </div>
   <div class="container-fluid">
      <div class="col-sm-4" style ='background-color:#66c2ff;'>
                <h2 style="color:#ffffff;">Registration</h2>
           <form name="form" action="registerServlet" method="post">
           <div class="form-group">
           
  <label for="email" style="color:#ffffff;">Email:</label>
  <input type="text" class="form-control" name="email" required>
           </div>
           <div class="form-group">
    <label for="pwd" style="color:#ffffff;">Password:</label>
    <input type="password" class="form-control" name="pwd" id="passwor" required>
           </div>
          <div class="form-group">
    <label for="pwd" style="color:#ffffff;">Confirm Password:</label>
    <input type="password" class="form-control" id="pwdcf" required>
           </div>
          <div class="form-group">
  <label for="email" style="color:#ffffff;">First Name:</label>
  <input type="text" class="form-control" name="fname" required>
           </div>
          <div class="form-group">
  <label for="email" style="color:#ffffff;">Last Name:</label>
  <input type="text" class="form-control" name="lname" required>
           </div>
              <div class="form-group">
  <label for="email" style="color:#ffffff;">Type of Cancer:</label>
  <input type="text" class="form-control" name="type" required>
           </div>
              <div class="form-group">
  <label for="email" style="color:#ffffff;">Age(Optional):</label>
  <input type="text" class="form-control" name="age">
           </div>
              <div class="form-group">
  <label for="email" style="color:#ffffff;">Birthday(month, date, year)(Optional):</label>
  <input type="text" class="form-control" name="bday">
           </div>
              <div class="form-group">
  <label for="email" style="color:#ffffff;">Country(optional):</label>
  <input type="text" class="form-control" name="country">
           </div>
              <div class="form-group">
  <label for="email" style="color:#ffffff;">City(Optional):</label>
  <input type="text" class="form-control" name="city">
           </div>
          
           <button id="submit" name="submit" class="btn btn-default">Register</button>
           </form>
          <p></p>
          
   </div>
       </div>
       <div class="col-sm-4">
   </div> 
    </div>
    </div>
    </div>

    
</body>
</html>