Public Class Register1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblMessage.Visible = False
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnCancel.Click
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click

        Dim strQuery As String
        Dim dtStudent As DataTable

        Try

            lblMessage.Visible = False
            txtPassword.Text = txtPassword.Text.Trim
            txtConfirm.Text = txtConfirm.Text.Trim

            'Validate Controls

            If Not General.IsValidEmail(txtEmail.Text) Then
                Throw New Exception("Invalid Email address.")
            End If

            strQuery = "Select * from STUDENT_MASTER where Email = '" + txtEmail.Text + "'"

            dtStudent = General.FetchDataTable(strQuery)

            If dtStudent.Rows.Count > 0 Then
                Throw New Exception("User already registered.")
            End If

            If txtPassword.Text = "" Then
                Throw New Exception("Enter valid password")
            End If

            If txtConfirm.Text = "" Then
                Throw New Exception("Enter valid new password")
            End If

            If txtPassword.Text.Length < 6 Then
                Throw New Exception("New password should contain atleast 6 characters")
            End If

            If txtConfirm.Text <> txtPassword.Text Then
                Throw New Exception("Password and Confirm Password should be same")
            End If

            strQuery = "Insert into STUDENT_MASTER (Email,Password,Counter) values ('"
            strQuery += LCase(txtEmail.Text) + "','" + txtPassword.Text + "',0)"

            General.DoSingleTransaction(strQuery)

            Session("UserID") = LCase(txtEmail.Text)
            Session("Role") = "Student"


            ''   SendPasswordViaEmail(txtPassword.Text)

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


    Private Sub SendPasswordViaEmail(ByVal vstrPassword As String)

        Dim strBody As String

        Try
            strBody = "Dear User," + vbCrLf + vbCrLf
            strBody += "Please find below your Credentials." + vbCrLf
            strBody += "Password : " + vstrPassword + vbCrLf
            strBody += "Access URL : http://" + Request.Url.Host + "/Default.aspx" + vbCrLf
            strBody += "Regards," + vbCrLf
            strBody += "Admin"

            General.SendMail("User Credentials", strBody, txtEmail.Text, "", "")

        Catch ex As Exception
            Throw ex
        End Try
    End Sub

End Class