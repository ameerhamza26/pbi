Public Class ViewEligibility
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                LoadEligibility()
                EligibileInfo()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub EligibileInfo()

        Dim dtEligibleInfo As DataTable
        Dim strQuery As String
        Dim str(2) As String


        Try
            strQuery = "SELECT STUDENT_DETAIL.PostalAddress, STUDENT_DETAIL.Name, STUDENT_DETAIL.FatherName, STUDENT_DETAIL.CNIC, STUDENT_DETAIL.Mobile, STUDENT_DETAIL.ImagePath from STUDENT_DETAIL where STUDENT_DETAIL.Email = '" + Session("UserID") + "'"

            dtEligibleInfo = General.FetchDataTable(strQuery)

            If dtEligibleInfo.Rows.Count > 0 Then

                lblName.Text = dtEligibleInfo.Rows(0).Item("Name").ToString()
                lblFatherName.Text = dtEligibleInfo.Rows(0).Item("FatherName").ToString()
                lblCNIC.Text = dtEligibleInfo.Rows(0).Item("CNIC").ToString()
                lblAddress.Text = dtEligibleInfo.Rows(0).Item("PostalAddress").ToString()
                lblCellNo.Text = dtEligibleInfo.Rows(0).Item("Mobile").ToString()
                imgSD.ImageUrl = dtEligibleInfo.Rows(0).Item("ImagePath").ToString()
            End If

        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Private Sub LoadEligibility()

        Dim dtRemarks As DataTable
        Dim strQuery As String

        Try


            strQuery = "SELECT a.ApplicationID, r.RollNo, r.Venue, r.`Status` from APPLICATION AS a join RESULT as r on a.ApplicationID = r.ApplicationID "
            strQuery += " where a.Email ='" + Session("UserID") + "'"

            strQuery = "SELECT DISTINCT a.ApplicationID as 'Applicant ID', r.RollNo as 'Roll No', sd.CityCode as 'Test Centre', ( CASE WHEN e.`Status` = 'Y' THEN 'Eligible' ELSE 'Not Eligible' END) " +
                        " AS Eligible FROM APPLICATION AS a, STUDENT_DETAIL AS sd, RollNumber AS r, ELIGIBILITY AS e WHERE sd.Email = a.Email AND a.ApplicationID = r.ApplicationID AND a.ApplicationID = e.ApplicationID AND sd.Email ='" + Session("UserID") + "'"

            dtRemarks = General.FetchDataTable(strQuery)

            If dtRemarks.Rows.Count > 0 Then
                grdResult.DataSource = dtRemarks
                grdResult.DataBind()

            End If


        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Protected Sub grdResult_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grdResult.SelectedIndexChanged

    End Sub
End Class