<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewResult.aspx.vb" Inherits="IBP.ViewResult" %>
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
            <h2 class="text-center font-theme-color">Result</h2>
            <br />
        </div>
    </div>
</div>
<div align="center">
    <asp:GridView ID="grdResult" runat="server"></asp:GridView>
</div>
<br />
</asp:Content>
