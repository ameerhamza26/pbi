Public Class ExMView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                cboFStatus.Items.Clear()
                cboFStatus.Items.Add(New ListItem("All", ""))
                cboFStatus.Items.Add(New ListItem("Pending", "P"))
                cboFStatus.Items.Add(New ListItem("Approved", "Y"))
                cboFStatus.Items.Add(New ListItem("Rejected", "N"))

                cboEOStatus.Items.Clear()
                cboEOStatus.Items.Add(New ListItem("All", ""))
                cboEOStatus.Items.Add(New ListItem("Pending", "P"))
                cboEOStatus.Items.Add(New ListItem("Approved", "Y"))
                cboEOStatus.Items.Add(New ListItem("Rejected", "N"))

                cboEMStatus.Items.Clear()
                cboEMStatus.Items.Add(New ListItem("All", ""))
                cboEMStatus.Items.Add(New ListItem("Pending", "P"))
                cboEMStatus.Items.Add(New ListItem("Approved", "Y"))
                cboEMStatus.Items.Add(New ListItem("Rejected", "N"))
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadApplications()

        Dim strQuery As String
        Dim dtApplications As DataTable

        Try
            strQuery = "Select a.ApplicationID,sd.*,ar.ExRemarks as Remarks from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID "
            If cboFStatus.SelectedValue <> "" Then
                strQuery += "and ar.FinApprove = '" + cboFStatus.SelectedValue + "' "
            End If
            If cboEOStatus.SelectedValue <> "" Then
                strQuery += "and ar.ExApprove = '" + cboFStatus.SelectedValue + "' "
            End If
            If cboEMStatus.SelectedValue <> "" Then
                strQuery += "and ar.ExMApprove = '" + cboFStatus.SelectedValue + "' "
            End If
            strQuery += "order by ApplicationID"

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

    Private Sub btnFetch_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs) Handles btnFetch.Command

        Try
            LoadApplications()
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub
End Class