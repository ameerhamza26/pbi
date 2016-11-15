
Public Class BlockUser
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            lblMessage.Visible = False
            If Not IsPostBack Then
                rbUnblocked.Checked = True
                btnSubmit.Text = "Block"
                LoadUser(False)
            End If

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub LoadUser(ByVal blnBlock As Boolean)

        Dim dtUser As DataTable = Nothing
        Dim strQuery As String

        Try

            If blnBlock = True Then
                strQuery = "Select * from USER where RoleID <> 1 and Counter >= 5"
            Else
                strQuery = "Select * from USER where RoleID <> 1 and Counter < 5"
            End If


            dtUser = General.FetchDataTable(strQuery)

            cboUser.DataSource = dtUser
            cboUser.DataTextField = "Name"
            cboUser.DataValueField = "Email"
            cboUser.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtUser Is Nothing Then
                dtUser.Dispose()
            End If
        End Try


    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click



        Dim strQuery As String

        Try
            If rbBlocked.Checked = True Then
                strQuery = "Update USER set Counter=0 where ID='" + cboUser.SelectedValue + "'"
            Else
                strQuery = "Update USER set Counter=5 where ID='" + cboUser.SelectedValue + "'"

            End If
            General.DoSingleTransaction(strQuery)
            Response.Redirect("BlockUser.aspx")

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub rbBlocked_CheckedChanged(sender As Object, e As System.EventArgs) Handles rbBlocked.CheckedChanged
        Try
            btnSubmit.Text = "Unblock"
            LoadUser(True)
        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub rbUnblocked_CheckedChanged(sender As Object, e As System.EventArgs) Handles rbUnblocked.CheckedChanged
        Try
            btnSubmit.Text = "Block"
            LoadUser(False)
        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub
End Class