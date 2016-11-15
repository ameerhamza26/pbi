Imports System.IO

Public Class UploadEligibility
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        btnSubmit.Visible = False
        btnCancel.Visible = False
        grdResult.Visible = False

    End Sub

    Private Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        Try
            If fuResult.HasFile Then
                fuResult.PostedFile.SaveAs(Server.MapPath("Eligibile.csv"))
                BindGrid()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
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
            For intCounter = 0 To grdResult.Rows.Count - 1
                strQuery += "Insert into ELIGIBILITY(ApplicationID,Status,Reason) values ('"
                strQuery += grdResult.Rows(intCounter).Cells(0).Text + "','" + grdResult.Rows(intCounter).Cells(1).Text + "','" + grdResult.Rows(intCounter).Cells(2).Text + "')|||"
            Next

            General.DoMultiTransaction(strQuery)


        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub
End Class