<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ViewResult.aspx.vb" Inherits="IBP.ViewResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .imgsd {
            margin-left: 320px;
        }

        .gridview {

        }

        .gridview_result {
    color: black;
    border-collapse: collapse;
    width: 800px;
}

         .guide_area {
            margin-top: 20px;
            width: 50%;
            margin-left: 110px;
        }

        .lblCriteria {
            margin-left: 110px;
        }

        .dataTable {
            margin-left: 20px !important;
            margin-top: 20px !important;
        }

        .auto-style1 {
            width: 297px;
        }
        .auto-style2 {
            width: 263px;
        }
        .auto-style3 {
            width: 232px;
        }

        .auto-style4 {
            width: 124px;
            height: 49px;
        }
        .auto-style5 {
            width: 124px;
            height: 56px;
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
            <h2 class="text-center font-theme-color">Result</h2>
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
                    <h2 style="text-align: center; width: 820px; color: #000;">Result</h2>
                    <h4 style="text-align: center; width: 820px; color: #000;"> AT STATE BANK OF PAKISTAN-BANKING SERVICES CORPORATION (SBP BSC) </h4>
                </td>
                <td>
                    <img src="images/b-logo.png" class="tis-logo" alt="logo" />
                </td>
            </tr>
        </table>
    <table width="90%" cellpadding="0" cellspacing="0" class="dataTable">
        <tr><td class="auto-style3"><b>Name</b></td>
            <td class="auto-style2"><asp:Label runat="server" ID="lblName" style="width: 60%;"></asp:Label></td>
            <td rowspan="5"><asp:Image ID="imgSD" runat="server" ImageUrl="" Width="191px" Height="167px" CssClass="imgsd"/></td>
        </tr>
       <tr><td class="auto-style3"><b>S/D/o</b></td>
            <td class="auto-style2"><asp:Label runat="server" ID="lblFatherName" style="width: 60%;"></asp:Label></td>
        </tr>
        <tr><td class="auto-style3"><b>CNIC</b></td>
            <td class="auto-style2"><asp:Label runat="server" ID="lblCNIC" style="width: 60%;"></asp:Label></td>
        </tr>
         <tr><td class="auto-style3"><b>Mailing Address</b></td>
            <td class="auto-style2"><asp:Label runat="server" ID="lblAddress" style="width: 60%;"></asp:Label></td>
        </tr>
        <tr><td class="auto-style3"><b>Cell No</b></td>
            <td class="auto-style2"><asp:Label runat="server" ID="lblCellNo" style="width: 60%;"></asp:Label></td>
        </tr>
    </table>
</section>

<div align="center" class="guide_area">
    <asp:GridView ID="grdResult" runat="server" CssClass="gridview_result">
        <HeaderStyle BackColor="Silver" />
    </asp:GridView>
</div>

    <label class="lblCriteria">
        <b>
            Qualififcation Criteria: Min <span style="color:red;font-style;"><u>60%</u></span> marks in aggregate and <span style="color:red;font-style:oblique;"><u>50%</u></span> marks in each section
        </b>
    </label>

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
    


<br />
    
</asp:Content>
