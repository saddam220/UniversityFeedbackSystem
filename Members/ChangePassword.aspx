<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Members_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
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
           <div class=" list-group-item list-group-item-action bg-light"><a href="MemberDashboard.aspx" class="card-link" style="color:black;">Dashboard</a>
		
			</div>
		</div>
          
      
          
          <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#b"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">2</span>Student</a>
			<div class="collapse" id="b">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="StudentToTeacher.aspx" class="card-link text-dark">Student to teacher</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="StudentToUniversity.aspx" class="card-link text-dark">Student to university</a></div>
		
			</div>
		</div>
          <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#c"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">2</span>Teacher</a>
			<div class="collapse" id="c">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="TeacherToStudent.aspx" class="card-link text-dark">Teacher to student</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="TeacherToUniversity.aspx" class="card-link text-dark">Teacher to university</a></div>
		
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
                 <asp:LinkButton runat="server" ID="linklogout" Text="Logout" CssClass="dropdown-item" OnClick="linklogout_Click" ></asp:LinkButton>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#"></a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
               <div class="container-fluid" style=""> 
                   <table class="">
                    <tr>
                   <asp:Label runat="server" ID="lblChangePassword" Text="Change Password" CssClass="h3" ></asp:Label><br /><br />
                    </tr>
                   <tr>
                    <asp:TextBox runat="server" ID="txtOldPassword" TextMode="Password" placeholder="Old Password" CssClass="form-control"></asp:TextBox><br />
                       </tr>
                   <tr>
                       <asp:TextBox runat="server" ID="txtNewPassword" TextMode="Password" placeholder="New Password" CssClass="form-control" ></asp:TextBox><br />
                   </tr>
                       <tr>
                       <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" placeholder="Confirm Password" CssClass="form-control" ></asp:TextBox><br />
                       </tr>
                       <tr>
                       <asp:Button runat="server" ID="btnChange" Text="Change" CssClass="form-control btn-outline-danger" OnClick="btnChange_Click" ></asp:Button>
                       </tr>
                           </table>
               </div>
               
               
               
               
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
