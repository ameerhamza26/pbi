<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="PrintAppForm.aspx.vb" Inherits="IBP.PrintAppForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript">
           function printContent(e1) {

               var restorepage = document.body.innerHTML;
               var printcontent = document.getElementById(e1).innerHTML;
               document.getElementById('hidebtn').style.display = 'none';
               document.body.innerHTML = printcontent;
               window.print();

               document.body.innerHTML = restorepage;
               return false;
           };

           $(document).ready(function () {
               $("#header").hide();
           });

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <a href="#" onclick="printContent('printDiv')" style="color: #0066CC; float: right; margin-right: 235px; margin-top: 35px;" id="hidebtn">Print Report</a>
    <section style="margin: auto; width: 1170px;" id="printDiv">
        <table>
            <tr>
                <td>
                    <img src="images/logo.png" alt="logo" /></td>
                <td>
                    <h4 style="text-align: center; width: 820px; color: #000;">APPLICATION FORM</h4>
                    <h2 style="text-align: center; width: 820px; color: #000;">Certified General Banker</h2>
                    <h4 style="text-align: center; width: 820px; color: #000;"> (Six Months Training Program For Fresh Graduate) </h4>
                </td>
                <td>
                    <img src="images/TIS.png" class="tis-logo" alt="logo" />
                </td>
            </tr>
        </table>
        <table width="90%">
            <tr>
                <td colspan="4">
                    <h2 style="font-weight: bold;">Personal Information</h2>
                </td>
            </tr>
            <tr>
                <td style="width: 10%;">
                    <label>Name</label>
                </td>
                <td style="width: 10%; bottom: 5px; position: relative;">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>

                <td style="width: 10%; bottom: 4px; position: relative;">
                    <label>Application ID</label>
                </td>
                <td style="width: 11%; bottom: 5px; position: relative;">
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

        
        <table width="90%">
            
            

            
            <tr>
                <td>
                    
                </td>

                <td>
                    
                </td>

                <td>
                    
                </td>

                <td>
                    
                </td>
            </tr>
            
            
            
            <tr>
                <td>
                    
                </td>
                <td>
                    
                </td>
                <td>
                    
                </td>
                <td>
                    
                </td>
                <td>
                    
                </td>
            </tr>

        </table>

        
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

        <table width="900px">
            <tr>
                <td>
                    <h2 style="font-weight: bold;">Guidelines</h2>
                    <ol>
                        <li>The email address and password used in filling the form will help user in logging in next time. (The email and/or password if forgotten are not auto-retrievable). </li>
                        <li>Its at discretion of IBP to allocate the candidate(s) at any of the test centers in major cities of province. </li>
                        <li>Mobile phones, calculator and/or any other electronic gadgets are strictly prohibited at test center. </li>
                        <li>Applications with required documents should reach IBP office latest by last date of submission of form. </li>
                        <li>IBP will not be responsible for late receiving of Application forms and documents through Courier or Post. </li>
                       
                        <li>Original Deposit slip (found on IBP website) duly paid in any of respective banks is mandatory to be attached with the form. </li>

                    </ol>
                </td>
            </tr>
            <tr>
                <td>
                    <h2 style="font-weight: bold;">Declaration</h2>
                    <p>
                        I declare that all the information provided is true to the best of my knowledge and any information provided, found false at later stage shall result in
                         
                        termination of the application or holding of result without any responsibility to the Institute of Bankers Pakistan. I also acknowledge that all 
                      
                        guidelines/instructions mentioned are duly read and understood.
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p style="width: 250px; float: right; text-align: center; font-size: 18px; font-weight: bold; color: #000; border-top: 1px solid #000; padding-top: 15px; margin-top: 60px;">
                        Signature
                    </p>
                </td>
            </tr>
        </table>
        <table style="page-break-before: always;">
            <tr>
                <td></td>
            </tr>
        </table>
        
        <table width="1090px" border="0" style="line-height: 12px; position: relative; top: -25px;">
            <tr>
                <td colspan="2">
                    <table width="100%" style="left: 0px !important;">
                        <tr style="border-bottom: 1px solid #000;">
                            <td width="5%">
                                <img src="images/logo.png" alt="logo" />
                            </td>
                            <td width="65%" style="padding-top: 0.8% !important;">
                                <h4>The Institute of Bankers Pakistan</h4>
                            </td>
                            <td width="20%" style="padding-top: 0.8% !important;">
                                <h2>Online Deposit Slip<br />
                                </h2>
                                <h3>IBP Copy</h3>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="35%">
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td colspan="3">
                                <p>Please deposit fees in only one of the following bank & tick the relevent bank. <span style="font-size: 7px; line-height: 10px;">(Accepted at all HBL & UBL Branches)</span></p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Branch Name:</label></td>

                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Branch Code:</label></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Date:</label></td>
                        </tr>
                    </table>
                    <br />
                    <table width="99%" border="1" style="left: 0px !important;">
                        <tr>
                            <td width="200px" colspan="3">

                                <img style="margin-left: 10px; height: auto; width: 38px;"
                                    src="images/hbl-logo.png" />
                                <label>Habib Bank LTD </label>
                                <img style="float: right; margin-right: 10px; height: auto; width: 19px;"
                                    src="images/check-box.png" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Account Title:  <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">The Institute of Bankers Pakistan</span></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="margin-left: 10px;">CMD Account Number:   <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">0042-79915992-03</span> </label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td width="200px" colspan="3">

                                <img style="margin-left: 10px; height: auto; width: 38px;"
                                    src="images/ubl-logo.png" />
                                <label>United Bank LTD</label>
                                <img style="float: right; margin-right: 10px; height: auto; width: 19px;"
                                    src="images/check-box.png" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Account Title: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">The Institute of Bankers Pakistan</span></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="margin-left: 10px;">MCA Account Number: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">223904295 </span></label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td valign="top">
                    <table width="99%" style="left: 0px !important;" border="0px">
                        <tr>
                            <td width="200px" style="height: 35px !important;">
                                <label>CNIC No:</label>
                                 <span style="font-size: 18px; margin-left: 82px; font-weight:bold;height:0px;margin-bottom:15px"> 
                                    <asp:Label ID="lblIBPCNIC" runat="server"></asp:Label>
                                 </span>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                               <label>Full Name:</label>
                              <span style="font-size: 18px; margin-left: 72px; font-weight:bold;height:0px;margin-bottom:15px">    
                                <asp:Label ID="lblIBPName" runat="server"></asp:Label>
                              </span>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                                <label>Father’s Name:</label>
                               <span style="margin-left: 42px;">     
                                <asp:Label ID="lblIBPFName" runat="server"></asp:Label>
                               </span><hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                                <label>Applicant’s Address:</label>
                                <asp:Label ID="lblIBPAddress" runat="server"></asp:Label>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="340px" style="height: 35px !important;">
                                            <label>Amount PKR:</label>
                                            <label><span>1000/-</span></label><hr />


                                        </td>
                                        <td style="border: 0px; width: 50px;"></td>
                                        <td style="height: 35px !important;">
                                            <label style="width: 400px;">
                                                Amount in Words: <span>One Thousand Rupees Only.  </span>
                                            </label>
                                            <hr />
                                        </td>
                                        <td style="height: 35px !important;" width="160px">
                                            <p style="margin: 0px!important; padding: 0px!important; font-size: 10px">Non Refundable / Non Transferable</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="280px" style="height: 35px !important;" colspan="3">

                                            <label>
                                                <p style="font-size: 8px;">
                                                    I Understand that the transaction will be carried out entirely at my risk and I Accept the terms and conditions in this regard
                                                </p>
                                            </label>

                                        </td>

                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="280px" valign="bottom"></td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px" valign="bottom"></td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px" valign="bottom"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="800px">
                                            <p style="color: Red; font-size: 10px; font-weight: bold; margin-bottom: 0px !important;">Note:</p>
                                            <p style="font-size: 7px; line-height: 10px;">
                                                • Please Stamp all copies of deposit slip.
                                                <br />
                                                • The Bank must return “Applicant’s copy” & “IBP copy ” to the candidate.
                                                <br />
                                                • Application Form will not be entertained without Origonal Deposit Slip (IBP Copy).<br />
                                                • Mode of payment would be cash only
                                            </p>

                                        </td>
                                        <td width="280px">
                                            <hr />
                                            <p style="text-align: center;">Applicant’s Signature</p>
                                        </td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px">
                                            <hr />
                                            <p style="text-align: center;">Bank Officer</p>
                                        </td>
                                        <td style="border: 0px; width: 100px;"></td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table width="100%" style="left: 0px !important;">
            <tr>
                <td>
                    <hr style="border-top: 2px dashed #000; margin-left: 0px !important; margin-top: -11px;" />
                </td>
            </tr>
        </table>
        
        <table width="1090px" border="0" style="position: relative; line-height: 12px; top: -15px;">
            <tr>
                <td colspan="2">

                    <table width="100%" style="left: 0px !important;">
                        <tr style="border-bottom: 1px solid #000;">
                            <td width="5%"><a style="margin-left: 0; margin-top: 12px;" href="#">
                                <img src="images/logo.png" alt="logo" />
                            </a></td>
                            <td width="65%">
                                <h4>The Institute of Bankers Pakistan</h4>
                            </td>
                            <td width="20%" style="padding-top: 0.8% !important;">
                                <h2>Online Deposit Slip<br />
                                </h2>
                                <h3>Applicant's Copy</h3>

                            </td>

                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="35%">
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td colspan="3">
                                <p>
                                    Please deposit fees in only one of the following bank & tick the relevent bank. <span style="font-size: 7px; line-height: 10px;">(Accepted at all HBL & UBL Branches)</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Branch Name:</label></td>

                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Branch Code:</label></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Date:</label></td>
                        </tr>
                    </table>
                    <br />
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td width="200px" colspan="3">

                                <img style="margin-left: 10px; height: auto; width: 38px;"
                                    src="images/hbl-logo.png" />
                                <label>Habib Bank LTD</label>
                                <img style="float: right; margin-right: 10px; height: auto; width: 19px;"
                                    src="images/check-box.png" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">
                                    Account Title: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">The Institute of Bankers Pakistan</span></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="margin-left: 10px;">CMD Account Number: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">0042-79915992-03 </span></label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td width="200px" colspan="3">

                                <img style="margin-left: 10px; height: auto; width: 38px;"
                                    src="images/ubl-logo.png" />
                                <label>United Bank LTD</label>
                                <img style="float: right; margin-right: 10px; height: auto; width: 19px;"
                                    src="images/check-box.png" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Account Title: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">The Institute of Bankers Pakistan</span></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="margin-left: 10px;">MCA Account Number: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">223904295 </span></label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td valign="top">
                    <table width="99%" style="left: 0px !important;" border="0px">
                        <tr>
                            <td width="200px" style="height: 35px !important;">
                                <label>CNIC No:</label>
                                 <span style="font-size: 18px; margin-left: 82px; font-weight:bold;height:0px;margin-bottom:15px"> 
                                    <asp:Label ID="lblACCNIC" runat="server"></asp:Label>
                                 </span>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                               <label>Full Name:</label>
                              <span style="font-size: 18px; margin-left: 72px; font-weight:bold;height:0px;margin-bottom:15px">    
                                <asp:Label ID="lblACName" runat="server"></asp:Label>
                              </span>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                                <label>Father’s Name:</label>
                               <span style="margin-left: 42px;">     
                                <asp:Label ID="lblACFName" runat="server"></asp:Label>
                               </span><hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                                <label>Applicant’s Address:</label>
                                <asp:Label ID="lblACAddress" runat="server"></asp:Label>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="340px" style="height: 35px !important;">
                                            <label>Amount PKR:</label>
                                            <label><span>1000/-</span></label><hr />


                                        </td>
                                        <td style="border: 0px; width: 50px;"></td>
                                        <td style="height: 35px !important;">
                                            <label style="width: 400px;">
                                                Amount in Words: <span>One Thousand Rupees Only.  </span>
                                            </label>
                                            <hr />
                                        </td>
                                        <td style="height: 35px !important;" width="160px">
                                            <p style="margin: 0px!important; padding: 0px!important; font-size: 10px">Non Refundable / Non Transferable</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="280px" style="height: 35px !important;" colspan="3">

                                            <label>
                                                <p style="font-size: 8px;">
                                                    I Understand that the transaction will be carried out entirely at my risk and I Accept the terms and conditions in this regard
                                                </p>
                                            </label>

                                        </td>

                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="280px" valign="bottom"></td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px" valign="bottom"></td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px" valign="bottom"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="800px">
                                            <p style="color: Red; font-size: 10px; font-weight: bold; margin-bottom: 0px !important;">Note:</p>
                                            <p style="font-size: 7px; line-height: 10px;">
                                                • Please Stamp all copies of deposit slip.
                                                <br />
                                                • The Bank must return “Applicant’s copy” & “IBP copy ” to the candidate.
                                                <br />
                                                • Application Form will not be entertained without Origonal Deposit Slip (IBP Copy).<br />
                                                • Mode of payment would be cash only
                                            </p>

                                        </td>
                                        <td width="280px">
                                            <hr />
                                            <p style="text-align: center;">Applicant’s Signature</p>
                                        </td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px">
                                            <hr />
                                            <p style="text-align: center;">Bank Officer</p>
                                        </td>
                                        <td style="border: 0px; width: 100px;"></td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>
        <table width="100%" style="left: 0px !important;">
            <tr>
                <td>
                    <hr style="border-top: 2px dashed #000; margin-left: 0px !important; margin-top: -11px;" />
                </td>
            </tr>
        </table>

        
        <table width="1090px" border="0" style="position: relative; top: -15px; line-height: 12px;">
            <tr>
                <td colspan="2">

                    <table width="100%" style="left: 0px !important;">
                        <tr style="border-bottom: 1px solid #000;">
                            <td width="5%"><a style="left: 0px !important;" href="#">
                                <img src="images/logo.png" alt="logo" />
                            </a></td>
                            <td width="65%">
                                <h4>The Institute of Bankers Pakistan</h4>
                            </td>
                            <td width="20%">
                                <h2>Online Deposit Slip<br />
                                </h2>
                                <h3>Bank Copy</h3>

                            </td>

                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="35%">
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td colspan="3">
                                <p>Please deposit fees in only one of the following bank & tick the relevent bank. <span style="font-size: 7px; line-height: 10px;">(Accepted at all HBL & UBL Branches)</span></p>
                            </td>
                            <tr>
                                <td colspan="2">
                                    <label style="margin-left: 10px;">Branch Name:</label></td>

                            </tr>
                            <tr>
                                <td colspan="2">
                                    <label style="margin-left: 10px;">Branch Code:</label></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <label style="margin-left: 10px;">Date:</label></td>
                            </tr>
                    </table>
                    <br />
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td width="200px" colspan="3">

                                <img style="margin-left: 10px; height: auto; width: 38px;"
                                    src="images/hbl-logo.png" />
                                <label>Habib Bank LTD</label>
                                <img style="float: right; margin-right: 10px; height: auto; width: 19px;"
                                    src="images/check-box.png" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Account Title: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">The Institute of Bankers Pakistan</span></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="margin-left: 10px;">CMD Account Number: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">0042-79915992-03</span> </label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="left: 0px !important;" width="99%" border="1">
                        <tr>
                            <td width="200px" colspan="3">

                                <img style="margin-left: 10px; height: auto; width: 38px;"
                                    src="images/ubl-logo.png" />
                                <label>United Bank LTD</label>
                                <img style="float: right; margin-right: 10px; height: auto; width: 19px;"
                                    src="images/check-box.png" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label style="margin-left: 10px;">Account Title:<span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;"> The Institute of Bankers Pakistan</span></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="margin-left: 10px;">MCA Account Number: <span style="font-size: 12px; line-height: 10px; font-weight: normal; margin-left: 20px;">223904295</span> </label>
                            </td>
                        </tr>
                    </table>
                </td>

                <td valign="top">
                    <table width="99%" style="left: 0px !important;" border="0px">
                        <tr>
                            <td width="200px" style="height: 35px !important;">
                                <label>CNIC No:</label>
                                 <span style="font-size: 18px; margin-left: 82px; font-weight:bold;height:0px;margin-bottom:15px"> 
                                    <asp:Label ID="lblBCCNIC" runat="server"></asp:Label>
                                 </span>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                               <label>Full Name:</label>
                              <span style="font-size: 18px; margin-left: 72px; font-weight:bold;height:0px;margin-bottom:15px">    
                                <asp:Label ID="lblBCName" runat="server"></asp:Label>
                              </span>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                                <label>Father’s Name:</label>
                               <span style="margin-left: 42px;">     
                                <asp:Label ID="lblBCFName" runat="server"></asp:Label>
                               </span><hr />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 35px !important;">
                                <label>Applicant’s Address:</label>
                                <asp:Label ID="lblBCAddress" runat="server"></asp:Label>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="340px" style="height: 35px !important;">
                                            <label>Amount PKR:</label>
                                            <label><span>1000/-</span></label><hr />


                                        </td>
                                        <td style="border: 0px; width: 50px;"></td>
                                        <td style="height: 35px !important;">
                                            <label style="width: 400px;">
                                                Amount in Words: <span>One Thousand Rupees Only.  </span>
                                            </label>
                                            <hr />
                                        </td>
                                        <td style="height: 35px !important;" width="160px">
                                            <p style="margin: 0px!important; padding: 0px!important; font-size: 10px">Non Refundable / Non Transferable</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="280px" style="height: 35px !important;" colspan="3">

                                            <label>
                                                <p style="font-size: 8px;">
                                                    I Understand that the transaction will be carried out entirely at my risk and I Accept the terms and conditions in this regard
                                                </p>
                                            </label>

                                        </td>

                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="280px" valign="bottom"></td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px" valign="bottom"></td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px" valign="bottom"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" style="left: 0px !important;">
                                    <tr>
                                        <td width="800px">
                                            <p style="color: Red; font-size: 10px; font-weight: bold; margin-bottom: 0px !important;">Note:</p>
                                            <p style="font-size: 7px; line-height: 10px;">
                                                • Please Stamp all copies of deposit slip.
                                                <br />
                                                • The Bank must return “Applicant’s copy” & “IBP copy ” to the candidate.
                                                <br />
                                                • Application Form will not be entertained without Origonal Deposit Slip (IBP Copy).<br />
                                                • Mode of payment would be cash only
                                            </p>

                                        </td>
                                        <td width="280px">
                                            <hr />
                                            <p style="text-align: center;">Applicant’s Signature</p>
                                        </td>
                                        <td style="border: 0px; width: 100px;"></td>
                                        <td width="280px">
                                            <hr />
                                            <p style="text-align: center;">Bank Officer</p>
                                        </td>
                                        <td style="border: 0px; width: 100px;"></td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>
    </section>


</asp:Content>
