<!DOCTYPE html>
<html lang="en">
<head>
  <title>Schedule</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<style>
.bg-4 { 
    background-color: #66c2ff;
    color: #ffffff;
    
}
.well-block {
    background-color: #66c2ff;
    border: 1px solid #e9e6e8;
    padding: 40px;
}

.well-title {
    margin-bottom: 40px;
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
    
 <div class="container" >
            <div class="row">
                <div class="col-md-6">
                    <div class="well-block">
                        <div class="well-title">
                            <h2 style="color:#ffffff;">Appointments</h2>
                        </div>
                        <form name="form" action="scheduleServlet2" method="post">
                            <!-- Form start -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="name" style="color:#ffffff;">Title</label>
                                        <input id="name" name="title" type="text" placeholder="" class="form-control input-md">
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="email" style="color:#ffffff;">Purpose</label>
                                        <input id="email" name="purpose" type="text" placeholder="" class="form-control input-md">
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="date" style="color:#ffffff;">Date</label>
                                        <input id="date" name="date" type="text" placeholder="dd/mm/yy" class="form-control input-md">
                                    </div>
                                </div>
                                <!-- Select Basic -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="time" style="color:#ffffff;">Time</label>
                                        <select id="time" name="time" class="form-control">
                                            <option value="8:00 to 9:00">8:00 to 9:00</option>
                                            <option value="9:00 to 10:00">9:00 to 10:00</option>
                                            <option value="10:00 to 11:00">10:00 to 11:00</option>
                                            <option value="11:00 to 12:00">11:00 to 12:00</option>
                                            <option value="12:00 to 13:00">12:00 to 13:00</option>
                                            <option value="13:00 to 14:00">13:00 to 14:00</option>
                                            <option value="14:00 to 15:00">14:00 to 15:00</option>
                                            <option value="15:00 to 16:00">15:00 to 16:00</option>
                                            <option value="16:00 to 17:00">16:00 to 17:00</option>
                                            
                                        </select>
                                    </div>
                                </div>
                    
      
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button id="singlebutton" name="singlebutton" class="btn btn-default" value="scheduleServlet2">Save Appointment</button>
                                    </div>
                                </div>
                            </div>
                        </form>
          <!-- form end -->
                    </div>
                </div>
                <div class="col-md-6">
                    <br><br>
                    
                   <table class="table table-bordered table-style table-responsive">
          <tr>
            <th colspan="2"><a href="?ym=<?php echo $prev; ?>"><span class="glyphicon glyphicon-chevron-left"></span></a></th>
            <th colspan="3"> Jan - 2018<!--?php echo $html_title; ?--></th>
            <th colspan="2"><a href="?ym=<?php echo $next; ?>"><span class="glyphicon glyphicon-chevron-right"></span></a></th>
          </tr>
          <tr>
            <th>S</th>
            <th>M</th>
            <th>T</th>
            <th>W</th>
            <th>T</th>
            <th>F</th>
            <th>S</th>
          </tr>
          <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
          </tr>
          <tr>
            <td>8</td>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td class="today">12</td>
            <td>13</td>
            <td>14</td>
          </tr>
          <tr>
            <td>15</td>
            <td>16</td>
            <td>17</td>
            <td>18</td>
            <td>19</td>
            <td>20</td>
            <td>21</td>
          </tr>
           <tr>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>25</td>
            <td>26</td>
            <td>27</td>
            <td>28</td>
          </tr>
            <tr>
            <td>29</td>
            <td>30</td>
            <td>31</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          
          <!--?php
            foreach ($weeks as $week) {
              echo $week;
            };
          ?-->
        </table>  
                    
                    
                    
                </div>
                </div>
            </div><br>
<div class="row" style ='background-color:#ffffff;'>
    <div class="col-sm-1">
    </div>
   <div class="col-sm-10">
       <br>
   <div class="panel panel-default">
  <div class="panel-heading">Saved Appointments</div>
  <div class="panel-body"><div class="list-group">
  <!-- <h4 class="list-group-item" style="white-space: pre;"> -->
<a href="#" class="list-group-item" style="white-space: pre;">
<% 
if (request.getAttribute("title")==null){
	out.print("No Saved Appointments");
}
else {
	 out.print((request.getAttribute("title").toString()));
	 out.print("\t\t\t");
		out.print((request.getAttribute("purpose").toString()));
		out.print("\t\t\t");
		out.print((request.getAttribute("date").toString()));
		out.print("\t\t\t");
		 out.print((request.getAttribute("time").toString()));
}
  %>
  </a>
  
</div>
       </div>
</div>
    </div>
   <div class="col-sm-1">
    </div>  
    </div>  

<footer class="container-fluid bg-4 text-center">
  <p>COMP-4310/5413 Project 2018</p> 
</footer>  
    
</body>
</html>