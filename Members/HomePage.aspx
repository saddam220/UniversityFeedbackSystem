<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Practice.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~\bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="~\bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="~\bootstrap/dist/js/jquery.min.js"></script>
    <script src="~\bootstrap/dist/js/bootstrap.bundle.min.js"></script>
   <script src="https://code.jquery.com/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  
    <!--Carousel-->
     <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron jumbotron-fluid" style="height:120px;">
  <div class="container">
    <h2 style="margin-top:-20px;">University Feedback System</h2>      
    <p><h5>University Feedback System is to Assess & Evauluate Teachers Performance as well as Students Performance. </h5></p>
  </div>
        </div>

       <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top:-25px;">
  <a class="navbar-brand" href="#">|Information|</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
           

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">HomePage |<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Contact |</a>
      </li>
         <li class="nav-item active">
        <a class="nav-link" href="#">Details |</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:red;" >
          Login
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Login.aspx">Login As Member</a>
          <a class="dropdown-item" href="/AdminLogin.aspx">Login As Admin</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Assessment</a>
        </div>
      </li>
      
    </ul>
      </div>
           </nav>
  

        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:-15px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="/image\c.jpg" alt="Los Angeles" style="width:100%; height:100%;">
        <div class="carousel-caption">
          <h3>Feedback System!</h3>
          <p>Assessment</p>
        </div>
      </div>

      <div class="item">
        <img src="/image\d.jpg" alt="Chicago" style="width:100%; height:100%;">
        <div class="carousel-caption">
          <h3>Feedback System!</h3>
          <p>Assessment</p>
        </div>
      </div>
    
    
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
    </form>

    <!--Carousel-->  
  
  
  
    
</body>
</html>
