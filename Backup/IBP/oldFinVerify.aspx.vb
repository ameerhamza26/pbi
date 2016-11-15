Public Class oldFinVerify
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not IsPostBack Then
                btnSave.Enabled = False
            End If

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub


    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearch.Click

        Dim dtDocs As DataTable
        Dim dtRemarks As DataTable
        Dim strQuery As String
        Dim intCounter As Integer


        Try
            strQuery = "Select a.ApplicationID,sd.Email,sd.Name,sd.CNIC, cc.* from APPLICATION a, COURSE c, COURSECHECKLIST cc, STUDENT_DETAIL sd "
            strQuery += "where a.CourseID = c.ID and a.CycleNo = c.CycleNo and c.ID = cc.CourseID  and a.Email = sd.Email "
            If txtNIC.Text = "" And txtEmail.Text = "" And txtAppID.Text = "" Then
                Throw New Exception("At least one criteria required.")
            Else
                If txtNIC.Text <> "" Then
                    strQuery += " and sd.CNIC = '" + txtNIC.Text + "'"
                End If

                If txtEmail.Text <> "" Then
                    strQuery += " and sd.Email = '" + txtEmail.Text + "'"
                End If

                If txtAppID.Text <> "" Then
                    strQuery += " and a.ApplicationID = '" + txtAppID.Text + "'"
                End If
            End If

            dtDocs = General.FetchDataTable(strQuery)

            If dtDocs.Rows.Count = 0 Then
                ltrlChecklist.Text = "<tr><td align='center'><h3 class='font-theme-color'>No Record Found</h3></td></tr>"
                btnSave.Enabled = False
            Else
                ltrlChecklist.Text = ""
                btnSave.Enabled = True
                lblApplicationID.Text = dtDocs.Rows(0).Item("ApplicationID").ToString()
                lblEmail.Text = dtDocs.Rows(0).Item("Email").ToString()
                lblName.Text = dtDocs.Rows(0).Item("Name").ToString()
                lblCNIC.Text = dtDocs.Rows(0).Item("CNIC").ToString()
                strQuery = "Select * from APPLICATIONREMARKS where ApplicationID = '" + lblApplicationID.Text + "'"
                dtRemarks = General.FetchDataTable(strQuery)

                If dtRemarks.Rows.Count > 0 Then
                    txtRemarks.Text = dtRemarks.Rows(0).Item("FinRemarks").ToString()
                    If dtRemarks.Rows(0).Item("FinApprove").ToString() = "Y" Then
                        cbApprove.Checked = True
                    End If
                End If

            End If

            For intCounter = 0 To dtDocs.Rows.Count - 1
                ltrlChecklist.Text += "<tr><td align='center'>" + dtDocs.Rows(intCounter).Item("Description").ToString() + "</td></tr>"
            Next



        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSave.Click

        Dim dtRemarks As DataTable
        Dim strQuery As String
        Dim strEApprove As String

        Try
            strQuery = "Select * from APPLICATIONREMARKS where ApplicationID = '" + lblApplicationID.Text + "'"

            dtRemarks = General.FetchDataTable(strQuery)

            If cbApprove.Checked Then
                strEApprove = "Y"
            Else
                strEApprove = "N"
            End If

            If dtRemarks.Rows.Count > 0 Then
                strQuery = "Update APPLICATIONREMARKS set FinRemarks = '" + txtRemarks.Text + "', FinApprove = '"
                strQuery += strEApprove + "' where ApplicationID = '" + lblApplicationID.Text + "'"
            Else
                strQuery = "Insert into APPLICATIONREMARKS (ApplicationID,FinRemarks,FinApprove,ExRemarks,ExApprove) values ('"
                strQuery += lblApplicationID.Text + "','" + txtRemarks.Text + "','" + strEApprove + "','','N')"
            End If

            General.DoSingleTransaction(strQuery)

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub
End Class