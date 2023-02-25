<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees_Info.aspx.cs" Inherits="Practice.Employees_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container form-control border-0 bg-light" style="width:50%"> 
        <div class="row">
            <div class="col-md-9">      
                <p>BlackListeds</p>          
            </div>
            <div class="col-md-3 text-lg-right">
                 <asp:LinkButton runat="server" ID="lbtnhome" Text="Home" OnClick="lbtnhome_Click"></asp:LinkButton>
            </div>
        </div>
      

         
        
    </div>    
    </form>
</body>
</html>
