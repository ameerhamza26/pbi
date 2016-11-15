Public Class ViewResult
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                LoadResult()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub LoadResult()

        Dim dtResult As DataTable
        Dim strQuery As String

        Try

            strQuery = "Select r.* from APPLICATION a, RESULT r where "
            strQuery += "a.ApplicationID = r.ApplicationID and a.Email = '" + Session("UserID") + "'"

            dtResult = General.FetchDataTable(strQuery)

            grdResult.DataSource = dtResult
            grdResult.DataBind()

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try


    End Sub

End Class