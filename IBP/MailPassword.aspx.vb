Public Class MailPassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            lblMessage.Visible = False
            If Not IsPostBack Then
                LoadUser()
            End If

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub LoadUser()

        Dim dtUser As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select u.Email,u.Password from USER u, ROLE r where u.RoleID = r.ID and Description <> 'Student'"

            dtUser = General.FetchDataTable(strQuery)

            cboUser.DataSource = dtUser
            cboUser.DataTextField = "Email"
            cboUser.DataValueField = "Password"
            cboUser.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtUser Is Nothing Then
                dtUser.Dispose()
            End If
        End Try


    End Sub

    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSend.Click

        Dim strBody As String
        Dim strPass As String
        Dim strEmail As String

        Try
            strPass = cboUser.SelectedValue
            strEmail = cboUser.SelectedItem.Text


            strBody = "Dear User," + vbCrLf + vbCrLf
            strBody += "Please find below your Credentials." + vbCrLf
            strBody += "Password : " + strPass + vbCrLf
            strBody += "Access URL : " + Request.Url.ToString().Substring(0, Request.Url.ToString().LastIndexOf("/")) + "/UserLogin.aspx" + vbCrLf
            strBody += "Regards," + vbCrLf
            strBody += "Admin"

            General.SendMail("User Credentials", strBody, strEmail, "", "")

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub
End Class