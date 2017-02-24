<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewEligibility.aspx.vb" Inherits="IBP.ViewEligibility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 297px;
        }

        .imgsd {
            margin-left: 360px;
        }

        .grid_area {
            margin-top: 20px;
            margin-left: 20px !important;
        }

        .guide_area {
            margin-top: 20px;
            width: 50%;
            margin-left: 100px;
        }

        /*#GridView1 {
             border-collapse:collapse;
            border-color:#CCD1D1;
        }

            #GridView1 th {
                background-color: #CCD1D1;
            color:red;
            }*/


        .auto-style8 {
            width: 30%;
            height: 21px;
        }
        .auto-style9 {
            height: 21px;
        }

        .dataTable {
            margin-left: 30px !important;
            margin-top: 20px !important;
        }

        .auto-style11 {
            width: 30%;
            height: 10px;
        }
        .auto-style12 {
            height: 10px;
        }
        .auto-style16 {
            width: 30%;
            height: 19px;
        }
        .auto-style17 {
            height: 19px;
        }
        .auto-style18 {
            width: 30%;
            height: 8px;
        }
        .auto-style19 {
            height: 8px;
        }

        .detail_grid {
            width: 800px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<div class="row message-box" align="center">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</div>
<%--<div class="container" align="center">
    <div class="panel panel-info" style="width:30%">
        <div style="padding-top: 0px" class="panel-body ">
            <h2 class="text-center font-theme-color">Eligibility</h2>
            <br />
        </div>
    </div>
</div>--%>

<section style="margin: auto; width: 1170px;" id="printDiv">
        <table>
            <tr>
                <td>
                    <img src="images/logo.png" alt="logo" /></td>
                <td>
                    <h2 style="text-align: center; width: 820px; color: #000;">Eligibility Status</h2>
                    <h4 style="text-align: center; width: 820px; color: #000;"> AT STATE BANK OF PAKISTAN-BANKING SERVICES CORPORATION (SBP BSC) </h4>
                </td>
                <td>
                    <img src="images/b-logo.png" class="tis-logo" alt="logo" />
                </td>
            </tr>
        </table>
    <table width="90%" cellpadding="0" cellspacing="0" class="dataTable">
        <tr><td class="auto-style16"><b>Name</b></td>
            <td class="auto-style17"><asp:Label runat="server" ID="lblName" style="width: 60%;"></asp:Label></td>
            <td rowspan="5"><asp:Image ID="imgSD" runat="server" ImageUrl="" Width="191px" Height="167px" CssClass="imgsd"/></td>
        </tr>
       <tr><td class="auto-style8"><b>S/D/o</b></td>
            <td class="auto-style9"><asp:Label runat="server" ID="lblFatherName" style="width: 60%;"></asp:Label></td>
        </tr>
        <tr><td class="auto-style11"><b>CNIC</b></td>
            <td class="auto-style12"><asp:Label runat="server" ID="lblCNIC" style="width: 60%;"></asp:Label></td>
        </tr>
         <tr><td class="auto-style16"><b>Mailing Address</b></td>
            <td class="auto-style17"><asp:Label runat="server" ID="lblAddress" style="width: 60%;"></asp:Label></td>
        </tr>
        <tr><td class="auto-style18"><b>Cell No</b></td>
            <td class="auto-style19"><asp:Label runat="server" ID="lblCellNo" style="width: 60%;"></asp:Label></td>
        </tr>
    </table>
</section>
<div align="center" class="grid_area">
    <asp:GridView ID="grdResult" runat="server" CssClass="detail_grid" AutoGenerateColumns="true">
        <HeaderStyle BackColor="Silver" ForeColor="White"/>
    </asp:GridView>
    
    <%--<asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>



</div>

    <div class="guide_area">
           <table>
              <tr>
                  <td class="auto-style1"><label><b>IBP Help Desk</b></label></td>
              </tr>

               <tr>
                   <td class="auto-style1"><label>For queries and concerns, Please contact at:</label></td>
               </tr>

               <tr>
                   <td class="auto-style1"><label>Tel: 111-427-477</label></td>
               </tr>

               <tr>
                   <td class="auto-style1">
                       <label>Email: </label><linkbutton>examination@ibp.org.pk</linkbutton>
                   </td>
               </tr>
           </table>
    </div>
    >
<br />
</asp:Content>
