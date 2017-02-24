Public Class EditRole
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            lblMessage.Visible = False
            If Not IsPostBack Then
                cboRole.Visible = True
                txtRole.Visible = False
                LoadRole()
            End If

            ShowOptions()

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try
    End Sub

    Private Sub LoadRole()

        Dim dtRole As DataTable = Nothing
        Dim strQuery As String

        Try
            'strQuery = "Select * from ROLE where Description <> 'Student'"
            strQuery = "Select * from ROLE"
            dtRole = General.FetchDataTable(strQuery)

            cboRole.DataSource = dtRole
            cboRole.DataTextField = "Description"
            cboRole.DataValueField = "ID"
            cboRole.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtRole Is Nothing Then
                dtRole.Dispose()
            End If
        End Try


    End Sub

    Private Sub ShowOptions()

        Dim intCount As Integer
        Dim dtRoleDef As DataTable

        Dim intRowNumber As Integer
        Dim objTable As Table
        Dim objRow As TableRow
        Dim objCell As TableCell
        Dim objCheckBox As CheckBox



        Try
            If cboRole.Visible = True Then
                If cboRole.Items.Count = 0 Then
                    lblMessage.Text = "No Roles Available."
                    btnSave.Enabled = False
                    Exit Sub
                End If
            End If

            dtRoleDef = GetRoleDefinition()

            objTable = tblRole
            objTable.HorizontalAlign = HorizontalAlign.Center

            objRow = New TableRow
            intRowNumber = objTable.Rows.Add(objRow)
            objCell = New TableCell
            objRow.Cells.Add(objCell)
            objCell.CssClass = "th"
            objCell.Text = "Pages"
            objCell.ColumnSpan = 6


            For intCount = 0 To dtRoleDef.Rows.Count - 1

                If intCount Mod 3 = 0 Then
                    objRow = New TableRow
                    intRowNumber = objTable.Rows.Add(objRow)
                End If

                objCell = New TableCell
                objRow.Cells.Add(objCell)
                objCheckBox = New CheckBox
                objCheckBox.ID = "P" + CStr(dtRoleDef.Rows(intCount).Item("ID"))
                If IsDBNull(dtRoleDef.Rows(intCount).Item("PageID")) = False Then
                    objCheckBox.Checked = True
                End If
                objCell.Controls.Add(objCheckBox)
                objCell.CssClass = "td"

                objCell = New TableCell
                objRow.Cells.Add(objCell)
                objCell.Text = dtRoleDef.Rows(intCount).Item("Name")
                objCell.CssClass = "td"
            Next

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Function GetRoleDefinition() As DataTable

        Dim strQuery As String

        Try
            If cboRole.Visible = False Then
                strQuery = "Select P.ID,P.Name,Null as PageID from PAGES P order by ID"
            Else
                strQuery = "Select P.ID,P.Name,RD2.PageID from PAGES P LEFT OUTER JOIN "
                strQuery += "(Select PageID from MENU where RoleID = '" + cboRole.SelectedValue + "') RD2 "
                strQuery += "on P.ID = RD2.PAGEID order by P.ID"
            End If

            GetRoleDefinition = General.FetchDataTable(strQuery)

        Catch ex As Exception
            Throw ex
        End Try

    End Function

    Private Sub btnAdd_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs) Handles btnAdd.Command

        Try
            cboRole.Visible = False
            txtRole.Visible = True
            tblRole.Rows.Clear()
            ShowOptions()
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub btnCancel_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs) Handles btnCancel.Command
        Response.Redirect("EditRole.aspx")
    End Sub

    Private Sub btnSave_Command(sender As Object, e As System.Web.UI.WebControls.CommandEventArgs) Handles btnSave.Command

        Dim strQuery As String
        Dim dtPages As DataTable
        Dim intCounter As Integer
        Dim objCheckBox As CheckBox
        Dim strPageID As String
        Dim intRoleID As Integer

        Try

            If txtRole.Visible = True Then
                If txtRole.Text.Trim = "" Then
                    Throw New Exception("Please provide role name.")
                End If
                intRoleID = General.FetchScalar("Select max(ID) from ROLE")
                intRoleID += 1
                strQuery = "Insert into ROLE (ID,Description) values ('" + intRoleID.ToString() + "','" + txtRole.Text + "')|||"
            Else
                intRoleID = cboRole.SelectedValue
                strQuery = "Delete from MENU where RoleID = '" + intRoleID.ToString() + "'|||"
            End If

            dtPages = General.FetchDataTable("Select * from PAGES order by ID")

            For intCounter = 0 To dtPages.Rows.Count - 1
                strPageID = dtPages.Rows(intCounter).Item("ID").ToString()
                objCheckBox = tblRole.FindControl("P" + strPageID)
                If objCheckBox.Checked Then
                    strQuery += "Insert into MENU (PageID,RoleID) values ('" + strPageID + "','" + intRoleID.ToString() + "')|||"
                End If
            Next

            General.DoMultiTransaction(strQuery)

            Response.Redirect("EditRole.aspx")

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub cboRole_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles cboRole.SelectedIndexChanged
        Try
            tblRole.Rows.Clear()
            ShowOptions()
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try
    End Sub
End Class