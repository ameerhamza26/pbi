Public Class UserLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            lblMessage.Visible = False
            Session("UserID") = ""
            Session("Role") = ""
        End If

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click

        Dim dtUser As DataTable
        Dim dtMenu As DataTable
        Dim strQuery As String

        Try
            lblMessage.Visible = False
            If Not General.IsValidEmail(txtEmail.Text) Then
                Throw New Exception("Invalid Email address.")
            End If

            strQuery = "Select * from USER where Email = '" + txtEmail.Text + "'"

            dtUser = General.FetchDataTable(strQuery)

            If dtUser.Rows.Count = 0 Then
                Throw New Exception("User does not exist.")
            End If

            If dtUser.Rows(0).Item("Counter") >= 5 Then
                Throw New Exception("User Account has been diabled. Please contact IBP center.")
            End If

            If dtUser.Rows(0).Item("Password") <> txtPassword.Text Then
                strQuery = "Update USER set Counter = Counter + 1 where Email = '" + txtEmail.Text + "'"

                General.DoSingleTransaction(strQuery)

                Throw New Exception("Invalid Password.")
            End If

            strQuery = "Update USER set Counter = 0 where Email = '" + txtEmail.Text + "'"

            General.DoSingleTransaction(strQuery)
            Session("UserRole") = dtUser.Rows(0).Item("RoleID")
            Session("UserID") = LCase(txtEmail.Text)

            strQuery = "Select p.Path,r.Description from MENU m,PAGES p, ROLE r where m.PageID = p.ID "
            strQuery += "and m.RoleID = r.ID and r.ID = " + dtUser.Rows(0).Item("RoleID").ToString() + " order by p.ID"

            dtMenu = General.FetchDataTable(strQuery)

            If dtMenu.Rows.Count > 0 Then
                Session("Role") = dtMenu.Rows(0).Item("Description")
                Response.Redirect(dtMenu.Rows(0).Item("Path"))
            Else
                Throw New Exception("Invalid Role.")
            End If

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        Finally
            If Not dtUser Is Nothing Then
                dtUser.Dispose()
            End If
            If Not dtMenu Is Nothing Then
                dtMenu.Dispose()
            End If
        End Try

    End Sub
End Class