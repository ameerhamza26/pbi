<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ExMView.aspx.vb" Inherits="IBP.ExMView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<div class="row message-box" align="center">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</div>
<div align="center">
<div class="panel panel-info" style="width:35%">
        <div style="padding-top: 0px" class="panel-body ">
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Finance Status</span>
                <asp:DropDownList ID="cboFStatus" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Exam Officer Status</span>
                <asp:DropDownList ID="cboEOStatus" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Exam Manager Status</span>
                <asp:DropDownList ID="cboEMStatus" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <div style="margin-top: 10px" class="form-group">
                <asp:Button ID="btnFetch" runat="server" Text="Fetch" 
                    CssClass="btn btn-primary" />
            </div>
        </div>
    </div>    <br />
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
