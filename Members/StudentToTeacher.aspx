<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentToTeacher.aspx.cs" Inherits="Practice.StudentToTeacher" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
                <asp:LinkButton runat="server" ID="linklogout" Text="Logout" CssClass="dropdown-item"  OnClick="linklogout_Click"></asp:LinkButton>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Profile</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
<!-- Nav tabs Start -->
            <div class="container">
  
                <br />
                <br />
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">معلومات عمومی</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1" runat="server" id="sawalat">سوالات</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2" runat="server" id="rutba">رتبه بندی</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content float-left">
      
    <div id="home" class="container tab-pane active"><br />
            <h4>How Question tab and Rating Section works</h4>
            <p>First you can put your feedback by answering each question in سوالات tab, you can put your comments on each question
                given, so please read the questions carefully and answer your honest feedback.
            </p>
        <p>
            The second tab is for rating where you have to choose 1 radio button out of 5 and rate for the related question.
            The سوالات tab consists of 28 questions and the رتبه بندی consists of 16 questions.
        </p>
        <p>
            When you give a feedback to a teacher and subject the next time it will through message that you have already given feedback.
            So, only one time feedback would be possible.
        </p>
        </div>
    <div id="menu1" class="container tab-pane fade"><br />
        <!--The Malomat omomi section Starts -->
        <div class="row">
        <div class="col-md-12" style="text-align:center;">
                 <asp:Label runat="server" ID="lblmsg" Text="..." ForeColor="DeepSkyBlue"></asp:Label>
                 <hr />
                 </div> 
        </div>
        <div class="row">
                 
           <div class="col-md-6">
        <div class="list-group" style="margin-left:0px;">
            
            <asp:Label runat="server" ID="Label1" Text="Subject"></asp:Label>
            <asp:DropDownList runat="server" ID="drpSubject" DataSourceID="SqlDataSource46" DataTextField="Subject_Name" DataValueField="Subject_ID" CssClass="list-group-item"></asp:DropDownList>
            <asp:Label runat="server" ID="Label3" Text="Teacher"></asp:Label>
            <asp:DropDownList runat="server" ID="drpTeacher" DataSourceID="SqlDataSource48" DataTextField="Teacher_Name" DataValueField="Teacher_ID" CssClass="list-group-item"></asp:DropDownList>

            </div>
            </div>
        <div class="col-md-6">
            <div class="list-group" style="margin-left:0px;">
            
            <asp:Label runat="server" ID="Label4" Text="Field"></asp:Label>
            <asp:DropDownList runat="server" ID="drpFeild" DataSourceID="SqlDataSource49" DataTextField="Name" DataValueField="Field_ID" CssClass="list-group-item"></asp:DropDownList>
            <asp:Label runat="server" ID="Label5" Text="Credits"></asp:Label>
            <asp:DropDownList runat="server" ID="drpTotalCredit" DataSourceID="SqlDataSource50" DataTextField="Credits" DataValueField="TotalCredit_ID" CssClass="list-group-item"></asp:DropDownList><br />
            
            
     </div>
            </div>
          
                     
        <asp:SqlDataSource runat="server" ID="SqlDataSource50" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [TotalCredit_Profile]"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource49" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Field_Profile]"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource48" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Teacher_Profile]"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlDataSource46" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Subject_Profile]"></asp:SqlDataSource>
       
    </div>
        <hr />
        
        <!--End Section of Malomat -->
      <div class="list-group">
          <asp:Button runat="server" ID="btnSave" Text="Submit Feedback" CssClass="btn btn-outline-warning" style="width:200px;" OnClick="btnSave_Click" /><br />
            <div class="row">   
                <div class="col-md-6">    
                    
                   <asp:Label runat="server" ID="Q1" style="font-weight:bold;">آیا در آغاز سمستر کورس پالیسی توسط استاد تشریح و توزیع گردیده است؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment1" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp1" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q2" style="font-weight:bold;">آیا تدریس مطابق کورس پالیسی میباشید؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment2" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp2" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q3" style="font-weight:bold;">آیالکجرنوت به وقت آن بدسترس شما قرار گرفته است؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment3" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp3" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q4" style="font-weight:bold;">آیا لکچرنوت قابل فهم و به سویه شما ترتیب شده است؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment4" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp4" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q5" style="font-weight:bold;">آیا در اخیر لکچرنوت منابع و ماخذ موجود است؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp5" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q6" style="font-weight:bold;">آیا تدریس استاد قابل فهم است؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment6" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp6" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q7" style="font-weight:bold;">آیا استاد بالای مضمون حاکمیت کامل دارد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment7" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp7" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q8" style="font-weight:bold;">آیا از میتود تدریس استاد راضی هستید؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment8" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp8" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q9" style="font-weight:bold;">آیا استاد محصلان را در تدریس سهیم می سازد(محصل محور؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment9" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp9" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q10" style="font-weight:bold;">آیا استاد صنف را اداره میتواند؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment10" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp10" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q11" style="font-weight:bold;">آیا از سلوک و رویه استاد راضی هستید؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment11" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp11" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q12" style="font-weight:bold;">آیا استاد با پلان درسی منظم و آمادگی کامل داخل صنف میگردد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment12" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp12" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q13" style="font-weight:bold;">آیا به سوالات شما جواب های قناعت بخش می دهد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment13" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp13" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q14" style="font-weight:bold;">آیا استاد تسلسل منطقی را در ارائه لکچر و موضوعات رعایت میکند؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment14" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp14" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q15" style="font-weight:bold;">آیا در آغاز سمستر کورس پالیسی توسط استاد تشریح و توزیع گردیده؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment15" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp15" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q16" style="font-weight:bold;">آیا از قوه افاده استاد راضی هستید؟	16</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment16" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp16" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q17" style="font-weight:bold;">آیا استاد از اخلاق و سایر معیار های اکادمیک؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment17" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp17" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q18" style="font-weight:bold;">آیا از ارزیابی استاد راضی هستید؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment18" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp18" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q19" style="font-weight:bold;">آیا از وضع ظاهری و علاقمندی وی به وظیفه راضی هستید؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment19" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp19" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q20" style="font-weight:bold;">آیا استاد مهار کاربرد تکنالوژی را در تدریس دارد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment20" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp20" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q21" style="font-weight:bold;">آیا تدریس استاد مطابق شرایط روز و به معیار های علمی عیار است؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment21" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp21" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q22" style="font-weight:bold;">آیا استاد از شیوه های مختلف در تدریس کار میگیردو با آن آشنائی دارد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment22" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp22" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q23" style="font-weight:bold;">آیا برای محصلان کارهای گروپی ، کار ساحوی و پروژه وی میدهد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment23" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp23" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q24" style="font-weight:bold;">آیا فعالیت های در بالا ذکر شده را ارزیابی میکند؟	</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment24" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp24" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q25" style="font-weight:bold;">آیا استاد در صنف نسبت به درس بیشتر به سیاست ، قصه ها تماس میگیرد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment25" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp25" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q26" style="font-weight:bold;">آیا استاد درس یکنواخت میدهد و یا فرصت برای سوال و تحلیل نیز میدهد؟	</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment26" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp26" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
           <div class="row">   
                <div class="col-md-6">    
                  <asp:Label runat="server" ID="Q27" style="font-weight:bold;">آیا مشکلات درسی شما توسط استاد حل میشود؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment27" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp27" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info">
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList> 
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="Q28" style="font-weight:bold;">آیا استاد متعصب ، قوم پرست و به مسایل منطقوی و لسانی تماس میگیرد؟</asp:Label>
                    <asp:TextBox runat="server" ID="txtcomment28" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    
                     <asp:RadioButtonList ID="grp28" runat="server" RepeatDirection="Horizontal" CssClass="list-group-item list-group-item-info" >
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       <asp:ListItem Value="2">No</asp:ListItem>
                </asp:RadioButtonList>
                </div>
                </div>
         
          
         
          
            


                 </div>
      
    </div>
   <div id="menu2" class="container tab-pane fade"><br />
        <div class="list-group">
          <!--The Malomat omomi section Starts -->
        <div class="row">
        <div class="col-md-12" style="text-align:center;">
                 <asp:Label runat="server" ID="lblmsg2" Text="..." ForeColor="DeepSkyBlue"></asp:Label>
                 <hr />
                 </div> 
        </div>
        <div class="row">
                 
           <div class="col-md-6">
        <div class="list-group" style="margin-left:0px;">
            
            <asp:Label runat="server" ID="Label6" Text="Subject"></asp:Label>
            <asp:DropDownList runat="server" ID="drpSubjectRating" DataSourceID="SqlDataSourceSubject" DataTextField="Subject_Name" DataValueField="Subject_ID" CssClass="list-group-item"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceSubject" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Subject_Profile]"></asp:SqlDataSource>
            <asp:Label runat="server" ID="Label7" Text="Teacher"></asp:Label>
            <asp:DropDownList runat="server" ID="drpTeacherRating" DataSourceID="SqlDataSourceTeacher" DataTextField="Teacher_Name" DataValueField="Teacher_ID" CssClass="list-group-item"></asp:DropDownList>


            <asp:SqlDataSource runat="server" ID="SqlDataSourceTeacher" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Teacher_Profile]"></asp:SqlDataSource>
        </div>
            </div>
        <div class="col-md-6">
            <div class="list-group" style="margin-left:0px;">
            
                <asp:Label runat="server" ID="Label8" Text="Field"></asp:Label>
                <asp:DropDownList runat="server" ID="drpFieldRating" DataSourceID="SqlDataSourceField" DataTextField="Name" DataValueField="Field_ID" CssClass="list-group-item"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceField" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [Field_Profile]"></asp:SqlDataSource>
                <asp:Label runat="server" ID="Label9" Text="Credits"></asp:Label>
                <asp:DropDownList runat="server" ID="drpTotalCreditRating" DataSourceID="SqlDataSourceTotalCredit" DataTextField="Credits" DataValueField="TotalCredit_ID" CssClass="list-group-item"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSourceTotalCredit" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [TotalCredit_Profile]"></asp:SqlDataSource>
                <br />
            
            
     </div>
            </div>
       
    </div>
        <hr />
        
        <!--End Section of Malomat -->
            
            <div class="row">
            <div class="col-md-12">
                <asp:button runat="server"  Style="width:135px;" id="rdiobutton" Text="SAVE"  CssClass="list-group-item btn btn-outline-primary" OnClick="rdiobutton_Click" /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                  <asp:Label runat="server" ID="Q29">استقبال و نحوۀ پاسخ دادن به سوالات محصلین	1 </asp:Label>
                </div>
                <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp29" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
            
             
            
                </div>
        <hr />
        <div class="row">
               
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q30">			ارایۀ کتاب، لکچر نوت و سایر مواد درسی جدید و مناسب.	2		 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp30" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
                
            <div class="col-md-12">
                   <asp:Label runat="server" ID="Q31">		استفاده از وسایل درسی جدید (پروجکتور، تلوزیون و ...) 	3		 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp31" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
               
            <div class="col-md-12">
                  <asp:Label runat="server" ID="Q32">		ارایه مفردات، نصاب، پلان، اهدف و نتایج درسی مضمون 	4	</asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp32" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
        <hr />
        <div class="row">
             
            <div class="col-md-12">
                   <asp:Label runat="server" ID="Q33">		بیان مثال های روشن ومتناسب با موضوع درس با ارایه تمرین ها	5	</asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp33" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
             
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q34">			قدرت بیان وتفهیم مطالب درسی و آمادگی برای تدریس	6		</asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp34" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
              
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q35">			ارزیابی مثمراستاد ازروند یادگیری محصلین	7		</asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp35" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
              
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q36">		روش تدريس و کار های عملی	8	 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp36" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
              
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q37">		حاضری در صنف، شروع وختم به موقع ساعات درسي	9	 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp37" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
             
            <div class="col-md-12">
                     <asp:Label runat="server" ID="Q38">		نحوه برخورد و رفتار با محصلان	10		 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp38" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
               
            <div class="col-md-12">
                  <asp:Label runat="server" ID="Q39"> 	استقبال ازنظريات، پشنهادات، انتقادات  محصلین	11	 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp39" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
               
            <div class="col-md-12">
                  <asp:Label runat="server" ID="Q40"> 	دخول وخروج استاد نظر به وقت وزمان معین 	12	 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp40" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
        <hr />
        <div class="row">
               
            <div class="col-md-12">
                   <asp:Label runat="server" ID="Q41">	همکاری د در رفع مشکلات درسی وحل سوالات	13		 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp41" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
         <hr />
        <div class="row">
             
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q42"> محتوي وحجم درس	14		 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp42" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
        <hr />
        <div class="row">
               
            <div class="col-md-12">
                    <asp:Label runat="server" ID="Q43"> 	استفاده ازمنابع جديد وموثريت آن براي محصلين درساحه عملي	15	</asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp43" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
        <hr />
        <div class="row">
            
            <div class="col-md-12">
                   <asp:Label runat="server" ID="Q44"> 	تسلط استادبرموضوع درس	16			 </asp:Label>
                </div>
             <div class="col-md-12">
                 <asp:RadioButtonList runat="server" ID="grp44" CssClass="list-group-item">
                     <asp:ListItem Value="1">Very Good</asp:ListItem>
                     <asp:ListItem Value="2">Good</asp:ListItem>
                     <asp:ListItem Value="3">Mediocre</asp:ListItem>
                     <asp:ListItem Value="4">Weak</asp:ListItem>
                     <asp:ListItem Value="5">No</asp:ListItem>
                 </asp:RadioButtonList>
                </div>
                </div>
        </div>

      
      
</div>
        
     
        

   

        
            <!-- /#page-content-wrapper -->
       </div>
        
    <!-- /#wrapper -->
        </div>
 
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
  </script>
         </div>
         </div>
    </form>

</body>
</html>
