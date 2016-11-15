<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UploadResult.aspx.vb" Inherits="IBP.UploadResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<br />
<div class="row message-box" align="center">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</div>
<div class="row contact-wrap" >
    <div class="form-group" >
    <div class="col-sm-12" align="center" >
        <table border="1px" width="30%" style="text-align:center;background-color:#e6e6e6">
        <tr>
            <td>
               <h2 class="font-theme-color">Upload Result</h2>
            </td>
        </tr>
        
        <tr>
            <td>
                <div class="input-group">
                    <span class="input-group-addon">File</span>
                    <asp:FileUpload ID="fuResult" runat="server" CssClass="form-control image-upload"/>                                
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-primary" />
            </td>
        </tr>
    </table>
    </div>
</div>
</div>
<br />
<div align="center">
    <asp:GridView ID="grdResult" runat="server"></asp:GridView>
    <asp:Button ID="btnSubmit" runat="server" Text="Save" CssClass="btn btn-primary"/>
    &nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary"/>
</div>
 </br>
 </br>


</asp:Content>
