Imports System.IO

Public Module GlobalVariables
   Public dtApplications as DataTable
End Module

Public Class UploadEligibility
    Inherits System.Web.UI.Page



    'Dim dtApplications As DataTable
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strQuery As String
        Dim dt As DataTable
        Try
            strQuery = "select * from APPLICATION where EligibleFlag = 0"
            dt = General.FetchDataTable(strQuery)

            If dt.Rows.Count > 0 Then
                btnFetch.Enabled = True
            Else
                btnFetch.Enabled = False
            End If
            btnUpload.Enabled = False
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

        btnSubmit.Visible = False
        btnCancel.Visible = False
        grdResult.Visible = False

    End Sub

    Private Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        'Try
        '    'If fuResult.HasFile Then
        '    '    fuResult.PostedFile.SaveAs(Server.MapPath("Eligibile.csv"))
        '    '    BindGrid()
        '    'End If

        'Catch ex As Exception
        '    lblMessage.Text = ex.Message
        'End Try

       Dim intCounter As Integer
        Dim strQuery As String

        Try
            strQuery = ""
            For intCounter = 0 To dtApplications.Rows.Count -1
                strQuery += "Insert into ELIGIBILITY(ApplicationID,Status,Reason) values ('"

                strQuery += dtApplications.Rows(intCounter)(0).ToString() + "','" + dtApplications.Rows(intCounter)(24).ToString() + "','" +  dtApplications.Rows(intCounter)(20).ToString()+ "')|||"
                'strQuery += grdApplications.Rows(intCounter).Cells(0).Text + "','" + grdApplications.Rows(intCounter).Cells(8).Text + "','" + grdApplications.Rows(intCounter).Cells(9).Text 
            Next

            General.DoMultiTransaction(strQuery)

            strQuery = "Update APPLICATION set EligibleFlag= 1"
            General.DoSingleTransaction(strQuery)
            btnFetch.Enabled = False
            btnUpload.Enabled = False
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub


    Private Sub LoadApplications()

        Dim strQuery As String


        Try
            'strQuery = "Select a.ApplicationID,sd.*,ar.ExRemarks as Remarks, ar.FinApprove, ar.ExApprove, ar.ExMApprove from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            'strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID "
            
            strQuery = "SELECT a.ApplicationID, sd.*, ar.ExRemarks AS Remarks,ar.FinApprove,ar.ExApprove,ar.ExMApprove,(case when (ar.ExApprove = 'Y' and ar.FinApprove = 'Y' and ar.ExMApprove = 'Y' ) then 'Y' else 'N' end) as Eligible FROM APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar WHERE a.Email = sd.Email AND ar.ApplicationID = a.ApplicationID and a.EligibleFlag = 0 ORDER BY ApplicationID "
            dtApplications = General.FetchDataTable(strQuery)
            
            grdApplications.DataSource = dtApplications
            grdApplications.DataBind()




        Catch ex As Exception
            Throw ex
        End Try

    End Sub

    Private Sub btnFetch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFetch.Click
        LoadApplications()
        btnUpload.Enabled = True
        btnFetch.Enabled = False
    End Sub


    Private Sub grdApplications_PageIndexChanging(sendes As Object, e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdApplications.PageIndexChanging

        grdApplications.PageIndex = e.NewPageIndex
        LoadApplications()
        btnUpload.Enabled = True
        btnFetch.Enabled = False
    End Sub

    Private Sub BindGrid()
        Dim objds As DataSet

        Try
            objds = ParseFile()
            grdResult.DataSource = objds.Tables(0)
            grdResult.DataBind()
            grdResult.Visible = True
            btnSubmit.Visible = True
            btnCancel.Visible = True

        Catch ex As Exception
            Throw ex
        End Try
    End Sub


    Private Function ParseFile() As DataSet
        Dim objds As DataSet
        Dim objdt As DataTable
        Dim objRow As DataRow
        Dim objColumn As DataColumn
        Dim objFileStream As StreamReader = Nothing
        Dim strLine As String
        Dim arrStrValues() As String


        Try
            objds = New DataSet
            objdt = New DataTable
            objds.Tables.Add(objdt)

            objColumn = New DataColumn
            objColumn.ColumnName = "ApplicationID"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "Status"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "Reason"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            '''''''''''''''''''''''''''''''''''''''''''

            objFileStream = File.OpenText(Server.MapPath("Eligibile.csv"))
            strLine = objFileStream.ReadLine()
            While Not strLine Is Nothing
                arrStrValues = Split(strLine, ",")
                objRow = objds.Tables(0).NewRow
                objRow.Item("ApplicationID") = arrStrValues(0)
                objRow.Item("Status") = arrStrValues(1)
                objRow.Item("Reason") = arrStrValues(2)
                objds.Tables(0).Rows.Add(objRow)
                objRow = Nothing
                strLine = objFileStream.ReadLine()
            End While
            Return objds
        Catch ex As Exception
            Throw ex
        Finally
            If Not objFileStream Is Nothing Then
                objFileStream.Close()
                objFileStream = Nothing
            End If
        End Try

    End Function

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click

        Dim intCounter As Integer
        Dim strQuery As String

        Try
            strQuery = ""
            For intCounter = 0 To grdApplications.Rows.Count - 1
                strQuery += "Insert into ELIGIBILITY(ApplicationID,Status,Reason) values ('"
                strQuery += grdApplications.Rows(intCounter).Cells(0).Text + "','" + grdApplications.Rows(intCounter).Cells(8).Text + "','" + grdApplications.Rows(intCounter).Cells(8).Text + "')|||"
            Next

            General.DoMultiTransaction(strQuery)


        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub
End Class