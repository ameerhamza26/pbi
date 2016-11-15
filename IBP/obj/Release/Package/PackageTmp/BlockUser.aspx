<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="BlockUser.aspx.vb" Inherits="IBP.BlockUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
    <div id="loginbox" style="margin-top: 50px;" class="validate-controls col-md-5 col-md-offset-4 col-sm-7 col-sm-offset-3">
        <div class="panel panel-info">
            <div style="padding-top: 0px" class="panel-body ">
                <div id="loginform" class="form-horizontal validate-controls" role="form">
                    <h2 class="text-center font-theme-color">Block/Unblock User</h2>
                    <br />
                    <div style="margin-bottom: 15px" class="input-group">
                        <span class="input-group-addon">Users</span>
                        <asp:DropDownList ID="cboUser" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div style="margin-bottom: 10px" class="input-group">
                       <asp:RadioButton ID="rbBlocked" runat="server"   Text="Blocked" GroupName="User" AutoPostBack="True" />
                       <asp:RadioButton ID="rbUnblocked" runat="server"  Text="Unblocked" GroupName="User" AutoPostBack="True" /> 
                    </div>

                    <div class="messagebox"></div>
                    <asp:Label ID="lblMessage" runat="server" 
                        CssClass="alert alert-danger login-alert"></asp:Label>
                    
                    <div style="margin-top: 10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-6 controls">
                            
                            <asp:Button ID="btnSubmit" runat="server" Text="Block" 
                                CssClass="btn btn-primary col-md-12 btn-login btn-signin" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br />
<br />

</asp:Content>
