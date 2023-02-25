<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Practice.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/simple-sidebar.css" rel="stylesheet" />
     <script src="vendor/jquery/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
  <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading"><b>Feedback System</b></div>
      <div class="list-group list-group-flush">
           <div class=" list-group-item list-group-item-action bg-light"><a href="#" class="card-link" style="color:black;">Dashboard</a>
		
			</div>
		</div>
          
          <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#a"><a href="#" class="card-link" style="color:black;">Master Entry<span class="badge badge-light float-right bg-success">6</span></a>
			<div class="collapse" id="a">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="AddFaculty.aspx" class="card-link text-dark">Faculty</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="AddTeacher.aspx" class="card-link text-dark">Teacher</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="AddSubject.aspx" class="card-link text-dark">Subject</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="AddSemester.aspx" class="card-link text-dark">Semester</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="AddSession.aspx" class="card-link text-dark">Session</a></div>
		        <div class="list-group-item list-group-item-action bg-light border-0"><a href="Feild.aspx" class="card-link text-dark">Feild</a></div>
			</div>
		</div>
         <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#h"><a href="#" class="card-link" style="color:black;">Question<span class="badge badge-light float-right bg-success">2</span></a>
			<div class="collapse" id="h">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="AddQuestion.aspx" class="card-link text-dark">Add</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="ViewQuestion.aspx" class="card-link text-dark">View</a></div>
			</div>
		</div>
          
          <div class=" list-group-item list-group-item-action bg-light disabled" data-toggle="collapse" data-target="#b"><a href="#" class="card-link text-black-50" style="color:black;"><span class="badge badge-light float-right bg-success">2</span>Student</a>
			<div class="collapse" id="b">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="StudentToTeacher.aspx" class="card-link text-dark">Student to teacher</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="StudentToUniversity.aspx" class="card-link text-dark">Student to university</a></div>
		
			</div>
		</div>
          <div class=" list-group-item list-group-item-action bg-light disabled" data-toggle="collapse" data-target="#c"><a href="#" class="card-link text-black-50" style="color:black;"><span class="badge badge-light float-right bg-success disabled">2</span>Teacher</a>
			<div class="collapse" id="c">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Teacher to student</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Teacher to university</a></div>
		
			</div>
		</div>
           <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#d"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">3</span>Reports</a>
			<div class="collapse" id="d">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Feedback Report</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Rating Report</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Users Report</a></div>
                
		
			</div>
		</div>
      <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#f"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">4</span>View Detail</a>
			<div class="collapse" id="f">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="ViewUser.aspx" class="card-link text-dark">View Users</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="FeedbackView.aspx" class="card-link text-dark">Feedback View</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="RatingView.aspx" class="card-link text-dark">Rating View</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="ListOf.aspx" class="card-link text-dark">Analysis</a></div>
			</div>
         
		</div>
           <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#e"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">2</span>User Manage</a>
			<div class="collapse" id="e">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Change Password</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Password Reset</a></div>
		
			</div>
		</div>
	  </div>

          
    <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
           <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary btn-sm btn-light btn-outline-success" id="menu-toggle">Menu</button>
        <asp:Label runat="server" ID="lblShowName" Text="ShowName" style="margin-left:20px; color:blue;"></asp:Label>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
           
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                User
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Change Password</a>
                 <asp:LinkButton runat="server" ID="linklogout" Text="Logout" CssClass="dropdown-item" OnClick="linklogout_Click"></asp:LinkButton>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#"></a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
               <div class="container"> 
              <h3><p class="text-center">وزارت تحصیلات عالی<br></p> </h3>
               <h4><p class="text-center">ریاست عمومی پوهنتونها و موسسات تحصیلات عالی<br></p> </h4>
                 <h5><p class="text-center font-weight-bold">موسسه تحصیلات عالی میوند<br></p></h5>
                  <h5> <p class="text-center font-weight-bold">معاونیت امور علمی<br></p></h5>
                   <h6><p class="text-right form-control-md">:پرسشنامه ارزیابی خودی روند تدریس<br /> جهت ارزیابی دروس بمنظو دریافت علل و عوامل موثر بهبود کیفیت تدریس ، تشخیص خلاها نواقص و دریافت روش بهتر تدریس ترتیب شده بود خانه پوری گردیده و در فورم هذا توحید گردیده است</p></h6>

               </div>
               <hr />
               <div class="container p-3 my-3 bg-transparent text-dark h5" runat="server"  style="width:150px; height:120px; float:left; margin-left:20px; text-align:left;">|Total Users|</div>
               <div class="container p-3 my-3 bg-light text-danger h5" runat="server" id="TotalUser" style="width:120px; height:120px; float:left; text-align:left; font-size:60px;"></div>
               <div class="container p-3 my-3 bg-transparent text-dark h5" runat="server" style="width:150px; height:120px; float:left; margin-left:5px; text-align:left;">Feedback Count</div>
               <div class="container p-3 my-3 bg-light text-danger h5" runat="server" id="Div2" style="width:60px; height:60px; float:left; text-align:left; font-size:60px;"></div>
               <div class="container p-3 my-3 bg-transparent text-dark h5" runat="server" id="Div3" style="width:150px; height:120px; float:left; margin-left:5px; text-align:left;">Rating Count</div>
               <div class="container p-3 my-3 bg-light text-danger h5" runat="server" id="Div4" style="width:60px; height:60px; float:left; text-align:left; font-size:60px;"></div>
               <div class="container p-3 my-3 bg-transparent text-dark h5" runat="server" id="Div5" style="width:150px; height:120px; float:left; margin-left:5px; text-align:left;">Last_Feedback</div>
               <div class="container p-3 my-3 bg-light text-danger h5" runat="server" id="Div6" style="width:130px; height:60px; float:left; text-align:left; font-size:20px;"></div>
               
               
               
               
    </div>
     
        
        
            <!-- /#page-content-wrapper -->
        
        </div>     
       
    <!-- /#wrapper -->
        
 
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
         
    </form>
</body>
</html>
