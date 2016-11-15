Public Class ViewEligibility
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                LoadEligibility()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadEligibility()

        Dim dtRemarks As DataTable
        Dim strQuery As String

        Try

            strQuery = "Select e.* from APPLICATION a,ELIGIBILITY e where "
            strQuery += "a.ApplicationID = e.ApplicationID and a.Email = '" + Session("UserID") + "'"

            dtRemarks = General.FetchDataTable(strQuery)

            If dtRemarks.Rows.Count > 0 Then
                grdResult.DataSource = dtRemarks
                grdResult.DataBind()
            End If


        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

End Class