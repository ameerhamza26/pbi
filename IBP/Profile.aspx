<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Profile.aspx.vb" Inherits="IBP.Profile" %>
<%@ Register TagPrefix="ucDS" TagName="DateSelector" Src="DateSelector.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#MainContent_txtDOB").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "1950:2015",
                dateFormat: "dd-mm-yy"
            }).attr('readonly', 'true');
        });  
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <h2>Personal Information</h2>
    <hr />            <div class="row contact-wrap">
                <div id="main-contact-form" class="contact-form">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Name *</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                            <label style="position: absolute; font-size: 11px; top: 59px;">(Please enter your name as per your CNIC)</label>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Father's Name *</label>
                            <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control"></asp:TextBox>
                            <label style="position: absolute; font-size: 11px; top: 59px;">(Please enter your father name as per your CNIC)</label>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>CNIC *</label>
                            <asp:TextBox ID="txtCNIC" runat="server" CssClass="form-control txtCNIC"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Gender *</label>
                                <table class="radio">
                            	    <tr>
		                                <td><asp:RadioButton ID="rbMale" runat="server" CssClass="radio" GroupName="Gender" Text="Male" /></td>
	                                </tr>
                                    <tr>
		                                <td><asp:RadioButton ID="rbFemale" runat="server" CssClass="radio" GroupName="Gender" Text="Female"/></td>
	                                </tr>
                                </table>                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Date of Birth *</label>
                            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control date-pick"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-6">
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
                        <div class="form-group">
                            <label>Mobile No*</label>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <div class="form-group">
                            <label>Domicile City *</label>
                            <asp:DropDownList ID="cboDCity" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
          
            
            
            <div class="row contact-wrap">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>City of Residence </label>
                        <asp:DropDownList ID="cboCity" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Postal Address *</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row contact-wrap">
                <div class="col-sm-6">
                    <div class="form-group">
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
    
            <div class="col-sm-12" style="text-align: center;">
                <div class="messagebox">
                    
                    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="alert alert-danger"></asp:Label>
                 </div>
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btnSubmit" />
                 <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary btnCancel" />
            </div>            <br />            <br /></div>
</asp:Content>
