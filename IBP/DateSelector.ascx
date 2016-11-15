<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DateSelector.ascx.vb" Inherits="IBP.DateSelector" %>
<LINK href="cal/popcalendar.css" type="text/css" rel="stylesheet">
<script language="javascript" src="cal/popcalendar.js"></script>
<TABLE id="tbl_control" cellSpacing="0" cellPadding="0" border="0" width="100%">
	<TR>
		<TD align="center" width="100%"><asp:textbox id="txt_Date" runat="server" CssClass="form-control" ReadOnly="True"></asp:textbox>
	</TR>
</TABLE>
