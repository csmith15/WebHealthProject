<!DOCTYPE html>
<html lang="en">
<head>
  <title>Profile</title>
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

</style>
        
<link rel="stylesheet" href="styles.css">
    
</head>

    
<body> <!-- Start of main page code -->

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">Cancer Connect</a>
    </div>
    <ul class="nav navbar-nav">
		<form name="form" action="LoginServlet" method="post">
      <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;'>Home</button>
    


    </ul>
    <ul class="nav navbar-nav">
     </form>      
      <form name="form" action="scheduleServlet" method="post">
      <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;'>Schedule</button>
      </form>
     
    </ul>
     </ul>
    <ul class="nav navbar-nav">
          <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;' onclick="location.href = 'Connect.jsp';">Connect</button>
      <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;' onclick="location.href = 'mboards.jsp';">Boards</button>
      <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;' onclick="location.href = 'learn.jsp';">Learn</button>
     
    </ul>
    </ul>
      <ul class="nav navbar-nav navbar-right">
      <form name="form" action="Login.jsp" method="post">
      <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;'>Logout</button>
      </form>
    </ul>
       <ul class="nav navbar-nav navbar-right">
       <form name="form" action="main_page" method="post">
      <button id="submit" name="submit" class="btn btn-default navbar-btn" style='color:#66c2ff;'>My Profile</button>
      </form>
    </ul>
  
    <ul class="nav navbar-nav navbar-right">
       <button id="submit" name="submit" class="btn btn-default navbar-btn glyphicon-envelope" style='color:#66c2ff;'>Messages</button>
    </ul>
  
  </div>
</nav>
    

<div class="container-fluid text-center">
  <div class="row" style ='background-color:#66c2ff;'>
    <div class="col-sm-1">
      </div>
     <div class="col-sm-6">
         <h3 class="text-left" style="color:#ffffff;">First Name : 
           <% out.print((request.getAttribute("fname").toString()));%></h3>
           <h3 class="text-left" style="color:#ffffff;">Last Name : 
           <% out.print((request.getAttribute("lname").toString()));%></h3>
        <h3 class="text-left" style="color:#ffffff;">Birthday : <% out.print((request.getAttribute("birthday").toString()));%></h3>
        <h3 class="text-left" style="color:#ffffff;">Age : <% out.print((request.getAttribute("age").toString()));%></h3>
         <h3 class="text-left" style="color:#ffffff;">Country : <% out.print((request.getAttribute("country").toString()));%></h3>
         <h3 class="text-left" style="color:#ffffff;">City : <% out.print((request.getAttribute("city").toString()));%></h3>
         <h3 class="text-left" style="color:#ffffff;">Type of Cancer : <% out.print((request.getAttribute("type").toString()));%></h3>
         <!-- <h3 class="text-left" style="color:#ffffff;">Hobbies : <% out.print((request.getAttribute("hobbies").toString()));%></h3> -->
      </div>
      <div class="col-sm-4">
          <div class="">
              <p></p>
              <button type="button" class="btn btn-default pull-right"><span class="glyphicon glyphicon-cog"></span> Edit</button>
              <p></p><br><br>
         <img src="ukuser3.jpg" class="img-rounded">
          </div>  
      </div>
      </div>
      <div class="col-sm-1">
      </div>
    </div>
  <div class="row" style ='background-color:#66c2ff;'>
        <div class="col-sm-1">
      </div>
      <div class="col-sm-10">
          <div class="form-group">
    <h3 style ='color:#ffffff;'><strong>Bio:</strong></h3>          
    <textarea class="form-control" rows="10" id="comment"><% out.print((request.getAttribute("bio").toString()));%></textarea>
</div>
      </div>
    </div>
 
    
<footer class="container-fluid bg-4 text-center">
  <p>COMP-4310/5413 Project 2018</p> 
</footer>  
    
    
   

</body>
</html>
