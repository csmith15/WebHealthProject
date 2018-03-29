<!DOCTYPE html>
<html lang="en">
<head>
  <title>Message Boards</title>
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
    background-image: url("");

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
    
    <div class="container-fluid bg-3">
         <div class="jumbotron text-center">
             <h1>See what others are saying</h1>
              <a class="twitter-timeline"  href="https://twitter.com/hashtag/CancerTreatment" data-widget-id="978899391951011841">#CancerTreatment Tweets</a>
            <script>
            !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
            </script>
          
  </a>
  </div>
        <div class="col-sm-2">
   </div>
        <div class="col-sm-8" style ='background-color:#f2f2f2;'>
            
            <div class="panel panel-default">
                <center><div class="panel-heading">Message Board</div></center>
  <div class="panel-body"><div class="list-group">
  <a href="#" class="list-group-item">
  
  </a>
      <br>
      <form>
      <div class="form-group">
    <input class="form-control input-lg" id="inputlg" type="text">
  </div>
      </form>
      <button type="button" class="btn">Submit</button>
</div>
       </div>
</div>
        
        </div>
             <div class="col-sm-2">
   </div>
    </div>
   
    
    </div>      
<footer class="container-fluid bg-4 text-center">
  <p>COMP-4310/5413 Project 2018</p> 
</footer>  
    
</body>
</html>
