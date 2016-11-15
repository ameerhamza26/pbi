Public Class AddUser
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            lblMessage.Visible = False
            If Not IsPostBack Then
                LoadRole()
            End If

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub LoadRole()

        Dim dtRole As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select * from ROLE where Description <> 'Student'"

            dtRole = General.FetchDataTable(strQuery)

            cboRole.DataSource = dtRole
            cboRole.DataTextField = "Description"
            cboRole.DataValueField = "ID"
            cboRole.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtRole Is Nothing Then
                dtRole.Dispose()
            End If
        End Try


    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click

        Dim strQuery As String
        Dim dtUser As DataTable
        Dim strPassword As String

        Try

            lblMessage.Visible = False
            txtEmail.Text = txtEmail.Text.Trim
            txtName.Text = txtName.Text.Trim

            'Validate Controls

            If Not General.IsValidEmail(txtEmail.Text) Then
                Throw New Exception("Invalid Email address.")
            End If

            If txtName.Text = "" Then
                Throw New Exception("Please enter User Name.")
            End If

            strQuery = "Select * from USER where Email = '" + txtEmail.Text + "'"

            dtUser = General.FetchDataTable(strQuery)

            If dtUser.Rows.Count > 0 Then
                Throw New Exception("User Email already exists.")
            End If

            strPassword = RandomPassword() '"us1963"

            strQuery = "Insert into USER(Email,Name,Password,RoleID,Counter) values ('"
            strQuery += LCase(txtEmail.Text) + "','" + txtName.Text + "','" + strPassword + "','"
            strQuery += cboRole.SelectedValue + "',0)"

            General.DoSingleTransaction(strQuery)

            SendPasswordViaEmail(strPassword)

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        Finally
            If Not dtUser Is Nothing Then
                dtUser.Dispose()
            End If
        End Try

    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnCancel.Click
        Response.Redirect("AddUser.aspx")
    End Sub

    Private Function RandomPassword() As String

        Dim s As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        Dim r As New Random
        Dim sb As New StringBuilder

        Try
            For i As Integer = 1 To 6
                Dim idx As Integer = r.Next(0, 35)
                sb.Append(s.Substring(idx, 1))
            Next

            Return sb.ToString()

        Catch ex As Exception
            Throw ex
        End Try

    End Function

    Private Sub SendPasswordViaEmail(ByVal vstrPassword As String)

        Dim strBody As String

        Try
            strBody = "Dear User," + vbCrLf + vbCrLf
            strBody += "Please find below your Credentials." + vbCrLf
            strBody += "Password : " + vstrPassword + vbCrLf
            strBody += "Access URL : http://" + Request.Url.Host + "/UserLogin.aspx" + vbCrLf
            strBody += "Regards," + vbCrLf
            strBody += "Admin"

            General.SendMail("User Credentials", strBody, txtEmail.Text, "", "")

        Catch ex As Exception
            Throw ex
        End Try
    End Sub
End Class