Imports System.IO
Imports System.Data.SqlClient
Imports System.Data

Public Class UploadResult
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        btnSubmit.Visible = False
        btnCancel.Visible = False
        grdResult.Visible = False

        Dim dt As DataTable
        dt = General.FetchDataTable("select * from APPLICATION where ResultFlag = '0'")

        If dt.Rows.Count > 0 Then
            btnUpload.Enabled = True
        Else
            btnUpload.Enabled = False
        End If


    End Sub

    Private Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        Try
            If fuResult.HasFile Then
                fuResult.PostedFile.SaveAs(Server.MapPath("Result.csv"))
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
            objColumn.ColumnName = "RollNo"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "Venue"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()


            objColumn = New DataColumn
            objColumn.ColumnName = "SectionI"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "SectionII"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "SectionIII"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "Total"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            objColumn = New DataColumn
            objColumn.ColumnName = "Status"
            objColumn.DataType = System.Type.GetType("System.String")
            objds.Tables(0).Columns.Add(objColumn)
            objColumn.Dispose()

            '''''''''''''''''''''''''''''''''''''''''''

            objFileStream = File.OpenText(Server.MapPath("Result.csv"))
            strLine = objFileStream.ReadLine()
            strLine = objFileStream.ReadLine()
            While Not strLine Is Nothing
                arrStrValues = Split(strLine, ",")
                objRow = objds.Tables(0).NewRow
                objRow.Item("ApplicationID") = arrStrValues(0)
                objRow.Item("RollNo") = arrStrValues(1)
                objRow.Item("Venue") = arrStrValues(2)
                objRow.Item("SectionI") = arrStrValues(3)
                objRow.Item("SectionII") = arrStrValues(4)
                objRow.Item("SectionIII") = arrStrValues(5)
                objRow.Item("Total") = arrStrValues(6)
                objRow.Item("Status") = arrStrValues(7)
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
                strQuery += "Insert into RESULT(ApplicationID,RollNo,Venue,SectionI,SectionII,SectionIII,Total,Status) values ('"
                strQuery += grdResult.Rows(intCounter).Cells(0).Text + "','" + grdResult.Rows(intCounter).Cells(1).Text + "','" + grdResult.Rows(intCounter).Cells(2).Text + "','"
                strQuery += grdResult.Rows(intCounter).Cells(3).Text + "','" + grdResult.Rows(intCounter).Cells(4).Text + "','" + grdResult.Rows(intCounter).Cells(5).Text + "','"
                strQuery += grdResult.Rows(intCounter).Cells(6).Text + "','" + grdResult.Rows(intCounter).Cells(7).Text + "')|||"
            Next

            General.DoMultiTransaction(strQuery)

            strQuery = "Update APPLICATION Set ResultFlag = 1"

            General.DoSingleTransaction(strQuery)
            btnUpload.Enabled = False

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub
End Class