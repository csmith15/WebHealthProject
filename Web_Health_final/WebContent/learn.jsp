<!DOCTYPE html>
<html lang="en">
<head>
  <title>Learn</title>
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
    background-image: url("bg3.jpg");

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
        <div class="col-sm-2">
   </div>
        <div class="col-sm-8" style ='background-color:#f2f2f2;'> 
            <center><h1 style ='color:#808080;'>Learn</h1></center> 
            <center><h4 style ='color:#808080;'>Being diagnosed with cancer can be a truly terrifying experience but being educated  on the topic is an important part of easing those fears. Now this is far from a complete collection on the topic but we strive to provide enough information to get started as well as provide other useful sites to help. We also seek to constantly expand and improve our provided information</h4></center>
            
            <h3><u>What is cancer?</u></h3>
            <h4 style ='color:#808080;'>Cancer is a group of diseases involving abnormal cell growth with the potential to invade or spread to other parts of the body. These contrast with benign tumors, which do not spread to other parts of the body.</h4>
            
            <h3><u>How common is cancer?</u></h3>
            <h4 style ='color:#808080;'>About one-third of all people in Canada will develop cancer during their lifetimes.

                The risk of developing most types of cancer can be reduced by changes in a person’s lifestyle, for instance, by staying away from tobacco, avoiding too much alcohol, limiting time in the sun,  and being physically active and eating healthy foods.

                There are also screening tests that can be done for some types of cancers so they can be found as early as possible – while they are small and before they have spread. In general, the earlier a cancer is found and treated, the better the chances are for living for many years.</h4>
            
            <h3><u>Who gets cancer?</u></h3>
            <h4 style ='color:#808080;'>Over one and a half million new cancer cases are diagnosed each year. Anyone can get cancer at any age, but the risk goes up with age. Nearly 9 out of 10 cancers are diagnosed in people ages 50 and older. Cancer can be found in people of all racial and ethnic groups, but the rate of cancer occurrence (called the incidence rate) varies from group to group.</h4>
            
             <h3><u>What causes cancer?</u></h3>
            <h4 style ='color:#808080;'>Some cancers are caused by things people do or expose themselves to. For example, tobacco use can cause cancer of the lungs, mouth, throat, bladder, kidneys, and many other organs. Of course, not everyone who uses tobacco will get cancer, but it greatly increases a person’s risk. It increases their chance of developing heart and blood vessel disease, too.</h4>
            <h4 style ='color:#808080;'>Spending a lot of time in the sun without protection can cause skin cancer. Melanoma is a very serious form of skin cancer linked to UV light from the sun and tanning beds.</h4>
            <h4 style ='color:#808080;'>Radiation can cause cancer. For instance, people exposed to nuclear fallout have a higher cancer risk than those who were not exposed. Sometimes, radiation treatment for one type of cancer can cause another cancer to grow many years later. This is why doctors and dentists use the lowest possible doses of radiation for x-rays and scans (much lower than the doses used for cancer treatment).</h4>
            <h4 style ='color:#808080;'>Certain chemicals have been linked to cancer, too. Being exposed to or working with them can increase a person’s risk of cancer.</h4>
            
             <h3><u>Can cancer be prevented?</u></h3>
            <h4 style ='color:#808080;'>There’s no sure way to prevent cancer, but there are things you can do to help reduce your chances of getting it.</h4>
            
             <h3><u>How is cancer diagnosed?</u></h3>
            <h4 style ='color:#808080;'>A person’s signs and symptoms are not enough to know whether they have cancer. If your health care provider suspects cancer you will need more tests, such as x-rays, blood tests, or a biopsy. In most cases a biopsy is the only way to be sure whether cancer is present.

                To do a biopsy a piece of the lump (tumor) or abnormal area is taken out and sent to the lab. There, a doctor who specializes in diagnosing diseases (called a pathologist) looks at the cells under a microscope to see if cancer cells are present. If there are cancer cells, the doctor tries to figure out what type of cancer it is and how fast it’s likely to grow.

                Imaging tests can measure the size of the cancer and can often show if it has spread to nearby tissues. Blood tests can tell providers about your overall health, show how well your organs are working, and give information about blood cancers.</h4>
            
             <h3><u>Signs and symptoms?</u></h3>
            <h4 style ='color:#808080;'>Cancer is a group of diseases that can cause almost any sign or symptom. The signs and symptoms will depend on where the cancer is, how big it is, and how much it affects the organs or tissues. If a cancer has spread (metastasized), signs or symptoms may appear in different parts of the body.</h4>
            <h4 style ='color:#808080;'>As a cancer grows, it can begin to push on nearby organs, blood vessels, and nerves. This pressure causes some of the signs and symptoms of cancer. If the cancer is in a critical area, such as certain parts of the brain, even the smallest tumor can cause symptoms.</h4>
            <h4 style ='color:#808080;'>But sometimes cancer starts in places where it won’t cause any signs or symptoms until it has grown quite large. Cancers of the pancreas, for example, usually don’t cause symptoms until they grow large enough to press on nearby nerves or organs (this causes back or belly pain). Others may grow around the bile duct and block the flow of bile. This causes the eyes and skin to look yellow (jaundice). By the time a pancreatic cancer causes signs or symptoms like these, it’s usually in an advanced stage. This means it has grown and spread beyond the place it started – the pancreas.</h4>
            <h4 style ='color:#808080;'>A cancer may also cause symptoms like fever, extreme tiredness (fatigue), or weight loss. This may be because cancer cells use up much of the body’s energy supply, or they may release substances that change the way the body makes energy from food. Cancer can also cause the immune system to react in ways that produce these signs and symptoms.</h4>
            <h4 style ='color:#808080;'>Sometimes, cancer cells release substances into the bloodstream that cause symptoms that are not usually linked to cancer. For example, some cancers of the pancreas can release substances that cause blood clots in veins of the legs. Some lung cancers make hormone-like substances that raise blood calcium levels. This affects nerves and muscles, making the person feel weak and dizzy.</h4>
            
            <h3><u>What are the most common cancers?</u></h3>
            <h4 style ='color:#808080;'>1.Non-melanoma skin cancer</h4>
            <h4 style ='color:#808080;'>2.Lung Cancer</h4>
            <h4 style ='color:#808080;'>3.Breast Cancer</h4>
            <h4 style ='color:#808080;'>4.Prostate Cancer</h4>
            <h4 style ='color:#808080;'>5.Colorectal</h4>
            <h4 style ='color:#808080;'>6.Bladder</h4>
            <h4 style ='color:#808080;'>7.Melanoma</h4>
            <h4 style ='color:#808080;'>8.Non-hodgkin Lymphoma</h4>
            <h4 style ='color:#808080;'>9.Kidney Cancer</h4>
            <h4 style ='color:#808080;'>10.Leukemia</h4>
            
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
