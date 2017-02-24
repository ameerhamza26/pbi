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
        Dim dtApp1 As DataTable
        Dim dtApp2 As DataTable
        Dim dtApp3 As DataTable
        Dim dtApplications As DataTable

        Try
            strQuery = "Select a.ApplicationID,sd.*,ar.ExRemarks as Remarks, ar.FinApprove, ar.ExApprove, ar.ExMApprove from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID "
            If cboFStatus.SelectedValue <> "" Then
                strQuery += "and ar.FinApprove = '" + cboFStatus.SelectedValue + "' "
            End If
            'strQuery += "order by ApplicationID"
            'dtApp1 = General.FetchDataTable(strQuery)

            'strQuery = "Select a.ApplicationID,sd.*,ar.ExRemarks as Remarks, ar.FinApprove, ar.ExApprove, ar.ExMApprove from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            'strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID "
            If cboEOStatus.SelectedValue <> "" Then
                strQuery += "and ar.ExApprove = '" + cboEOStatus.SelectedValue + "' "
            End If
            'strQuery += "order by ApplicationID"
            'dtApp2 = General.FetchDataTable(strQuery)

            'strQuery = "Select a.ApplicationID,sd.*,ar.ExRemarks as Remarks, ar.FinApprove, ar.ExApprove, ar.ExMApprove from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            'strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID "
            If cboEMStatus.SelectedValue <> "" Then
                strQuery += "and ar.ExMApprove = '" + cboEMStatus.SelectedValue + "' "
            End If
            strQuery += "order by ApplicationID"
            dtApplications = General.FetchDataTable(strQuery)
            'dtApplications = dtApp1
            'dtApplications.Merge(dtApp2)
            'dtApplications.Merge(dtApp3)
            'dt = dt.DefaultView.ToTable(True, "Id", "Name", "Country")
            'Dim list As List(Of Integer) = New List(Of Integer)
            'For i As Integer = 0 To dtApplications.Rows.Count - 1
            '    If i.Equals(dtApplications.Rows.Count - 1) = False Then
            '        For j As Integer = i + 1 To dtApplications.Rows.Count - 1
            '            If dtApplications.Rows(i)(0).ToString().Equals(dtApplications.Rows(j)(0).ToString()) Then
            '                list.Add(j)
            '                Exit For

            '            End If
            '        Next
            '    End If

            'Next

            ''For Each row In dtApplications.Rows
            ''    Dim index As Integer = 0
            ''    Dim duplicateRow As Boolean = False
            ''    For Each rowj In dtApplications.Rows
            ''        If row.Equals(rowj) = True Then Continue For

            ''        If row(0).ToString().Equals(rowj(0).ToString()) = True Then
            ''            list.Add(index)
            ''        End If
            ''        index = index + 1
            ''    Next


            ''Next

            'Dim result As List(Of Integer) = list.Distinct().ToList
            'result.Sort()
            'result.Reverse()

            'For Each element As Integer In result
            '    dtApplications.Rows.RemoveAt(element)
            'Next

            'dtApplications = dtApplications.DefaultView.ToTable()
            grdApplications.DataSource = dtApplications
            grdApplications.DataBind()

            'For currentRows As Integer = 0 To grdApplications.Rows.Count - 1
            '    Dim rowToCompare = grdApplications.Rows(currentRows)
            '    For row As Integer = 0 To grdApplications.Rows.Count - 1
            '        If rowToCompare.Equals(grdApplications.Rows(row)) Then Continue For
            '        Dim duplicateRow As Boolean = True


            '        For cellIndex As Integer = 0 To grdApplications.Rows(row).Cells.Count - 1
            '            If String.IsNullOrEmpty(rowToCompare.Cells(cellIndex).Text) = False And rowToCompare.Cells(cellIndex).Text.Equals(grdApplications.Rows(row).Cells(cellIndex).Text) = False Then
            '                duplicateRow = False
            '                Exit For
            '            End If
            '        Next

            '        If duplicateRow = True Then
            '            grdApplications.DeleteRow(row)

            '        End If
            '    Next
            'Next


        Catch ex As Exception
            Throw ex
        End Try

    End Sub

    Private Sub grdApplications_PageIndexChanging(sendes As Object, e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdApplications.PageIndexChanging

        grdApplications.PageIndex = e.NewPageIndex
        LoadApplications()
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