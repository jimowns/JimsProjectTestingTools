<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="WebApplication1.AdminMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="AdminSlots.aspx">Slots</a>
        <a href="AdminCampus.aspx">Campus</a>
    </div>
    <div>
        
        <asp:TextBox ID="MessageOfTheDay" runat="server"></asp:TextBox>
        
    </div>
    </form>
    </body>
</html>