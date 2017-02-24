Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dtRole As DataTable = Nothing
        Dim strQuery As String = ""
        Dim intCounter As Integer = 0
        Dim dtSD As DataTable = Nothing

        Try
            If Session("Role") Is Nothing Then
                ltrlMenu.Text = "&nbsp;&nbsp;&nbsp;&nbsp;"
                ltrlLogout.Text = "<li class='active'></li>"
            ElseIf Session("Role") = "" Then
                ltrlMenu.Text = "&nbsp;&nbsp;&nbsp;&nbsp;"
                ltrlLogout.Text = "<li class='active'></li>"
            Else
                If LCase(Session("Role")) = "student" Then
                    ltrlLogout.Text = "<li class='active'><a href='Default.aspx'>Logout</a></li>"
                Else
                    ltrlLogout.Text = "<li class='active'><a href='UserLogin.aspx'>Logout</a></li>"
                End If


                strQuery = "Select p.* from MENU m, ROLE r,PAGES p where p.ID = m.PageID and m.RoleID = r.ID and r.Description = '" + Session("Role") + "' order by p.ID"
                'strQuery = "Select p.* from PAGES p where p.ID in (Select PageID from MENU where ROLEID =5 and PageID < 6)"
                dtRole = General.FetchDataTable(strQuery)

                    ltrlMenu.Text = "<ul class='nav navbar-nav'>"

                    For intCounter = 0 To dtRole.Rows.Count - 1
                        ltrlMenu.Text += "<li class='active'><a href='" + dtRole.Rows(intCounter).Item("Path") + "'>" + dtRole.Rows(intCounter).Item("Name") + "</a></li>"
                    Next

                    ltrlMenu.Text += "</ul>"



                End If


                If Request.RawUrl().Substring(Request.RawUrl.LastIndexOf("/") + 1) = "Application.aspx" Then
                    ltrlHeading.Text = "<h4>APPLICATION FORM</h4><h2>Certified General Banker  </h2><h4> (Six Months Training Program For Fresh Graduate) </h4>"
                    ltrlLogo.Text = "<a class='navbar-brand  navbar-right' href=''><img src='images/TIS.png' class='tis-logo' alt='logo' /></a>"
                Else
                    ltrlHeading.Text = "<h2>The Institute of Bankers Pakistan</h2>"
                    ltrlLogo.Text = ""
                End If


        Catch ex As Exception
            ltrlMenu.Text = "<p>" + ex.Message + "</p>"
        End Try
    End Sub

End Class