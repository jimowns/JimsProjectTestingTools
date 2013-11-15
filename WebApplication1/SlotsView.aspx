<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SlotsView.aspx.cs" Inherits="WebApplication1.SlotsView" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Examonitor</title>
    <style type="text/css">
        .auto-style2 {
            width: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Image  ID="Logo" runat="server" ImageUrl="~/images/artesis.jpg" 
                    BorderStyle="None" width="370" />
      


    <h2>Toezichtsbeurten BLS</h2>

          <div>
    <asp:label ID="Label1" runat="server" text="Label"></asp:label>
</div>
<br />
<br />
Toezichtsbeurten voor :  Antwerpen
<br />
<br />
<a href="/ReservationsView.aspx">Mijn reservaties</a>
<br />
<br />
<br />
      <!--  <asp:Panel ID="Panel2" runat="server" Height="1040px" style="margin-left: 0px" Width="906px"> -->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Start" HeaderText="Start" SortExpression="Start" />
                    <asp:BoundField DataField="End" HeaderText="End" SortExpression="End" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                    <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                    <asp:BoundField DataField="Digital" HeaderText="Digital" SortExpression="Digital" />
                    <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        <Table style="width: 593px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_9ABFAC_Project5ConnectionString %>" SelectCommand="SELECT [Date], [Start], [End], [Duration], [Available], [Capacity], [Digital], [Campus] FROM [Slots]"></asp:SqlDataSource>
            <asp:Panel ID="Panel1" runat="server" Height="1003px" style="margin-left: auto; margin-right: 500px; margin-top: 30px;" Width="27px">
            </asp:Panel>
             </Table>


            
       <!-- </asp:Panel> -->

<br />
<br />

    </form>
    <div>
        <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" /></div>

</body>
</html>
