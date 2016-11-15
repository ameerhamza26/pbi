<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CustomerView.aspx.vb" Inherits="IBP.CustomerView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<div class="row message-box" align="center">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</div>
<div align="center">
    <h2 style="text-align:center" class="text-center font-theme-color" >
        Final Approved Applications
    </h2>
    <br />
     <asp:GridView ID="grdApplications" runat="server" HeaderStyle-BackColor="#EEEEEE" HeaderStyle-HorizontalAlign= "Center"
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#555555" 
        Width="1200px" BorderColor="#CCCCCC" 
        HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="ApplicationID" HeaderText="ApplicationID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="CNIC" HeaderText="CNIC" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="FatherName" HeaderText="Father Name" />
            <asp:BoundField DataField="Remarks" HeaderText="Reason" />
            <asp:ButtonField CommandName="View" HeaderText="View" Text="View" />
        </Columns>
<HeaderStyle HorizontalAlign="Center" BackColor="#EEEEEE"></HeaderStyle>
    </asp:GridView>
</div>
<br />
<br />
</asp:Content>
