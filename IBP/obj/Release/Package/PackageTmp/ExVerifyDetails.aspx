<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ExVerifyDetails.aspx.vb" Inherits="IBP.ExVerifyDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<div class="row message-box" align="center">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</div>
<div align="center">
        <table width="90%">
            <tr>
                <td colspan="4">
                    <h2 style="font-weight: bold;">Personal Information</h2>
                </td>
                <td rowspan="8"><asp:Image ID="imgSD" runat="server" ImageUrl="" Width="200px" Height="200px" /></td>
            </tr>
            <tr>
                <td style="width: 10%;">
                    <label>Name</label>
                </td>
                <td style="width: 20%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>

                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Application ID</label>
                </td>
                <td style="width: 20%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblAppID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>CNIC</label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblCNIC" runat="server"></asp:Label>
                </td>

                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Father's Name</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblFName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Date Of Birth</label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblDOB" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Gender</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblGender" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td>
                    <label>Contact</label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblContact" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Mobile No</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblMobile" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Email I.D</label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Domicile</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblDomicile" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Postal Address</label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Domicile City</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblDCity" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td>
                    <label>City of Residence </label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblCOR" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Religion</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblReligion" runat="server"></asp:Label>
                </td>
            </tr>

              <tr>
                <td>
                    <label>SBP Employee </label>
                </td>
                <td style="bottom: 5px; position: relative;">
                  <asp:Label runat="server" ID="lblSbp"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>City</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblSbpCity" runat="server"></asp:Label>
                </td>
            </tr>

              <tr>
                <td>
                    <label>Pin No </label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblSbpPin" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Grade</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblSbpGrade" runat="server"></asp:Label>
                </td>
            </tr>

              <tr>
                <td>
                    <label>Designation </label>
                </td>
                <td style="bottom: 5px; position: relative;">
                    <asp:Label ID="lblSbpDesig" runat="server"></asp:Label>
                </td>
                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label></label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
      
        </table>
        <table width="90%">
            <tr>
                <td colspan="4">
                    <h2 style="font-weight: bold;">Academic Information</h2>
                </td>
            </tr>
        </table>
        <table border="1px" width="910px">
          <tr>
                <td width="170px" style="text-align: center">
                    <label>Academic Qualification</label>
                </td>
                <td width="110px" style="text-align: center">
                    <label>Subject/Majors</label>
                </td>
                <td width="197px" style="text-align: center">
                    <label>Institute/Board</label>
                </td>
                <td width="200px">
                    <table border="1px" style="position: relative; left: 0px !important;">
                        <tr>
                            <td colspan="5" style="text-align: center">Please provide information regarding CGPA or percentage whichever is applicable</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">CGPA
                            </td>
                            <td colspan="3" style="text-align: center">Percentage
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">Total CGPA</td>
                            <td style="text-align: center">CGPA Obt.</td>
                            <td style="text-align: center">Total Marks</td>
                            <td style="text-align: center">Marks Obt.</td>
                            <td style="text-align: center">%age</td>
                        </tr>
                    </table>
                </td>
                <td width="110px" style="text-align: center">
                    <label>
                        Date of declaration of result
                    </label>
                </td>
            </tr>
          <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblMaster" runat="server"></asp:Label>
             </td>
                <td style="text-align: center">
                    <asp:Label ID="lblMasterSubject" runat="server"></asp:Label>
           </td>
                <td width="170px" style="text-align: center">
                    <asp:Label ID="lblMasterUniversity" runat="server"></asp:Label>
            </td>
                <td width="200px">
                    <table style="position: relative; left: 0px !important;">
                        <tr>
                            <td width="57px" style="text-align: center">
                                <asp:Label ID="lblMasterGPA" runat="server"></asp:Label>
                         </td>
                            <td width="58px" style="text-align: center">
                                <asp:Label ID="lblMasterCGPA" runat="server"></asp:Label>
                        </td>
                            <td width="54px" style="text-align: center">
                                <asp:Label ID="lblMasterTM" runat="server"></asp:Label>
                          </td>
                            <td width="56px" style="text-align: center">
                                <asp:Label ID="lblMasterMO" runat="server"></asp:Label>
                            </td>
                            <td width="36px" style="text-align: center">
                                <asp:Label ID="lblMasterPercentage" runat="server"></asp:Label>
                         </td>
                        </tr>
                    </table>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblMasterDOP" runat="server"></asp:Label>
              </td>
            </tr>

            
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblBachelor" runat="server"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblBachelorSubject" runat="server"></asp:Label>
                </td>
                <td width="170px" style="text-align: center">
                    <asp:Label ID="lblBachelorUniversity" runat="server"></asp:Label>
                </td>
                <td width="200px">
                    <table style="position: relative; left: 0px !important;">
                        <tr>
                            <td width="57px" style="text-align: center">
                                <asp:Label ID="lblBachelorGPA" runat="server"></asp:Label>
                            </td>
                            <td width="58px" style="text-align: center">
                                <asp:Label ID="lblBachelorCGPA" runat="server"></asp:Label>
                            </td>
                            <td width="54px" style="text-align: center">
                                <asp:Label ID="lblBachelorTM" runat="server"></asp:Label>
                            </td>
                            <td width="56px" style="text-align: center">
                                <asp:Label ID="lblBachelorMO" runat="server"></asp:Label>
                            </td>
                            <td width="36px" style="text-align: center">
                                <asp:Label ID="lblBachelorPercentage" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblBachelorDOP" runat="server"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblInter" runat="server"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblInterSubject" runat="server"></asp:Label>
                </td>
                <td width="170px" style="text-align: center">
                    <asp:Label ID="lblInterBoard" runat="server"></asp:Label>
                </td>
                <td width="200px">
                    <table style="position: relative; left: 0px !important;">
                        <tr>
                            <td width="57px" style="text-align: center">
                                <label style="font-weight: normal;">-</label></td>
                            <td width="58px" style="text-align: center">
                                <label style="font-weight: normal;">-</label></td>
                            <td width="54px" style="text-align: center">
                                <asp:Label ID="lblInterTM" runat="server"></asp:Label>
                            </td>
                            <td width="56px" style="text-align: center">
                                <asp:Label ID="lblInterMO" runat="server"></asp:Label>
                            </td>
                            <td width="36px" style="text-align: center">
                                <asp:Label ID="lblInterPercentage" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblInterDOP" runat="server"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblMatric" runat="server"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblMatricSubject" runat="server"></asp:Label>
                </td>
                <td width="170px" style="text-align: center">
                    <asp:Label ID="lblMatricBoard" runat="server"></asp:Label>
                </td>
                <td width="200px">
                    <table style="position: relative; left: 0px !important;">
                        <tr>
                            <td width="57px" style="text-align: center">
                                <label style="font-weight: normal;">-</label></td>
                            <td width="58px" style="text-align: center">
                                <label style="font-weight: normal;">-</label></td>
                            <td width="54px" style="text-align: center">
                                <asp:Label ID="lblMatricTM" runat="server"></asp:Label>
                            </td>
                            <td width="56px" style="text-align: center">
                                <asp:Label ID="lblMatricMO" runat="server"></asp:Label>
                            </td>
                            <td width="36px" style="text-align: center">
                                <asp:Label ID="lblMatricPercentage" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblMatricDOP" runat="server"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblOther" runat="server"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblOtherSubject" runat="server"></asp:Label>
                </td>
                 <td width="170px" style="text-align: center">
                    <asp:Label ID="lblOtherUniversity" runat="server"></asp:Label>
            </td>
                <td width="200px">
                    <table style="position: relative; left: 0px !important;">
                        <tr>
                            <td width="57px" style="text-align: center">
                                <asp:Label ID="lblOtherGPA" runat="server"></asp:Label>
                         </td>
                            <td width="58px" style="text-align: center">
                                <asp:Label ID="lblOtherCGPA" runat="server"></asp:Label>
                        </td>
                            <td width="54px" style="text-align: center">
                                <asp:Label ID="lblOtherTM" runat="server"></asp:Label>
                          </td>
                            <td width="56px" style="text-align: center">
                                <asp:Label ID="lblOtherMO" runat="server"></asp:Label>
                            </td>
                            <td width="36px" style="text-align: center">
                                <asp:Label ID="lblOtherPercentage" runat="server"></asp:Label>
                         </td>
                        </tr>
                    </table>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="lblOtherDOP" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

        
        <table width="90%" align="center">
            <asp:Literal ID="ltrlDocs" runat="server"></asp:Literal>
        </table>
    <div id="myModal" class="modal">

  <!-- The Close Button -->
  <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>

  <!-- Modal Content (The Image) -->
  <img class="modal-content" id="img01">
