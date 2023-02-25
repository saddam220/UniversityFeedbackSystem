<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TT.aspx.cs" Inherits="Practice.TT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="lblQuestion" Text="Question"></asp:Label>
        
        <asp:BulletedList runat="server" ID="bull1" DataSourceID="SqlDataSource1" DataTextField="Question" DataValueField="Question"></asp:BulletedList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT * FROM [UniveristyQuestions] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="ID" Type="Int32"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Label runat="server" ID="lblmsg" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
