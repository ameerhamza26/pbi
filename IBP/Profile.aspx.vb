Imports System.Globalization

Public Class Profile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            lblMessage.Visible = False


            If Not IsPostBack Then
                txtEmail.Text = Session("UserID")
                LoadReligion()
                LoadDomicileRegion()
                LoadDomicileCity()
                LoadCityofResidence()
                LoadStudentData()
                Session("Doc") = 1
                ToggleDocs()
            End If



        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadReligion()

        Dim dtReligion As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select * from RELIGION"

            dtReligion = General.FetchDataTable(strQuery)

            cboReligion.DataSource = dtReligion
            cboReligion.DataTextField = "Description"
            cboReligion.DataValueField = "ID"
            cboReligion.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtReligion Is Nothing Then
                dtReligion.Dispose()
            End If
        End Try


    End Sub

    Private Sub LoadDomicileRegion()

        Dim dtDRegion As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select * from DOMICILEREGION"

            dtDRegion = General.FetchDataTable(strQuery)

            cboDomicile.DataSource = dtDRegion
            cboDomicile.DataTextField = "Description"
            cboDomicile.DataValueField = "Code"
            cboDomicile.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtDRegion Is Nothing Then
                dtDRegion.Dispose()
            End If
        End Try


    End Sub

    Private Sub LoadDomicileCity()

        Dim dtDCity As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select Code,Description from DOMICILECITY where RegionCode = '" + cboDomicile.SelectedValue + "'"

            dtDCity = General.FetchDataTable(strQuery)

            cboDCity.DataSource = dtDCity
            cboDCity.DataTextField = "Description"
            cboDCity.DataValueField = "Code"
            cboDCity.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtDCity Is Nothing Then
                dtDCity.Dispose()
            End If
        End Try

    End Sub

    Private Sub LoadCityofResidence()

        Dim dtCOR As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select Code,Description from DOMICILECITY"

            dtCOR = General.FetchDataTable(strQuery)

            cboCity.DataSource = dtCOR
            cboCity.DataTextField = "Description"
            cboCity.DataValueField = "Code"
            cboCity.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtCOR Is Nothing Then
                dtCOR.Dispose()
            End If
        End Try

    End Sub

    Private Sub LoadStudentData()

        Dim dtSD As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select * from STUDENT_DETAIL where Email = '" + txtEmail.Text + "'"
            dtSD = General.FetchDataTable(strQuery)

            If dtSD.Rows.Count > 0 Then

                txtName.Text = dtSD.Rows(0).Item("Name")
                txtFatherName.Text = dtSD.Rows(0).Item("FatherName")
                txtCNIC.Text = dtSD.Rows(0).Item("CNIC")

                If dtSD.Rows(0).Item("Gender") = "M" Then
                    rbMale.Checked = True
                    rbFemale.Checked = False
                Else
                    rbMale.Checked = False
                    rbFemale.Checked = True
                End If

                txtDOB.Text = Format(CDate(dtSD.Rows(0).Item("DOB")), "dd-MM-yyyy")

                txtTele.Text = dtSD.Rows(0).Item("Telephone")
                txtMobile.Text = dtSD.Rows(0).Item("Mobile")

                cboCity.SelectedValue = dtSD.Rows(0).Item("CityCode")
                cboDomicile.SelectedValue = dtSD.Rows(0).Item("DomicileRegionCode")
                cboDCity.SelectedValue = dtSD.Rows(0).Item("DomicileCityCode")
                cboReligion.SelectedValue = dtSD.Rows(0).Item("ReligionID")

                txtAddress.Text = dtSD.Rows(0).Item("PostalAddress")

            End If

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtSD Is Nothing Then
                dtSD.Dispose()
            End If
        End Try

    End Sub

    Private Sub cboDomicile_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cboDomicile.SelectedIndexChanged

        Try
            LoadDomicileCity()
        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try
    End Sub


    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click

        Dim strQuery As String
        Dim strGender As String
        Dim dtDOB As Date
        Dim strPath As String
        Dim intRows As Integer = 0
        Dim intCounter As Integer
        Dim objFU As FileUpload
        Dim objTxtbox As TextBox


        Try

            strQuery = "Select Count(*) from STUDENT_DETAIL where Email = '" + txtEmail.Text + "'"
            intRows = General.FetchScalar(strQuery)

            strPath = ""
            If fuImage.HasFile Then
                strPath = "/StudentDocs/" + fuImage.FileName
                fuImage.SaveAs(Server.MapPath("~" + strPath))
            End If

            dtDOB = DateTime.ParseExact(Request.Form(txtDOB.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))

            If rbMale.Checked Then
                strGender = "M"
            Else
                strGender = "F"
            End If

            If intRows > 0 Then
                strQuery = "Update STUDENT_DETAIL set Name = '" + txtName.Text + "', FatherName = '" + txtFatherName.Text + "',CNIC = '"
                strQuery += txtCNIC.Text + "', Gender = '" + strGender + "', DOB = '" + Format(dtDOB, "yyyy/MM/dd") + "',Telephone = '"
                strQuery += txtTele.Text + "', Mobile = '" + txtMobile.Text + "', CityCode = '" + cboCity.SelectedValue + "', DomicileRegionCode = '"
                strQuery += cboDomicile.SelectedValue + "', DomicileCityCode = '" + cboDCity.SelectedValue + "', ReligionID = '" + cboReligion.SelectedValue + "', PostalAddress = '"
                strQuery += txtAddress.Text + "', ImagePath = '" + strPath + "' where Email = '" + txtEmail.Text + "'"
            Else
                strQuery = "Insert into STUDENT_DETAIL (Email,Name,FatherName,CNIC,Gender,DOB,Telephone,Mobile,CityCode,DomicileRegionCode,DomicileCityCode,ReligionID,PostalAddress,ImagePath) values ('"
                strQuery += txtEmail.Text + "','" + txtName.Text + "','" + txtFatherName.Text + "','" + txtCNIC.Text + "','" + strGender + "','" + Format(dtDOB, "yyyy/MM/dd") + "','" + txtTele.Text + "','"
                strQuery += txtMobile.Text + "','" + cboCity.SelectedValue + "','" + cboDomicile.SelectedValue + "','" + cboDCity.SelectedValue + "','" + cboReligion.SelectedValue + "','" + txtAddress.Text + "','" + strPath + "')"
            End If
            strQuery += "|||"

            For intCounter = 0 To 3
                objFU = Me.Master.FindControl("MainContent").FindControl("fuDoc" + intCounter.ToString())
                objTxtbox = Me.Master.FindControl("MainContent").FindControl("txtDocs" + intCounter.ToString())
                If objFU.Visible = True Then
                    strPath = ""
                    If objFU.HasFile Then
                        strPath = "/StudentDocs/" + objFU.FileName
                        objFU.SaveAs(Server.MapPath("~" + strPath))
                        strQuery += "Insert into STUDENTDOCS (ID,Email,Description,Path) values ('"
                        strQuery += (intCounter + 1).ToString() + "','" + txtEmail.Text + "','" + objTxtbox.Text + "','" + strPath + "')|||"
                    End If
                End If
            Next

            General.DoMultiTransaction(strQuery)

            Response.Redirect("Profile.aspx")

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Protected Sub btnAddDocs_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAddDocs.Click
        If CInt(Session("Doc")) < 4 Then
            Session("Doc") = CInt(Session("Doc")) + 1
        End If
        ToggleDocs()
    End Sub

    Protected Sub btnRemoveDoc_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRemoveDoc.Click
        If CInt(Session("Doc")) > 1 Then
            Session("Doc") = CInt(Session("Doc")) - 1
        End If

        ToggleDocs()

    End Sub

    Private Sub ToggleDocs()

        If Session("Doc") = 1 Then
            fuDoc0.Visible = True
            fuDoc1.Visible = False
            fuDoc2.Visible = False
            fuDoc3.Visible = False
            txtDocs0.Visible = True
            txtDocs1.Visible = False
            txtDocs2.Visible = False
            txtDocs3.Visible = False
        ElseIf Session("Doc") = 2 Then
            fuDoc0.Visible = True
            fuDoc1.Visible = True
            fuDoc2.Visible = False
            fuDoc3.Visible = False
            txtDocs0.Visible = True
            txtDocs1.Visible = True
            txtDocs2.Visible = False
            txtDocs3.Visible = False
        ElseIf Session("Doc") = 3 Then
            fuDoc0.Visible = True
            fuDoc1.Visible = True
            fuDoc2.Visible = True
            fuDoc3.Visible = False
            txtDocs0.Visible = True
            txtDocs1.Visible = True
            txtDocs2.Visible = True
            txtDocs3.Visible = False
        ElseIf Session("Doc") = 4 Then
            fuDoc0.Visible = True
            fuDoc1.Visible = True
            fuDoc2.Visible = True
            fuDoc3.Visible = True
            txtDocs0.Visible = True
            txtDocs1.Visible = True
            txtDocs2.Visible = True
            txtDocs3.Visible = True
        End If

    End Sub
End Class