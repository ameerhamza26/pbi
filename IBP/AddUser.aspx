<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddUser.aspx.vb" Inherits="IBP.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
    <div id="loginbox" style="margin-top: 50px;" class="validate-controls col-md-5 col-md-offset-4 col-sm-7 col-sm-offset-3">
        <div class="panel panel-info">
            <div style="padding-top: 0px" class="panel-body ">
                <div id="loginform" class="form-horizontal validate-controls" role="form">
                    <h2 class="text-center font-theme-color">Add User</h2>
                    <br />
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon">User Email</span>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" 
                            CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div style="margin-bottom: 15px" class="input-group">
                        <span class="input-group-addon">User Name</span>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div style="margin-bottom: 15px" class="input-group">
                        <span class="input-group-addon">Role</span>
                        <asp:DropDownList ID="cboRole" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="messagebox"></div>
                    <asp:Label ID="lblMessage" runat="server" 
                        CssClass="alert alert-danger login-alert"></asp:Label>
                    
                    <div style="margin-top: 10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-6 controls">
                            
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                CssClass="btn btn-primary col-md-12 btn-login btn-signin" />
                            
                        </div>
                        <div class="col-sm-6 controls">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                                CssClass="btn btn-primary col-md-12 btn-login" />
                        </div>
                    </div>
                    <div class="form-group">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><br />
<br />

</asp:Content>
