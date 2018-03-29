<!DOCTYPE html>
<html lang="en">
<head>
  <title>Main Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<style>
.bg-4 { 
    background-color: #66c2ff;
    color: #ffffff;
}
    
.jumbotron { 
    background-color: #66c2ff;
    color: #ffffff;
    
}

.logo-small {
    color: #66c2ff;
    font-size: 50px;
}
    
html {
  height: 100%;
}
body {
  min-height: 100%;
}

.bg {
    /* The image used */
    background-image: url("bg1.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
      
</style>
        
<link rel="stylesheet" href="styles.css">
    
</head>

    
<body> <!-- Start of main page code -->

<div class="bg"> 
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
  
  <div class="jumbotron text-center">
  <h1>Explore</h1>
  <h2>Navigate the site and see what we have to offer</h2>
  </div>
   
    <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-10">
<div class="container-fluid text-center" style ='background-color:#f2f2f2; padding:40px;' >
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-user logo-small"></span>
      <h3 style="color:#808080;">User Profile</h3>
      <p style="color:#808080;">Detail and display information about yourself</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-calendar logo-small"></span>
      <h3 style="color:#808080;">Schedule</h3>
      <p style="color:#808080;">A personal calendar to track important dates</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-link logo-small"></span>
      <h3 style="color:#808080;">Connect</h3>
      <p style="color:#808080;">Connect with other users and interact</p>
    </div>
    </div>
    <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-list-alt logo-small"></span>
      <h3 style="color:#808080;">Message Boards</h3>
      <p style="color:#808080;">See what others are saying</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-book logo-small"></span>
      <h3 style="color:#808080;">Learn</h3>
      <p style="color:#808080;">Further your knowledge and understanding of cancer</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h3 style="color:#808080;">Coming Soon</h3>
      <p style="color:#808080;">New and useful sections to come in the future</p>
    </div>
  </div>
</div><br> 
        </div>
   <div class="col-sm-1"></div>
    </div>
    
<div class="container-fluid" style ='background-color:#f2f2f2;'>
  <h2 class="text-center" style="color:#808080;">CONTACT US</h2>
  <div class="row">
    <div class="col-sm-5">
        <h4 style="color:#808080;"><br><center>Should you have any concerns, suggestions or simply wish to express your feelings about the site please don't hesitate to contact us. We strive to view and respond to your messages as soon as possible.</center></h4>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-4 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-4 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
       <div class="col-sm-8"> 
      <textarea class="form-control" id="comments" name="comments" placeholder="Message" rows="5" cols="100"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
        </div>  
    </div>
  </div>
</div>
    
<div class="container-fluid bg-3" style ='background-color:#f2f2f2;'> 
   <div class="row"> 
       <div class="col-sm-2">
   </div>
       <div class="col-sm-8">
           <h3 class="text-center" style="color:#808080;"><u>About the Developers</u></h3> 
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Connor</a></li>
  <li><a data-toggle="tab" href="#menu1">Jasminder</a></li>
  <li><a data-toggle="tab" href="#menu2">Jafar</a></li>
</ul><br><br>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <h2 style="color:#808080;">Connor Smith</h2>
    <p style="color:#808080;">Connor Smith is a third year Computer Science student at Lakehead University who was born and raised in Dryden Ontario.</p>
  </div>
  <div id="menu1" class="tab-pane fade">
    <h2 style="color:#808080;">Jasminder Singh Issar</h2>
    <p style="color:#808080;"></p>
  </div>
  <div id="menu2" class="tab-pane fade">
    <h2 style="color:#808080;">Jafar Alqallaf</h2>
    <p style="color:#808080;"></p>
  </div>
</div>
       </div>
   <div class="col-sm-2">
   </div>
    </div>
    </div>     
    
    </div>      
<footer class="container-fluid bg-4 text-center">
  <p>COMP-4310/5413 Project 2018</p> 
</footer>  
    
</body>
</html>
