<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connect</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<style>
.bg-4 { 
    background-color: #66c2ff;
    color: #ffffff;
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
    
    <div class="jumbotron text-center" style ='background-color:#f2f2f2;'>
  <h1 style='color:#808080'>Connect</h1>
  <h2 style='color:#808080'>Get in contact with other patients</h2>
  </div>
    
<div class="container-fluid text-center">
  <div class="row" style ='background-color:#66c2ff;'>
    <div class="col-sm-1">
      </div>
      <div class="col-sm-7">
          <br>
           <div class="panel panel-default">
  <div class="panel-heading">Other Users</div>
  <div class="panel-body"><div class="list-group">
  <a href="#" class="list-group-item">There are currently no other users</a>
  <a href="#" class="list-group-item"></a>
  <a href="#" class="list-group-item"></a>
  <a href="#" class="list-group-item"></a> 
  <a href="#" class="list-group-item"></a> 
  <a href="#" class="list-group-item"></a>
  <a href="#" class="list-group-item"></a>
  <a href="#" class="list-group-item"></a> 
  <a href="#" class="list-group-item"></a> 
  <a href="#" class="list-group-item"></a>
   <a href="#" class="list-group-item"></a>
  <a href="#" class="list-group-item"></a> 
  <a href="#" class="list-group-item"></a> 
  <a href="#" class="list-group-item"></a>      
      
</div>
       </div>
</div>
          
      </div>
      <div class="col-sm-3">
          <br>
          <div class="container">
	<div class="row">
		<div class="col-lg-3 col-md-6 col-md-offset-3 col-lg-offset-0">
      <div class="well">
      <h3 align="center">Search Filter</h3>
        <form class="form-horizontal">
          <div class="form-group">
            <label for="location1" class="control-label">Country</label>
            <select class="form-control" name="" id="location1">
              <option value=""></option>
              <option value="">Canada</option>
              <option value="">India</option>
            </select>
          </div>
          <div class="form-group">
            <label for="type1" class="control-label">Type of Cancer</label>
            <select class="form-control" name="" id="type1">
              <option value=""></option>
              <option value=""></option>
              <option value=""></option>
            </select>
          </div>
          <div class="form-group">
            <label for="type1" class="control-label">Gender</label>
            <select class="form-control" name="" id="type1">
              <option value="">Male</option>
              <option value="">Female</option>
            </select>
          </div>
          <div class="form-group">
            <label for="type1" class="control-label">Age</label>
            <select class="form-control" name="" id="type1">
              <option value=""></option>
              <option value=""></option>
            </select>
          </div>
          <p class="text-center"><a href="#" class="btn btn-default glyphicon glyphicon-search" role="button"></a></p>
        </form>
      </div>
    </div>
	</div>
</div>
      </div>
      <div class="col-sm-1">
      </div>
        </div>
    </div>
    

<footer class="container-fluid bg-4 text-center">
  <p>COMP-4310/5413 Project 2018</p> 
</footer>  
    
</body>
</html>