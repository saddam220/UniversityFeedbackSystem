<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedReport.aspx.cs" Inherits="Practice.Reports.FeedReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server"></rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT FeedbackEntryView.* FROM FeedbackEntryView"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
