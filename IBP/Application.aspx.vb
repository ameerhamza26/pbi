Imports System.Globalization
Imports System.Globalizations
Public Class Application
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            lblMessage.Visible = False

            If Not IsPostBack Then
                txtOtherBachelor.Visible = False
                txtOtherBachelorUniversity.Visible = False
                txtOtherMaster.Visible = False
                txtOtherMasterUniversity.Visible = False
                txtOtherIntermediate.Visible = False
                txtOtherMatriculationBoard.Visible = False
                txtOtherUniversity.Visible = False
                cboOtherBachelorsYear.Visible = False
                txtPinNo.Enabled = True
                txtDesig.Enabled = True
                cboCitySbe.Enabled = True
                txtGrade.Enabled = True
                txtPinNoValidator.Enabled = True
                txtDesigValidator1.Enabled = True
                txtGradeValidator1.Enabled = True


                txtEmail.Text = Session("UserID")
                LoadReligion()
                LoadDomicileRegion()
                LoadDomicileCity()
                LoadCityofResidence()
                LoadAcademicInfo()
                LoadStudentData()
                LoadCityofSBP()

                Session("Doc") = 1
                sessionIdDoc.Text = Session("Doc")
                ToggleDocs()

            End If

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadAcademicInfo()

        Dim dtAcademicInfo As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select * from MASTERDEGREE"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboMaster.DataSource = dtAcademicInfo
            cboMaster.DataTextField = "Description"
            cboMaster.DataValueField = "ID"
            cboMaster.DataBind()

            strQuery = "Select * from BACHELORDEGREE"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboBachelors.DataSource = dtAcademicInfo
            cboBachelors.DataTextField = "Description"
            cboBachelors.DataValueField = "ID"
            cboBachelors.DataBind()

            strQuery = "Select * from INTERMEDIATE"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboIntermediate.DataSource = dtAcademicInfo
            cboIntermediate.DataTextField = "Description"
            cboIntermediate.DataValueField = "ID"
            cboIntermediate.DataBind()

            strQuery = "Select * from MATRICULATION"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboMatriculation.DataSource = dtAcademicInfo
            cboMatriculation.DataTextField = "Description"
            cboMatriculation.DataValueField = "ID"
            cboMatriculation.DataBind()

            strQuery = "Select * from OTHERQUALIFICATION"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboOtherQualification.DataSource = dtAcademicInfo
            cboOtherQualification.DataTextField = "Description"
            cboOtherQualification.DataValueField = "ID"
            cboOtherQualification.DataBind()


            strQuery = "Select * from UNIVERSITY"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboMasterUniversity.DataSource = dtAcademicInfo
            cboMasterUniversity.DataTextField = "Description"
            cboMasterUniversity.DataValueField = "ID"
            cboMasterUniversity.DataBind()

            cboBachelorsUniversity.DataSource = dtAcademicInfo
            cboBachelorsUniversity.DataTextField = "Description"
            cboBachelorsUniversity.DataValueField = "ID"
            cboBachelorsUniversity.DataBind()

            cboOtherUniversity.DataSource = dtAcademicInfo
            cboOtherUniversity.DataTextField = "Description"
            cboOtherUniversity.DataValueField = "ID"
            cboOtherUniversity.DataBind()


            strQuery = "Select * from BOARD"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboMatriculationBoard.DataSource = dtAcademicInfo
            cboMatriculationBoard.DataTextField = "Description"
            cboMatriculationBoard.DataValueField = "ID"
            cboMatriculationBoard.DataBind()

            cboIntermediateBoard.DataSource = dtAcademicInfo
            cboIntermediateBoard.DataTextField = "Description"
            cboIntermediateBoard.DataValueField = "ID"
            cboIntermediateBoard.DataBind()

            strQuery = "Select * from CGPA"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboMasterGPA.DataSource = dtAcademicInfo
            cboMasterGPA.DataTextField = "Description"
            cboMasterGPA.DataValueField = "ID"
            cboMasterGPA.DataBind()

            cboBachelorsGPA.DataSource = dtAcademicInfo
            cboBachelorsGPA.DataTextField = "Description"
            cboBachelorsGPA.DataValueField = "ID"
            cboBachelorsGPA.DataBind()

            cboOtherGPA.DataSource = dtAcademicInfo
            cboOtherGPA.DataTextField = "Description"
            cboOtherGPA.DataValueField = "ID"
            cboOtherGPA.DataBind()


            strQuery = "Select * from PREFERENCES"

            dtAcademicInfo = General.FetchDataTable(strQuery)

            cboPreference.DataSource = dtAcademicInfo
            cboPreference.DataTextField = "Description"
            cboPreference.DataValueField = "ID"
            cboPreference.DataBind()

        Catch ex As Exception
            Throw ex
        Finally
            If Not dtAcademicInfo Is Nothing Then
                dtAcademicInfo.Dispose()
            End If
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

    Private Sub LoadCityofSBP()

        Dim dtCOR As DataTable = Nothing
        Dim strQuery As String

        Try
            strQuery = "Select Code,Description from DOMICILECITY"

            dtCOR = General.FetchDataTable(strQuery)

            cboCitySbe.DataSource = dtCOR
            cboCitySbe.DataTextField = "Description"
            cboCitySbe.DataValueField = "Code"
            cboCitySbe.DataBind()

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
        Dim boolSbp As Integer

        Try
            strQuery = "Select * from STUDENT_DETAIL where Email = '" + txtEmail.Text + "'"
            dtSD = General.FetchDataTable(strQuery)
            sampleRowCount.Text = dtSD.Rows.Count.ToString()
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

                If Convert.ToInt32(dtSD.Rows(0).Item("SBP")) = 1 Then
                    RadioButtonSBPYES.Checked = True
                    RadioButtonSBPNO.Checked = False

                    txtPinNo.Text = dtSD.Rows(0).Item("SbpPinNo")
                    txtDesig.Text = dtSD.Rows(0).Item("SbpDesig")
                    txtGrade.Text = dtSD.Rows(0).Item("SbpGrade")
                    cboCitySbe.SelectedValue = dtSD.Rows(0).Item("SbpCityCode")

                Else
                    RadioButtonSBPYES.Checked = False
                End If

                txtDOB.Text = Format(CDate(dtSD.Rows(0).Item("DOB")), "dd-MM-yyyy")

                txtTele.Text = dtSD.Rows(0).Item("Telephone")
                txtMobile.Text = dtSD.Rows(0).Item("Mobile")

                cboCity.SelectedValue = dtSD.Rows(0).Item("CityCode")
                cboDomicile.SelectedValue = dtSD.Rows(0).Item("DomicileRegionCode")
                cboDCity.SelectedValue = dtSD.Rows(0).Item("DomicileCityCode")
                cboReligion.SelectedValue = dtSD.Rows(0).Item("ReligionID")

                txtAddress.Text = dtSD.Rows(0).Item("PostalAddress")


                strQuery = "Select * from  APPLICATION where Email = '" + txtEmail.Text + "'"

                dtSD = General.FetchDataTable(strQuery)

                If dtSD.Rows.Count > 0 Then

                    btnSubmit.Enabled = False
                    btnPrintForm.Enabled = True
                    cbDeclaration.Enabled = False

                    If dtSD.Rows(0).Item("EligibleFlag") = 1 Then
                        btnViewEligibility.Visible = True
                    Else
                        btnViewEligibility.Visible = False
                    End If

                    Dim dt As DataTable
                    strQuery = "Select * from APPLICATION where ApplicationID = '" + dtSD.Rows(0).Item("ApplicationID") + "' and ResultFlag = 1"
                    dt = General.FetchDataTable(strQuery)
                    If dt.Rows.Count > 0 Then
                            btnViewResult.Visible = True
                        Else
                            btnViewResult.Visible = False
                        End If

                        cboMaster.SelectedValue = dtSD.Rows(0).Item("MasterID")
                        txtMasterSubject.Text = dtSD.Rows(0).Item("MasterSubject")
                        cboMasterUniversity.SelectedValue = dtSD.Rows(0).Item("MasterUniversityID")
                        cboMasterGPA.SelectedValue = dtSD.Rows(0).Item("MasterCGPAID")
                        If String.IsNullOrEmpty(txtMasterCGPA.Text) Then
                            txtMasterCGPA.Text = dtSD.Rows(0).Item("MasterCGPAOBT")
                        Else
                            txtMasterCGPA.Text = Math.Round(Double.Parse(dtSD.Rows(0).Item("MasterCGPAOBT")), 2)
                        End If
                        txtMasterTM.Text = dtSD.Rows(0).Item("MasterTotalMarks")
                        txtMasterMO.Text = dtSD.Rows(0).Item("MasterMarksOBT")
                        If String.IsNullOrEmpty(txtMasterPercentage.Text) Then
                            txtMasterPercentage.Text = dtSD.Rows(0).Item("MasterPercentage")
                        Else
                            txtMasterPercentage.Text = Math.Round(Double.Parse(dtSD.Rows(0).Item("MasterPercentage")), 2)
                        End If

                        If Not IsDBNull(dtSD.Rows(0).Item("MasterDateDeclare")) Then
                            txtMasterDOP.Text = Format(CDate(dtSD.Rows(0).Item("MasterDateDeclare")), "dd-MM-yyyy")
                        End If

                        cboBachelors.SelectedValue = dtSD.Rows(0).Item("BachelorID")
                        txtBachelorSubject.Text = dtSD.Rows(0).Item("BachelorSubject")
                        cboBachelorsUniversity.SelectedValue = dtSD.Rows(0).Item("BachelorUniversityID")
                        cboBachelorsGPA.SelectedValue = dtSD.Rows(0).Item("BachelorCGPAID")
                        If String.IsNullOrEmpty(txtBachelorsCGPA.Text) Then
                            txtMasterCGPA.Text = dtSD.Rows(0).Item("MasterCGPAOBT")
                        Else
                            txtMasterCGPA.Text = Math.Round(Double.Parse(dtSD.Rows(0).Item("MasterCGPAOBT")), 2)
                        End If

                        txtBachelorsTM.Text = dtSD.Rows(0).Item("BachelorTotalMarks")
                        txtBachelorsMO.Text = dtSD.Rows(0).Item("BachelorMarksOBT")
                        If String.IsNullOrEmpty(txtBachelorsPercentage.Text) Then
                            txtBachelorsPercentage.Text = dtSD.Rows(0).Item("BachelorPercentage")
                        Else
                            txtBachelorsPercentage.Text = Math.Round(Double.Parse(dtSD.Rows(0).Item("BachelorPercentage")), 2)
                        End If

                        If Not IsDBNull(dtSD.Rows(0).Item("BachelorDateDeclare")) Then
                            txtBachelorDOP.Text = Format(CDate(dtSD.Rows(0).Item("BachelorDateDeclare")), "dd-MM-yyyy")
                        End If

                        cboIntermediate.SelectedValue = dtSD.Rows(0).Item("IntermediateID")
                        txtIntermediateSubject.Text = dtSD.Rows(0).Item("IntermediateSubject")
                        cboIntermediateBoard.SelectedValue = dtSD.Rows(0).Item("IntermediateBoardID")
                        txtIntermediateTM.Text = dtSD.Rows(0).Item("IntermediateTotalMarks")
                        txtIntermediateMO.Text = dtSD.Rows(0).Item("IntermediateMarksOBT")
                        txtIntermediatePercentage.Text = dtSD.Rows(0).Item("IntermediatePercentage")
                        If Not IsDBNull(dtSD.Rows(0).Item("IntermediateDateDeclare")) Then
                            txtInterDOP.Text = Format(CDate(dtSD.Rows(0).Item("IntermediateDateDeclare")), "dd-MM-yyyy")
                        End If

                        cboMatriculation.SelectedValue = dtSD.Rows(0).Item("MatricID")
                        txtMatriculationSubject.Text = dtSD.Rows(0).Item("MatricSubject")
                        cboMatriculationBoard.SelectedValue = dtSD.Rows(0).Item("MatricBoardID")
                        txtMatriculationTM.Text = dtSD.Rows(0).Item("MatricTotalMarks")
                        txtMatriculationMO.Text = dtSD.Rows(0).Item("MatricMarksOBT")
                        txtMatriculationPercentage.Text = dtSD.Rows(0).Item("MatricPercentage")
                        If Not IsDBNull(dtSD.Rows(0).Item("MatricDateDeclare")) Then
                            txtMatricDOP.Text = Format(CDate(dtSD.Rows(0).Item("MatricDateDeclare")), "dd-MM-yyyy")
                        End If

                        cboOtherQualification.SelectedValue = dtSD.Rows(0).Item("OtherID")
                        txtOtherSubject.Text = dtSD.Rows(0).Item("OtherSubject")
                        cboOtherUniversity.SelectedValue = dtSD.Rows(0).Item("OtherUniversityID")
                        cboOtherGPA.SelectedValue = dtSD.Rows(0).Item("OtherCGPAID")
                        txtOtherCGPA.Text = dtSD.Rows(0).Item("OtherCGPAOBT")
                        txtOtherTM.Text = dtSD.Rows(0).Item("OtherTotalMarks")
                        txtOtherMO.Text = dtSD.Rows(0).Item("OtherMarksOBT")
                        txtOtherPercentage.Text = dtSD.Rows(0).Item("OtherPercentage")
                        If Not IsDBNull(dtSD.Rows(0).Item("OtherDateDeclare")) Then
                            txtOtherDOP.Text = Format(CDate(dtSD.Rows(0).Item("OtherDateDeclare")), "dd-MM-yyyy")
                        End If
                        cboPreference.SelectedValue = dtSD.Rows(0).Item("PreferenceID")

                End If
                Else
                    btnPrintForm.Enabled = False
                    btnViewResult.Visible = False
                    btnViewEligibility.Visible = False
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
        Dim strApplicationID As String
        Dim strCourseID As String
        Dim strCourseCycle As String
        Dim boolSbpEmp As Integer

        Dim dtTemp As Date

        Dim objFU As FileUpload
        Dim objTxtbox As TextBox



        Try

            If cbDeclaration.Checked = False Then
                Throw New Exception("Please check declaration")
            End If

            strQuery = "Select Count(*) from STUDENT_DETAIL where Email = '" + txtEmail.Text + "'"
            intRows = General.FetchScalar(strQuery)

            strPath = ""
            If fuImage.HasFile Then
                For Each postedFile As HttpPostedFile In fuImage.PostedFiles
                    strPath = Server.MapPath("~/StudentDocs/") + postedFile.FileName
                    fuImage.SaveAs(strPath)
                Next

            End If

            strPath = "~/StudentDocs/" + fuImage.FileName



            dtDOB = DateTime.ParseExact(Request.Form(txtDOB.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))

            If rbMale.Checked Then
                strGender = "M"
            Else
                strGender = "F"
            End If

            If RadioButtonSBPYES.Checked Then
                boolSbpEmp = 1
            Else
                boolSbpEmp = 0
            End If

            If intRows > 0 Then
                strQuery = "Update STUDENT_DETAIL set Name = '" + txtName.Text + "', FatherName = '" + txtFatherName.Text + "',CNIC = '"
                strQuery += txtCNIC.Text + "', Gender = '" + strGender + "', DOB = '" + Format(dtDOB, "yyyy/MM/dd") + "',Telephone = '"
                strQuery += txtTele.Text + "', Mobile = '" + txtMobile.Text + "', CityCode = '" + cboCity.SelectedValue + "', DomicileRegionCode = '"
                strQuery += cboDomicile.SelectedValue + "', DomicileCityCode = '" + cboDCity.SelectedValue + "', ReligionID = '" + cboReligion.SelectedValue + "', PostalAddress = '"
                strQuery += txtAddress.Text + "', SBP = " + boolSbpEmp.ToString() + ", SbpCityCode = '" + cboCitySbe.SelectedValue + "', SbpPinNo = '" + txtPinNo.Text + "', SbpDesig = '" + txtDesig.Text + "', SbpGrade = '" + txtGrade.Text + "', ImagePath = '" + strPath + "' where Email = '" + txtEmail.Text + "'"
            Else
                strQuery = "Insert into STUDENT_DETAIL (Email,Name,FatherName,CNIC,Gender,DOB,Telephone,Mobile,CityCode,DomicileRegionCode,DomicileCityCode,ReligionID,PostalAddress,ImagePath,SBP,SbpCityCode,SbpPinNo,SbpGrade,SbpDesig) values ('"
                strQuery += txtEmail.Text + "','" + txtName.Text + "','" + txtFatherName.Text + "','" + txtCNIC.Text + "','" + strGender + "','" + Format(dtDOB, "yyyy/MM/dd") + "','" + txtTele.Text + "','"
                strQuery += txtMobile.Text + "','" + cboCity.SelectedValue + "','" + cboDomicile.SelectedValue + "','" + cboDCity.SelectedValue + "','" + cboReligion.SelectedValue + "','" + txtAddress.Text + "','" + strPath + "'," + boolSbpEmp.ToString() + ",'" + cboCitySbe.SelectedValue + "','" + txtPinNo.Text + "','" + txtGrade.Text + "','" + txtDesig.Text + "')"
            End If
            strQuery += "|||"

            strApplicationID = Format(Now, "yyyyMMddHHmmss")
            strCourseID = 1
            strCourseCycle = 1

            Session("CourseID") = strCourseID
            Session("CourseCycle") = strCourseCycle


            strQuery += "Insert into APPLICATION (ApplicationID,Email,CourseID,CycleNo,MasterID,MasterSubject,MasterUniversityID,MasterCGPAID,MasterCGPAOBT,MasterTotalMarks,MasterMarksOBT,MasterPercentage,MasterDateDeclare,BachelorID,BachelorSubject,BachelorUniversityID,BachelorCGPAID,BachelorCGPAOBT,BachelorTotalMarks,BachelorMarksOBT,BachelorPercentage,BachelorDateDeclare,IntermediateID,IntermediateSubject,IntermediateBoardID,IntermediateTotalMarks,IntermediateMarksOBT,IntermediatePercentage,IntermediateDateDeclare,MatricID,MatricSubject,MatricBoardID,MatricTotalMarks,MatricMarksOBT,MatricPercentage,MatricDateDeclare,OtherID,OtherSubject,OtherUniversityID,OtherCGPAID,OtherCGPAOBT,OtherTotalMarks,OtherMarksOBT,OtherPercentage,OtherDateDeclare,PreferenceID,EligibleFlag) values ('"
            strQuery += strApplicationID + "','" + txtEmail.Text + "','" + strCourseID + "','" + strCourseCycle + "','" + cboMaster.SelectedValue + "','"
            strQuery += txtMasterSubject.Text + "','" + cboMasterUniversity.SelectedValue + "','" + cboMasterGPA.SelectedValue + "','" + txtMasterCGPA.Text + "','" + txtMasterTM.Text + "','"

            If txtMasterDOP.Text = "" Then
                strQuery += txtMasterMO.Text + "','" + txtMasterPercentage.Text + "',null,'" + cboBachelors.SelectedValue + "','" + txtBachelorSubject.Text + "','"
            Else
                dtTemp = DateTime.ParseExact(Request.Form(txtMasterDOP.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))
                strQuery += txtMasterMO.Text + "','" + txtMasterPercentage.Text + "','" + Format(dtTemp, "yyyy/MM/dd") + "','" + cboBachelors.SelectedValue + "','" + txtBachelorSubject.Text + "','"
            End If
            strQuery += cboBachelorsUniversity.SelectedValue + "','" + cboBachelorsGPA.SelectedValue + "','" + txtBachelorsCGPA.Text + "','" + txtBachelorsTM.Text + "','" + txtBachelorsMO.Text + "','"

            If txtBachelorDOP.Text = "" Then
                strQuery += txtBachelorsPercentage.Text + "',null,'" + cboIntermediate.SelectedValue + "','" + txtIntermediateSubject.Text + "','" + cboIntermediateBoard.SelectedValue + "','"
            Else
                dtTemp = DateTime.ParseExact(Request.Form(txtBachelorDOP.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))
                strQuery += txtBachelorsPercentage.Text + "','" + Format(dtTemp, "yyyy/MM/dd") + "','" + cboIntermediate.SelectedValue + "','" + txtIntermediateSubject.Text + "','" + cboIntermediateBoard.SelectedValue + "','"
            End If

            If txtInterDOP.Text = "" Then
                strQuery += txtIntermediateTM.Text + "','" + txtIntermediateMO.Text + "','" + txtIntermediatePercentage.Text + "',null,'" + cboMatriculation.SelectedValue + "','"
            Else
                dtTemp = DateTime.ParseExact(Request.Form(txtInterDOP.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))
                strQuery += txtIntermediateTM.Text + "','" + txtIntermediateMO.Text + "','" + txtIntermediatePercentage.Text + "','" + Format(dtTemp, "yyyy/MM/dd") + "','" + cboMatriculation.SelectedValue + "','"
            End If
            strQuery += txtMatriculationSubject.Text + "','" + cboMatriculationBoard.SelectedValue + "','" + txtMatriculationTM.Text + "','" + txtMatriculationMO.Text + "','" + txtMatriculationPercentage.Text + "',"

            If txtMatricDOP.Text = "" Then
                strQuery += "null,'" + cboOtherQualification.SelectedValue + "','" + txtOtherSubject.Text + "','" + cboOtherUniversity.SelectedValue + "','" + cboOtherGPA.SelectedValue + "','"
            Else
                dtTemp = DateTime.ParseExact(Request.Form(txtMatricDOP.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))
                strQuery += "'" + Format(dtTemp, "yyyy/MM/dd") + "','" + cboOtherQualification.SelectedValue + "','" + txtOtherSubject.Text + "','" + cboOtherUniversity.SelectedValue + "','" + cboOtherGPA.SelectedValue + "','"
            End If

            If txtOtherDOP.Text = "" Then
                strQuery += txtOtherCGPA.Text + "','" + txtOtherTM.Text + "','" + txtOtherMO.Text + "','" + txtOtherPercentage.Text + "',null,'"
            Else
                dtTemp = DateTime.ParseExact(Request.Form(txtOtherDOP.UniqueID), "dd-MM-yyyy", New CultureInfo("en-US"))
                strQuery += txtOtherCGPA.Text + "','" + txtOtherTM.Text + "','" + txtOtherMO.Text + "','" + txtOtherPercentage.Text + "','" + Format(dtTemp, "yyyy/MM/dd") + "','"
            End If


            strQuery += cboPreference.SelectedValue + "','0')|||"


            strQuery += "Insert into APPLICATIONREMARKS (ApplicationID,FinRemarks,FinApprove,ExRemarks,ExApprove,ExMRemarks,ExMApprove) values ('"
            strQuery += strApplicationID + "','','P','','P','','P')|||"

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
            btnSubmit.Enabled = False
            btnPrintForm.Enabled = True
            LoadStudentData()
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "Script", "showmodal();", True)
            'Response.Redirect("Application.aspx")

        Catch ex As Exception
            lblMessage.Visible = True
            lblMessage.Text = ex.Message
        End Try


    End Sub

    Protected Sub btnPrintForm_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnPrintForm.Click

        Try
            Response.Redirect("PrintAppForm.aspx")
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btnPrintForm_Click1(ByVal sender As Object, ByVal e As EventArgs)
        Try
            Response.Redirect("PrintAppForm.aspx")
        Catch ex As Exception

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

        'If Session("Doc") = 1 Then
        '    fuDoc0.Visible = True
        '    fuDoc1.Visible = False
        '    fuDoc2.Visible = False
        '    fuDoc3.Visible = False
        '    txtDocs0.Visible = True
        '    txtDocs1.Visible = False
        '    txtDocs2.Visible = False
        '    txtDocs3.Visible = False
        'ElseIf Session("Doc") = 2 Then
        '    fuDoc0.Visible = True
        '    fuDoc1.Visible = True
        '    fuDoc2.Visible = False
        '    fuDoc3.Visible = False
        '    txtDocs0.Visible = True
        '    txtDocs1.Visible = True
        '    txtDocs2.Visible = False
        '    txtDocs3.Visible = False
        'ElseIf Session("Doc") = 3 Then
        '    fuDoc0.Visible = True
        '    fuDoc1.Visible = True
        '    fuDoc2.Visible = True
        '    fuDoc3.Visible = False
        '    txtDocs0.Visible = True
        '    txtDocs1.Visible = True
        '    txtDocs2.Visible = True
        '    txtDocs3.Visible = False
        'ElseIf Session("Doc") = 4 Then
        '    fuDoc0.Visible = True
        '    fuDoc1.Visible = True
        '    fuDoc2.Visible = True
        '    fuDoc3.Visible = True
        '    txtDocs0.Visible = True
        '    txtDocs1.Visible = True
        '    txtDocs2.Visible = True
        '    txtDocs3.Visible = True
        'End If

    End Sub

    Protected Sub RadioButtonSBPYES_CheckedChanged(sender As Object, e As EventArgs)



        txtPinNo.Enabled = True
        txtDesig.Enabled = True
        cboCitySbe.Enabled = True
        txtGrade.Enabled = True
        cboCitySbe.Enabled = True

        txtPinNoValidator.Enabled = True
        txtDesigValidator1.Enabled = True
        txtGradeValidator1.Enabled = True


    End Sub





    'Else

    '    txtPinNo.Enabled = False
    '    txtDesig.Enabled = False
    '    cboCitySbe.Enabled = False
    '    txtGrade.Enabled = False
    '    cboCitySbe.Enabled = False

    'txtPinNo.Text = ""
    'txtDesig.Text = ""
    'txtGrade.Text = ""
    'cboCitySbe.SelectedIndex = 0


    Protected Sub RadioButtonSBPNO_CheckedChanged1(sender As Object, e As EventArgs)


        txtPinNo.Enabled = False
        txtDesig.Enabled = False
        cboCitySbe.Enabled = False
        txtGrade.Enabled = False
        ' cboCitySbe.Enabled = False
        txtPinNoValidator.Enabled = False
        txtDesigValidator1.Enabled = False
        txtGradeValidator1.Enabled = False



    End Sub


    Protected Sub rbMale_CheckedChanged(sender As Object, e As EventArgs) Handles rbMale.CheckedChanged

    End Sub
End Class




