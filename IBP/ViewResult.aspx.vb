Public Class ViewResult
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                LoadResult()
                ResultInfo()
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub LoadResult()

        Dim dtResult As DataTable
        Dim strQuery As String

        Try

            strQuery = "select a.ApplicationID, r.RollNo, r.Venue,r.SectionI, r.SectionII, r.SectionIII, r.`Status`, r.Total from APPLICATION as a "
            strQuery += "join RESULT as r on a.ApplicationID = r.ApplicationID where a.Email = '" + Session("UserID") + "'"

            dtResult = General.FetchDataTable(strQuery)

            grdResult.DataSource = dtResult
            grdResult.DataBind()

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try


    End Sub

    Private Sub ResultInfo()

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

End Class