Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            lblMessage.Visible = False
            Session("UserID") = ""
            Session("Role") = ""
        End If

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click

        Dim dtStudent As DataTable
        Dim strQuery As String

        Try
            lblMessage.Visible = False
            If Not General.IsValidEmail(txtEmail.Text) Then
                Throw New Exception("Invalid Email address.")
            End If

            strQuery = "Select * from STUDENT_MASTER where Email = '" + txtEmail.Text + "'"

            dtStudent = General.FetchDataTable(strQuery)

            If dtStudent.Rows.Count = 0 Then
                Throw New Exception("User does not exist.")
            End If

            If dtStudent.Rows(0).Item("Counter") >= 5 Then
                Throw New Exception("User Account has been diabled. Please contact IBP center.")
            End If

            If dtStudent.Rows(0).Item("Password") <> txtPassword.Text Then
                strQuery = "Update STUDENT_MASTER set Counter = Counter + 1 where Email = '" + txtEmail.Text + "'"

                General.DoSingleTransaction(strQuery)

                Throw New Exception("Invalid Password.")
            End If

            strQuery = "Update STUDENT_MASTER set Counter = 0 where Email = '" + txtEmail.Text + "'"

            General.DoSingleTransaction(strQuery)

            Session("UserID") = LCase(txtEmail.Text)

            Session("Role") = "Student"

            Response.Redirect("Application.aspx")

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        Finally
            If Not dtStudent Is Nothing Then
                dtStudent.Dispose()
            End If
        End Try

    End Sub

    Protected Sub btnRegister_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRegister.Click
        Response.Redirect("Register.aspx")
    End Sub
End Class