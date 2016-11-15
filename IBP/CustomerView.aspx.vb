Public Class CustomerView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                LoadApplications()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadApplications()

        Dim strQuery As String
        Dim dtApplications As DataTable

        Try
            strQuery = "Select a.ApplicationID,sd.*,ar.FinRemarks as Remarks from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID and "
            strQuery += "ar.ExMApprove = 'Y' order by ApplicationID"

            dtApplications = General.FetchDataTable(strQuery)

            grdApplications.DataSource = dtApplications
            grdApplications.DataBind()

        Catch ex As Exception
            Throw ex
        End Try

    End Sub

    Private Sub grdApplications_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grdApplications.RowCommand
        Dim intIndex As Integer

        Try
            If e.CommandName = "View" Then
                intIndex = e.CommandArgument
                Session("ApplicationID") = grdApplications.Rows(intIndex).Cells(0).Text
                Response.Redirect("ViewDetails.aspx")
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

End Class