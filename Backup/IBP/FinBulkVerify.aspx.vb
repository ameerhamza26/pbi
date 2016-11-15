Imports System.IO

Public Class FinBulkVerify
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        btnSubmit.Visible = False
        btnCancel.Visible = False
        grdApplications.Visible = False

    End Sub

    Private Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        Try
            If fuBankFile.HasFile Then
                fuBankFile.PostedFile.SaveAs(Server.MapPath("BankFile.csv"))
                BindGrid()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub BindGrid()

        Try
            grdApplications.DataSource = GetMatchedApplications()
            grdApplications.DataBind()
            grdApplications.Visible = True
            btnSubmit.Visible = True
            btnCancel.Visible = True

        Catch ex As Exception
            Throw ex
        End Try
    End Sub


    Private Function GetMatchedApplications() As DataTable

        Dim objFileStream As StreamReader = Nothing
        Dim strLine As String
        Dim arrStrValues() As String
        Dim strQuery As String
        Dim strApplications As String


        Try

            strApplications = "('0',"
            objFileStream = File.OpenText(Server.MapPath("BankFile.csv"))
            strLine = objFileStream.ReadLine()
            While Not strLine Is Nothing
                arrStrValues = Split(strLine, ",")
                strApplications += "'" + arrStrValues(0) + "'"
                strLine = objFileStream.ReadLine()
            End While

            strApplications += ")"

            strQuery = "Select a.ApplicationID,sd.* from APPLICATION a, STUDENT_DETAIL sd, APPLICATIONREMARKS ar "
            strQuery += "where a.Email = sd.Email and ar.ApplicationID = a.ApplicationID and "
            strQuery += "ar.FinApprove = 'P' and a.ApplicationID in " + strApplications + " order by ApplicationID"


            GetMatchedApplications = General.FetchDataTable(strQuery)

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
        Dim strApplications As String

        Try


            strApplications = "('0',"

            For intCounter = 0 To grdApplications.Rows.Count - 1
                strApplications += "'" + grdApplications.Rows(intCounter).Cells(0).Text + "'"
            Next

            strApplications += ")"

            strQuery = "Update APPLICATIONREMARKS set FinRemarks = '', FinApprove = 'Y' "
            strQuery += " where ApplicationID in " + strApplications + " and FinApprove = 'P' "


            General.DoSingleTransaction(strQuery)

            Response.Redirect("FinVerify.aspx")

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub
End Class