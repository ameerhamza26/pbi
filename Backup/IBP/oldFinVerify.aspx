<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="oldFinVerify.aspx.vb" Inherits="IBP.oldFinVerify" %>
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
            <h2 class="text-center font-theme-color">Finance</h2>
            <br />
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">NIC</span>
                <asp:TextBox ID="txtNIC" runat="server" placeholder="NIC" 
                    CssClass="form-control" ></asp:TextBox>
            </div>
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Email</span>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" 
                    CssClass="form-control" ></asp:TextBox>
            </div>
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Application ID</span>
                <asp:TextBox ID="txtAppID" runat="server" placeholder="ApplicationID" 
                    CssClass="form-control" ></asp:TextBox>
            </div>
            <div style="margin-top: 10px" class="form-group">
                <div class="col-sm-6 controls">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        CssClass="btn btn-primary" />
                            
                </div>
            </div>
        </div>
    </div>
</div>
<div align="center">
    <div class="panel panel-info" style="width:35%">
        <div style="padding-top: 0px" class="panel-body ">
            <table>
        <tr>
            <td width="60%">    
                <table class="table-bordered" >
                    <tr>
                        <td align='center' colspan="2"><b>Application Information</b></td>
                    </tr>
                    <tr>
                        <td align='center'>ApplicationID</td>
                        <td align='center'><asp:Label ID="lblApplicationID" runat="server" ></asp:Label></td>
                    </tr>
                    <tr>
                        <td align='center'>Email</td>
                        <td align='center'><asp:Label ID="lblEmail" runat="server" ></asp:Label></td>
                    </tr>
                    <tr>
                        <td align='center'>Name</td>
                        <td align='center'><asp:Label ID="lblName" runat="server" ></asp:Label></td>
                    </tr>
                    <tr>
                        <td align='center'>CNIC</td>
                        <td align='center'><asp:Label ID="lblCNIC" runat="server" ></asp:Label></td>
                    </tr>
                </table>
            </td>
            <td width="40%">
                <table class="table-bordered" >
                    <tr>
                        <td align='center'><b>Documents checklist</b></td>
                    </tr>
                    <asp:Literal ID="ltrlChecklist" runat="server"></asp:Literal>
                </table>
            </td>
        </tr>
    </table>
        </div>
    </div>
    <div class="panel panel-info" style="width:35%">
        <div style="padding-top: 0px" class="panel-body ">
            <div style="margin-bottom: 25px" class="input-group">
                <asp:CheckBox ID="cbApprove" runat="server" />
                <span class="input-group-addon">Remarks</span>
                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div style="margin-top: 10px" class="form-group">
                <div class="col-sm-6 controls">
                    <asp:Button ID="btnSave" runat="server" Text="Save" 
                        CssClass="btn btn-primary" />
                            
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
