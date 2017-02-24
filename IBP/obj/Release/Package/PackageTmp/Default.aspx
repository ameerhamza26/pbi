<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="IBP._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container">
    <div id="loginbox" style="margin-top: 50px;" class="validate-controls col-md-5 col-md-offset-4 col-sm-7 col-sm-offset-3">
        <div class="panel panel-info">
            <div style="padding-top: 0px" class="panel-body ">
                <div id="loginform" class="form-horizontal validate-controls" role="form">
                    <h2 class="text-center font-theme-color">Authenticate Yourself</h2>
                    <br />
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon input-group-user">Login Id</span>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" 
                            CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div style="margin-bottom: 15px" class="input-group">
                        <span class="input-group-addon">Password</span>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                            placeholder="Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="messagebox"></div>
                    <asp:Label ID="lblMessage" runat="server" 
                        CssClass="alert alert-danger login-alert"></asp:Label>
                    
                    <div style="margin-top: 10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-6 controls">
                            
                            <asp:Button ID="btnSubmit" runat="server" Text="Sign in" 
                                CssClass="btn btn-primary col-md-12 btn-login btn-signin" />
                            
                        </div>
                        <div class="col-sm-6 controls">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" 
                                CssClass="btn btn-primary col-md-12 btn-login" />
                        </div>
                    </div>
                    <div style="margin-top: 15px" class="form">
                        <!-- Button -->
                        <div class="col-sm-12 controls guidelines">
                          
                            
                            <p>
                                If new user, click on “Register”
                            </p>
                            <p>If already registered, Click “Sign in”</p>
                        </div>
                        Note: The form once submitted will not be edited further.
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
