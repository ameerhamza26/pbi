<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FinBulkVerify.aspx.vb" Inherits="IBP.FinBulkVerify" %>
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
               <h2 class="font-theme-color">Upload Bank File</h2>
            </td>
        </tr>
        
        <tr>
            <td>
                <div class="input-group">
                    <span class="input-group-addon">File</span>
                    <asp:FileUpload ID="fuBankFile" runat="server" CssClass="form-control image-upload"/>                                
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
        </Columns>
<HeaderStyle HorizontalAlign="Center" BackColor="#EEEEEE"></HeaderStyle>
    </asp:GridView>

    <asp:Button ID="btnSubmit" runat="server" Text="Approve" CssClass="btn btn-primary"/>
    &nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary"/>
</div>
 <br />
 <br />


</asp:Content>
