<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSession.aspx.cs" Inherits="Practice.Session" %>

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
           <div class=" list-group-item list-group-item-action bg-light"><a href="Dashboard.aspx" class="card-link" style="color:black;">Dashboard</a>
		
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
           <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#d"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">2</span>Reports</a>
			<div class="collapse" id="d">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Report1</a></div>
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">Report2</a></div>
		
			</div>
		</div>
       <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#f"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">1</span>User Detail</a>
			<div class="collapse" id="f">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="ViewUser.aspx" class="card-link text-dark">View Users</a></div>
                    <div class="list-group-item list-group-item-action bg-light border-0"><a href="FeedbackView.aspx" class="card-link text-dark">Feedback View</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="RatingView.aspx" class="card-link text-dark">Rating View</a></div>
                <div class="list-group-item list-group-item-action bg-light border-0"><a href="ListOf.aspx" class="card-link text-dark">Analysis</a></div>
			</div>
		</div>
           <div class=" list-group-item list-group-item-action bg-light" data-toggle="collapse" data-target="#e"><a href="#" class="card-link" style="color:black;"><span class="badge badge-light float-right bg-success">2</span>User Manage</a>
			<div class="collapse" id="e">
				<div class="list-group-item list-group-item-action bg-light border-0"><a href="#" class="card-link text-dark">User Right</a></div>
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
                <a class="dropdown-item" href="#">Profile</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
               
               <div class="jumbotron jumbotron-fluid">
  <div class="container">
     <div class="input-group mb-3">
  <asp:TextBox runat="server" ID="txtSession" cssclass="form-control" placeholder="Enter Session Name" ></asp:TextBox>
  <div class="input-group-append">
    <asp:Button runat="server" ID="btnSession" cssclass="btn btn-outline-secondary" text="Submit" OnClick="btnSubject_Click" />
  </div>
</div>
      <asp:Label runat="server" ID="lblmsg"></asp:Label>
  </div>
</div>
           <asp:GridView runat="server" ID="grdview" DataSourceID="grdviewDatasource" CssClass="table table-hover list-group-item" GridLines="None" AutoGenerateColumns="false" OnRowCommand="grdview_RowCommand">
                  <Columns>
                            <asp:BoundField DataField="Session_Code" HeaderText="Session ID" ReadOnly="true" SortExpression="Session_Code" />
                            <asp:BoundField DataField="Session_Name" HeaderText="Session Name" ReadOnly="true" SortExpression="Session_Name" />
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton runat="server" CommandName="Del" CommandArgument='<%# Eval("Session_Code") %>'>Delete</asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>

              </asp:GridView>
              

             
             <asp:SqlDataSource runat="server" ID="grdviewDatasource" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Session_Profile]"></asp:SqlDataSource>   
               
               
               
              

    </div>
     
        
        
            <!-- /#page-content-wrapper -->
        
        </div>     
















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
