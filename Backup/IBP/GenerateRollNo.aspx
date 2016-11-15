<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="GenerateRollNo.aspx.vb" Inherits="IBP.GenerateRollNo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<div class="row message-box" align="center">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</div>
<div class="container" align="center">
    <div class="panel panel-info" style="width:30%">
        <div style="padding-top: 0px" class="panel-body ">
            <h2 class="text-center font-theme-color">Search Applications</h2>
            <br />
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Center</span>
                <asp:DropDownList ID="cboPreference" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div style="margin-top: 10px" class="form-group">
                <div class="col-sm-6 controls">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        CssClass="btn btn-primary" />
                            
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-info" style="width:30%">
        <div style="padding-top: 0px" class="panel-body ">
            <h2 class="text-center font-theme-color">Generate Roll No.</h2>
            <br />
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">From Roll No.</span>
                <asp:TextBox ID="txtFromRollNo" runat="server" placeholder="From" 
                    CssClass="form-control" ></asp:TextBox>
            </div>
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">To Roll No.</span>
                <asp:TextBox ID="txtToRollNo" runat="server" placeholder="To" 
                    CssClass="form-control" ></asp:TextBox>
            </div>
            <div style="margin-top: 10px" class="form-group">
                <div class="col-sm-6 controls">
                    <asp:Button ID="btnGenerate" runat="server" Text="Generate Roll No." 
                        CssClass="btn btn-primary" />
                            
                </div>
            </div>
        </div>
    </div>
</div>

<div align="center">
    <asp:GridView ID="grdApplication" runat="server"></asp:GridView>
</div>

</asp:Content>
