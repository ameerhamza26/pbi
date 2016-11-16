<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Application.aspx.vb" Inherits="IBP.Application" %>
<%@ Register TagPrefix="ucDS" TagName="DateSelector" Src="DateSelector.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="https://cloud.github.com/downloads/digitalBush/jquery.maskedinput/jquery.maskedinput-1.3.min.js"></script>
    
   <script type="text/javascript">
       $(function () {
           $("#MainContent_txtDOB").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "1950:2015",
               dateFormat: "dd-mm-yy"
           }).attr('readonly', 'true');
       });

       $(function () {
           $("#MainContent_txtMasterDOP").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "1950:2015",
               dateFormat: "dd-mm-yy"
           }).attr('readonly', 'true');
       });

       $(function () {
           $("#MainContent_txtBachelorDOP").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "1950:2015",
               dateFormat: "dd-mm-yy"
           }).attr('readonly', 'true');
       });

       $(function () {
           $("#MainContent_txtInterDOP").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "1950:2015",
               dateFormat: "dd-mm-yy"
           }).attr('readonly', 'true');
       });

       $(function () {
           $("#MainContent_txtMatricDOP").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "1950:2015",
               dateFormat: "dd-mm-yy"
           }).attr('readonly', 'true');
       });

       $(function () {
           $("#MainContent_txtOtherDOP").datepicker({
               changeMonth: true,
               changeYear: true,
               yearRange: "1950:2015",
               dateFormat: "dd-mm-yy"
           }).attr('readonly', 'true');

           $("#MainContent_txtCNIC").mask("99999-9999999-9");
           $("#MainContent_txtMobile").mask("999-9999999");

       });

       $(function () {


           $('#MainContent_txtMasterCGPA').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtMasterCGPA').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });


           ///////
           $('#MainContent_txtBachelorsCGPA').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtBachelorsCGPA').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });


           ///
           $('#MainContent_txtMasterPercentage').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtMasterPercentage').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });
           ////
           $('#MainContent_txtBachelorsPercentage').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtBachelorsPercentage').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });
           /////

           $('#MainContent_txtIntermediatePercentage').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtIntermediatePercentage').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });
           ///////
           $('#MainContent_txtMatriculationPercentage').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtMatriculationPercentage').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });

           //
           $('#MainContent_txtOtherPercentage').bind('paste', function () {
               var self = this;
               setTimeout(function () {
                   if (!/^\d*(\.\d{1,2})+$/.test($(self).val())) $(self).val('');
               }, 0);
           });

           $('#MainContent_txtOtherPercentage').keypress(function (e) {
               console.log("key pressed")
               var character = String.fromCharCode(e.keyCode)
               var newValue = this.value + character;
               if (isNaN(newValue) || hasDecimalPlace(newValue, 3)) {
                   e.preventDefault();
                   return false;
               }
           });

           function hasDecimalPlace(value, x) {
               var pointIndex = value.indexOf('.');
               return pointIndex >= 0 && pointIndex < value.length - x;
           }
       });


   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
    <h2>Personal Information</h2>
    <hr />            <div class="row contact-wrap">
                <div id="main-contact-form" class="contact-form">
                    <div class="col-sm-6">
                          <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorNAme"  ControlToValidate="txtName" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                        <div class="form-group">                           
                            <label>Name *</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ></asp:TextBox>
                          <%--  <label style="position: absolute; font-size: 11px; top: 59px;">(Please enter your name as per your CNIC)</label>--%>
                       
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorFather" Display="Dynamic"  ControlToValidate="txtFatherName"  runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                        <div class="form-group">                            
                            <label>Father's Name *</label>
                            <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control"></asp:TextBox>
                          <%--  <label style="position: absolute; font-size: 11px; top: 59px;">(Please enter your father name as per your CNIC)</label>--%>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorCnic" Display="Dynamic"  ControlToValidate="txtCNIC" runat="server" ErrorMessage="CNIC is Required"></asp:RequiredFieldValidator>
                        <div class="form-group">                            
                            <label>CNIC *</label>
                            <asp:TextBox ID="txtCNIC"  runat="server" CssClass="form-control txtCNIC"></asp:TextBox>
                            <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidatorCnic" runat="server" ErrorMessage="The CNIC must be in correct format e.g xxxxx-xxxxxxx-x" ForeColor="Red" Font-Bold="true" ControlToValidate="txtCNIC" ValidationExpression="^\d{5}-\d{7}-\d{1}$" ></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Gender *</label>
                                <table class="radio">
                            	    <tr>
		                                <td><asp:RadioButton ID="rbMale" runat="server" CssClass="radio" GroupName="Gender" Text="Male" Checked="true" /></td>
	                                </tr>
                                    <tr>
		                                <td><asp:RadioButton ID="rbFemale" runat="server" CssClass="radio" GroupName="Gender" Text="Female"/></td>
	                                </tr>
                                </table>                        </div>
                    </div>
                    <div class="col-sm-6">
                         <asp:RequiredFieldValidator Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorDob" Display="Dynamic"  ControlToValidate="txtDOB"  runat="server" ErrorMessage="Date of Birth  is Required"></asp:RequiredFieldValidator>
                        <div class="form-group">                            
                            <label>Date of Birth *</label>
                            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <asp:RequiredFieldValidator Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorReligion" Display="Dynamic"  ControlToValidate="cboReligion"  runat="server" ErrorMessage="Religion  is Required"></asp:RequiredFieldValidator>
                        <div class="form-group ">                            
                            <label>Religion *</label>
                            <asp:DropDownList ID="cboReligion" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Contact #</label>
                            <asp:TextBox ID="txtTele" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-3">
                         <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorMobile" Display="Dynamic"  ControlToValidate="txtMobile"  runat="server" ErrorMessage="Mobile No is Required"></asp:RequiredFieldValidator>
                        <div class="form-group">                            
                            <label>Mobile No*</label>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="The Mobile No must be in correct format e.g xxxxx-xxxxxxx-x" ForeColor="Red" Font-Bold="true" ControlToValidate="txtMobile" ValidationExpression="^\d{3}-\d{7}$" ></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="form-group">
                            <label></label>
                            <asp:TextBox ID="txtEG" runat="server" CssClass="form-control stat" Text="(e.g.+92 333-3333333)" ReadOnly="True" BorderStyle="None" BackColor="#FFFFFF"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Email I.D *</label>
                             <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" 
                                ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="form-group">
                            <label>Domicile *</label>
                            <asp:DropDownList ID="cboDomicile" runat="server" CssClass="form-control" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-sm-3">
                         <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorDC" Display="Dynamic"  ControlToValidate="cboDCity"  runat="server" ErrorMessage="Domicile City is Required"></asp:RequiredFieldValidator>
                        <div class="form-group">
                            <label>Domicile City *</label>                          
                            <asp:DropDownList ID="cboDCity" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>

                     <asp:UpdatePanel ID="UpdatePanelIBP" runat="server" UpdateMode="Always">
                        <ContentTemplate>
						
                            
                     <div class="col-sm-6">
                        <div class="form-group">
                            <label>State Bank Employe: *</label>
                                <table class="radio">
                            	    <tr>
		                                <td><asp:RadioButton Checked="true" ID="RadioButtonSBPYES" runat="server"  CssClass="radio" GroupName="SBP" Text="Yes" AutoPostBack="true" OnCheckedChanged="RadioButtonSBPYES_CheckedChanged" /></td>
	                                </tr>
                                    <tr>
		                                <td><asp:RadioButton  ID="RadioButtonSBPNO"  runat="server"  CssClass="radio" GroupName="SBP" Text="No"  AutoPostBack="true" OnCheckedChanged="RadioButtonSBPNO_CheckedChanged1"/></td>
	                                </tr>
                                </table>                        </div>
                    </div>

                   <div class="col-sm-3">
                        <div class="form-group">
                            <label>Pin No </label>
                            <asp:TextBox Enabled="false" ID="txtPinNo" runat="server" CssClass="form-control" ></asp:TextBox>
                        
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="form-group">
                            <label>Designation</label>
                            <asp:TextBox Enabled="false" ID="txtDesig" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                    </div>
                     <div class="col-sm-3">
                        <div class="form-group">
                            <label>City </label>
                            <asp:DropDownList Enabled="false" ID="cboCitySbe" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="form-group">
                            <label>Grade</label>
                            <asp:TextBox Enabled="false" ID="txtGrade" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                    </div>

                               
						</ContentTemplate>                           
                      </asp:UpdatePanel>
                    


                </div>
            </div>
            <div class="row message-box"></div>
            
            
            
            <div class="row contact-wrap">
                <div class="col-sm-6">
                    <div class="form-group">
                        <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorCOR" Display="Dynamic"  ControlToValidate="cboCity"  runat="server" ErrorMessage="City of Residence is Required"></asp:RequiredFieldValidator>
                        <label>City of Residence *</label>
                        <asp:DropDownList ID="cboCity" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-6">
                     <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorAddress" Display="Dynamic"  ControlToValidate="txtAddress"  runat="server" ErrorMessage="Postal Address is Required"></asp:RequiredFieldValidator>
                    <div class="form-group">                         
                        <label>Postal Address *</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row contact-wrap">
              

                <div class="col-sm-6">
                    <div class="form-group">
                        <asp:RequiredFieldValidator  Font-Bold="true" ForeColor="Red" ID="RequiredFieldValidatorImage" Display="Dynamic" runat="server" ControlToValidate="fuImage" ErrorMessage="Image is Required!">
                            </asp:RequiredFieldValidator>
                        <div class="form-group">
                            
                            <label>Image </label>
                            <asp:FileUpload ID="fuImage" runat="server"  CssClass="form-control image-upload" />
                            <span>(600w x 550)</span>
                        </div>


                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="form-group">
                        <asp:FileUpload ID="fuDoc0" runat="server" CssClass="form-control image-upload" />
                        <asp:TextBox ID="txtDocs0" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:FileUpload ID="fuDoc1" runat="server" CssClass="form-control image-upload" />
                        <asp:TextBox ID="txtDocs1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:FileUpload ID="fuDoc2" runat="server" CssClass="form-control image-upload"/>
                        <asp:TextBox ID="txtDocs2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:FileUpload ID="fuDoc3" runat="server" CssClass="form-control image-upload"/>
                        <asp:TextBox ID="txtDocs3" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnAddDocs" runat="server" Text="Add Document" CssClass="btn-sm" />
                        <asp:Button ID="btnRemoveDoc" runat="server" Text="Remove Document" CssClass="btn-sm" />
                    </div>
                </div>

            </div>


            <div class="row contact-wrap">
                <div class="col-sm-12 text-center">
                    <h2>Academic Information</h2>
                    <hr />
                </div>
            </div>

            <div class="row contact-wrap">
                <div class="form-group">
                    <div class="col-sm-12">
                        <table border="1px" width="100%">
                            <tr>
                                <td width="20px" style="text-align: center">
                                    <label>#</label></td>
                                <td width="170px" style="text-align: center">
                                    <label>Academic Qualification</label></td>
                                <td width="110px" style="text-align: center">
                                    <label>Subject/Majors</label></td>
                                <td width="197px" style="text-align: center">
                                    <label>Institute/Board</label></td>
                                <td width="250px">
                                    <table border="1px">
                                        <tr>
                                            <td colspan="5" style="text-align: center">Please provide information regarding CGPA or percentage whichever is applicable</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center">CGPA</td>
                                            <td colspan="3" style="text-align: center">Percentage</td>
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

                            <td style="text-align: center">
                                <label>a</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Master</label>
                                        <asp:DropDownList ID="cboMaster" runat="server" CssClass="form-control master ddlMaster"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-sm-6 master-other-container">
                                    <div class="form-group ">
                                        <asp:TextBox ID="txtOtherMaster" runat="server" CssClass="form-control test"></asp:TextBox>
                                    </div>
                                </div>
                            </td>
                            <td style="padding-top: 10px;">
                                <asp:TextBox ID="txtMasterSubject" runat="server" CssClass="form-control subject-txt-box"></asp:TextBox>
                            </td>
                            <td width="201px">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>University</label>
                                        <asp:DropDownList ID="cboMasterUniversity" runat="server" CssClass="form-control master-university"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-sm-6 university-other-container">
                                    <div class="form-group ">
                                        <asp:TextBox ID="txtOtherMasterUniversity" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <td class="tblmarks" width="75px" style="padding-top: 10px;">
                                            <asp:DropDownList ID="cboMasterGPA" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </td>
                                        <td class="tblmarks" width="73px" style="padding-top: 10px;">
                                            <asp:TextBox ID="txtMasterCGPA" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                            <asp:TextBox ID="txtMasterTM" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                        </td>
                                        <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                            <asp:TextBox ID="txtMasterMO" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                        </td>
                                        <td class="tblmarks" width="60px" style="padding-top: 10px;">
                                            <asp:TextBox ID="txtMasterPercentage" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="padding-top: 10px;">
                                <asp:TextBox ID="txtMasterDOP" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                            </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <label>b</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Bachelors * </label>
                                            <asp:DropDownList ID="cboBachelors" runat="server" CssClass="form-control master ddlBachelors"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 bachelor-other-container">
                                        <div class="form-group ">
                                            
                                            <asp:TextBox ID="txtOtherBachelor" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 bachelor-other-container">
                                        <div class="form-group ">
                                            
                                            <asp:DropDownList ID="cboOtherBachelorsYear" runat="server" CssClass="form-control ddlOtherBachelorsYear"></asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtBachelorSubject" runat="server" CssClass="form-control subject-txt-box"></asp:TextBox>
                                </td>
                                <td>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>University</label>
                                            <asp:DropDownList ID="cboBachelorsUniversity" runat="server" CssClass="form-control ddlBachelorsUniversity"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 Bachelor-other-uni-container">
                                        <div class="form-group ">
                                            
                                            <asp:TextBox ID="txtOtherBachelorUniversity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <table border="0px">
                                        <tr>
                                            <td class="tblmarks" width="80px" style="padding-top: 10px;">
                                                <asp:DropDownList ID="cboBachelorsGPA" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </td>
                                            <td class="tblmarks" width="78px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtBachelorsCGPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="74px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtBachelorsTM" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="74px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtBachelorsMO" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td width="66px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtBachelorsPercentage" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="padding-top: 10px; text-align: center">
                                    <asp:TextBox ID="txtBachelorDOP" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <label>c</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Intermediate *</label>
                                            <asp:DropDownList ID="cboIntermediate" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtIntermediateSubject" runat="server" CssClass="form-control subject-txt-box"></asp:TextBox>
                                </td>
                                <td width="235px">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Board*</label>
                                            <asp:DropDownList ID="cboIntermediateBoard" runat="server" CssClass="form-control ddlIntermediateBoard"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 Intermediate-Board-container">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtOtherIntermediate" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <table border="0px">
                                        <tr>
                                            <td class="tblmarks" width="78px" style="padding-top: 10px; text-align: center">
                                                <label>-</label>
                                            </td>
                                            <td class="tblmarks" width="76px" style="padding-top: 10px; text-align: center">
                                                <label>-</label></td>
                                            <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtIntermediateTM" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtIntermediateMO" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td width="64px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtIntermediatePercentage" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="padding-top: 10px;">
                                    <asp:TextBox ID="txtInterDOP" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <label>d</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Matriculation *</label>
                                            <asp:DropDownList ID="cboMatriculation" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                                <td style="padding-top: 10px;">
                                    <asp:TextBox ID="txtMatriculationSubject" runat="server" CssClass="form-control subject-txt-box"></asp:TextBox>
                                </td>
                                <td width="240px">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Board*</label>
                                            <asp:DropDownList ID="cboMatriculationBoard" runat="server" CssClass="form-control ddlMatriculationBoard"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 Matriculation-other-container">
                                        <div class="form-group ">
                                            <asp:TextBox ID="txtOtherMatriculationBoard" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <table border="0px">
                                        <tr>
                                            <td class="tblmarks" width="78px" style="padding-top: 10px; text-align: center">
                                                <label>-</label>
                                            </td>
                                            <td class="tblmarks" width="76px" style="padding-top: 10px; text-align: center">
                                                <label>-</label></td>
                                            <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtMatriculationTM" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtMatriculationMO" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td width="64px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtMatriculationPercentage" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="padding-top: 10px;">
                                    <asp:TextBox ID="txtMatricDOP" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <label>e</label></td>
                                <td style="padding-top: 15px;">
                                    <div class="col-sm-12">
                                        <label>Other Qualification</label>
                                        <div class="form-group">
                                            <asp:DropDownList ID="cboOtherQualification" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                </td>
                                <td style="padding-top: 20px;">
                                    <asp:TextBox ID="txtOtherSubject" runat="server" CssClass="form-control subject-txt-box"></asp:TextBox>
                                </td>
                                <td width="201px">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>University</label>
                                            <asp:DropDownList ID="cboOtherUniversity" runat="server" CssClass="form-control master-university"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 university-other-container">
                                        <div class="form-group ">
                                            <asp:TextBox ID="txtOtherUniversity" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td class="tblmarks" width="78px" style="padding-top: 10px;">
                                                <asp:DropDownList ID="cboOtherGPA" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </td>
                                            <td class="tblmarks" width="76px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtOtherCGPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtOtherTM" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="70px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtOtherMO" runat="server" CssClass="form-control digitVald"></asp:TextBox>
                                            </td>
                                            <td class="tblmarks" width="64px" style="padding-top: 10px;">
                                                <asp:TextBox ID="txtOtherPercentage" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                
                                <td style="padding-top: 6px;">
                                    <asp:TextBox ID="txtOtherDOP" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <br />
            <div class="row message-box-academic"></div>
            
            <div class="row contact-wrap">
                <div class="form-group">

                    <div class="col-sm-12 text-center">
                        <h2>Center for Test </h2>
                        <hr />
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Preference *</label>
                            <asp:DropDownList ID="cboPreference" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    
                    
                </div>
            </div>

            <div class="form-horizontal">
                <div class="form-group">
                    
                    
                </div>
            </div>
            <div class="row contact-wrap">
                <div class="col-sm-12 text-center">
                    <h2></h2>
                </div>
                

                <div class="col-md-12">

                    <h2>Guidelines</h2>
                    <hr />
                    <ol>
                        <li>The email address and password used in filling the form will help user in logging in next time. (The email and/or password if forgotten are not auto-retrievable).  </li>
                        <li>Its at discretion of IBP to allocate the candidate(s) at any of the test centers in major cities of province. </li>
                        <li>Mobile phones, calculator and/or any other electronic gadgets are strictly prohibited at test center. </li>
                        <li>Applications with required documents should reach IBP office latest by last date of submission of form.  </li>
                        <li>IBP will not be responsible for late receiving of Application forms and documents through Courier or Post.  </li>

                        <li>Original Deposit slip (found on IBP website) duly paid in any of respective banks is mandatory to be attached with the form.  </li>

                    </ol>
                    <h2>Documents to be submitted</h2>
                    <hr />

                    <ul>
                        <li>Original IBP Deposit slip of PKR. 1000/- </li>
                        <li>Attested copy of CNIC</li>
                        <li>3 recent attested passport size photographs </li>
                        <li>Attested academic documents (mark certificate and pass certificate) </li>
                        <li>Printed Copy of filled online application form duly signed by candidate</li>
                    </ul>
                </div>
                <div class="col-sm-12 text-center">
                    <h2>Declaration</h2>
                    <hr />

                    <div class="col-xs-1" style="width: 53px">
                        <asp:CheckBox ID="cbDeclaration" runat="server" />
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label col-xs-10 text-left">I declare that all the information provided is true to the best of my knowledge and any information provided, found false at later stage shall result in termination of the application or holding of result without any responsibility to the Institute of Bankers Pakistan. I also acknowledge that all guidelines/instructions mentioned are duly read and understood.</label>
                    </div>
                </div>
            </div>





            <div class="col-sm-12" style="text-align: center;">
                <div class="messagebox">
                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="alert alert-danger"></asp:Label></div>
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btnSubmit" />
                 <asp:Button ID="btnPrintForm" runat="server" Text="Print Form" 
                    CssClass="btn btn-primary btnCancel" />
            </div>            <br />            <br /></div>
   
</asp:Content>