</div>
        
        <table width="90%">
            <tr>
                <td colspan="4">
                    <h2 style="font-weight: bold;">Center for Test </h2>
                </td>
            </tr>
            <tr>
                <td width="39%">
                    <label style="margin-right: 280px;">Preference </label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr width="61%">
                <td>
                    <asp:Label ID="lblPreference" runat="server"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
        </table>



        <div class="panel panel-info" style="width:35%">
        <div style="padding-top: 0px" class="panel-body ">
            <div style="margin-bottom: 25px" class="input-group">
                <span class="input-group-addon">Remarks</span>
                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div style="margin-top: 10px" class="form-group">
                    <asp:Button ID="btnApprove" runat="server" Text="Approve" 
                        CssClass="btn btn-primary" />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" 
                        CssClass="btn btn-primary" />
                            
            </div>
        </div>
    </div>

</div>
<br />
<br />
      <script>
        // Get the modal
        var modal = document.getElementById('myModal');

        // Get the image and insert it inside the modal - use its "alt" text as a caption
        var img = document.getElementById('myImg');
        var modalImg = document.getElementById("img01");
        var captionText = document.getElementById("caption");
        img.onclick = function () {
            modal.style.display = "block";
            modalImg.src = this.src;
            captionText.innerHTML = this.alt;
        }

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        function sendimg(img) {
            console.log("hello world")
            var modal = document.getElementById('myModal');
            var modalImg = document.getElementById("img01");
            var captionText = document.getElementById("caption");
            modal.style.display = "block";
            modalImg.src = img.src;
            captionText.innerHTML = this.alt;
        }
    </script>
</asp:Content>
