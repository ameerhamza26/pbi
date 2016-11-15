Public Class GenerateRollNo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                LoadCenter()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadCenter()

        Dim dtCourse As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select * from PREFERENCES"

            dtCourse = General.FetchDataTable(strQuery)

            cboPreference.DataSource = dtCourse
            cboPreference.DataTextField = "Description"
            cboPreference.DataValueField = "ID"
            cboPreference.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtCourse Is Nothing Then
                dtCourse.Dispose()
            End If
        End Try


    End Sub

    Private Sub btnSearch_Click(sender As Object, e As System.EventArgs) Handles btnSearch.Click

        Dim dtApp As DataTable
        Dim strQuery As String

        Try

            strQuery = "Select a.ApplicationID,sd.Email,sd.Name,sd.CNIC from APPLICATION a, ELIGIBILITY e, STUDENT_DETAIL sd where "
            strQuery += "a.Email = sd.Email and a.ApplicationID = e.ApplicationID and a.PreferenceID = '"
            strQuery += cboPreference.SelectedValue + "' and e.Status = 'Y' "
            strQuery += "and a.ApplicationID not in (Select ApplicationID from RollNumber) order by a.ApplicationID"

            dtApp = General.FetchDataTable(strQuery)

            grdApplication.DataSource = dtApp
            grdApplication.DataBind()

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub btnGenerate_Click(sender As Object, e As System.EventArgs) Handles btnGenerate.Click

        Dim strQuery As String
        Dim intCounter As Integer
        Dim intRollFrom As Integer
        Dim intRollTo As Integer

        Try
            If Not IsNumeric(txtFromRollNo.Text) Then
                Throw New Exception("Roll No. should be numeric")
            End If

            If Not IsNumeric(txtToRollNo.Text) Then
                Throw New Exception("Roll No. should be numeric")
            End If

            intRollFrom = CInt(txtFromRollNo.Text)

            intRollTo = CInt(txtToRollNo.Text)

            If (intRollTo - intRollFrom + 1) <> grdApplication.Rows.Count Then
                Throw New Exception("Application and Roll No count mismatched.")
            End If

            strQuery = ""

            For intCounter = 0 To grdApplication.Rows.Count - 1
                strQuery += "Insert into RollNumber (ApplicationID,RollNo) values ('"
                strQuery += grdApplication.Rows(intCounter).Cells(0).Text + "','" + Format(intRollFrom + intCounter, "000000") + "')|||"

            Next

            General.DoMultiTransaction(strQuery)

            Response.Redirect("GenerateRollNo.aspx")

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub
End Class