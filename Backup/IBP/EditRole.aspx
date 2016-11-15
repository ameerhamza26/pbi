<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="EditRole.aspx.vb" Inherits="IBP.EditRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
.th {background-color:Gray;text-align:center;border-collapse:collapse;border-width:thin;font-weight:bold;font-size:large}
.td   {border-collapse:collapse;border-width:thin;}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
    <div id="loginbox" style="margin-top: 50px;" class="validate-controls col-md-5 col-md-offset-4 col-sm-7 col-sm-offset-3">
        <div class="panel panel-info">
            <div style="padding-top: 0px" class="panel-body ">
                <div id="loginform" class="form-horizontal validate-controls" role="form">
                    <h2 class="text-center font-theme-color">Role Management</h2>
                    <br />
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon">Role</span>
                        <asp:TextBox ID="txtRole" runat="server" placeholder="Role Name" 
                            CssClass="form-control" ></asp:TextBox>
                        <asp:DropDownList ID="cboRole" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                    </div>
                    <div class="messagebox"></div>
                    <asp:Label ID="lblMessage" runat="server" 
                        CssClass="alert alert-danger login-alert"></asp:Label>
                    
                    <div style="margin-top: 10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-6 controls">
                            
                            <asp:Button ID="btnAdd" runat="server" Text="AddRole" 
                                CssClass="btn btn-primary col-md-12 btn-login btn-signin" />
                            
                        </div>
                        <div class="col-sm-6 controls">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                                CssClass="btn btn-primary col-md-12 btn-login" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br />
<br />
<div style="padding-top: 0px" class="panel-body " align="center">
    <asp:Table ID="tblRole" runat="server" CssClass="panel">
    </asp:Table>
    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" />
</div>
</asp:Content>

