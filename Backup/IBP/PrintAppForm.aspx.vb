﻿'msqtest
'ru1+i)$!!a7X

Public Class PrintAppForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try

            LoadApplicationData()

        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub

    Private Sub LoadApplicationData()

        Dim strQuery As String
        Dim dtApplication As DataTable

        Try
            strQuery = "SELECT STUDENT_DETAIL.Email, STUDENT_DETAIL.Name, STUDENT_DETAIL.FatherName, STUDENT_DETAIL.CNIC, STUDENT_DETAIL.Gender, STUDENT_DETAIL.DOB, STUDENT_DETAIL.Telephone, STUDENT_DETAIL.Mobile, STUDENT_DETAIL.PostalAddress, APPLICATION.ApplicationID, APPLICATION.CourseID, APPLICATION.CycleNo, APPLICATION.MasterSubject, APPLICATION.MasterCGPAOBT, APPLICATION.MasterTotalMarks, APPLICATION.MasterMarksOBT, APPLICATION.MasterPercentage, APPLICATION.MasterDateDeclare, APPLICATION.BachelorSubject, APPLICATION.BachelorCGPAOBT, APPLICATION.BachelorTotalMarks, APPLICATION.BachelorMarksOBT, APPLICATION.BachelorPercentage, APPLICATION.BachelorDateDeclare, APPLICATION.IntermediateSubject, APPLICATION.IntermediateTotalMarks, APPLICATION.IntermediateMarksOBT, APPLICATION.IntermediatePercentage, APPLICATION.IntermediateDateDeclare, APPLICATION.MatricSubject, APPLICATION.MatricTotalMarks, APPLICATION.MatricMarksOBT, APPLICATION.MatricPercentage, APPLICATION.MatricDateDeclare, APPLICATION.OtherSubject, APPLICATION.OtherCGPAOBT, APPLICATION.OtherTotalMarks, APPLICATION.OtherMarksOBT, APPLICATION.OtherPercentage, APPLICATION.OtherDateDeclare, DOMICILECITY.Description AS DomicileCity, BACHELORDEGREE.Description AS Bachelor, BOARD.Description AS InterBoard, DOMICILEREGION.Description AS DomicileRegion, MATRICULATION.Description AS Matric, MASTERDEGREE.Description AS Master, INTERMEDIATE.Description AS Inter, CGPA.Description AS MasterCGPA, OTHERQUALIFICATION.Description AS OtherQ, UNIVERSITY_1.Description AS BachelorUniversity, CGPA_2.Description AS OtherQCGPA, DOMICILECITY_1.Description AS CityOR, UNIVERSITY.Description AS MasterUniversity, CGPA_1.Description AS BachelorCGPA, UNIVERSITY_3.Description AS OtherUniversity, PREFERENCES.Description AS Preference, RELIGION.Description AS Religion, BOARD_1.Description AS MatricBoard FROM STUDENT_DETAIL INNER JOIN APPLICATION ON STUDENT_DETAIL.Email = APPLICATION.Email INNER JOIN DOMICILECITY ON STUDENT_DETAIL.DomicileCityCode = DOMICILECITY.Code INNER JOIN DOMICILEREGION ON STUDENT_DETAIL.DomicileRegionCode = DOMICILEREGION.Code INNER JOIN RELIGION ON STUDENT_DETAIL.ReligionID = RELIGION.ID INNER JOIN MASTERDEGREE ON APPLICATION.MasterID = MASTERDEGREE.ID INNER JOIN CGPA ON APPLICATION.MasterCGPAID = CGPA.ID INNER JOIN BACHELORDEGREE ON APPLICATION.BachelorID = BACHELORDEGREE.ID INNER JOIN UNIVERSITY ON APPLICATION.MasterUniversityID = UNIVERSITY.ID INNER JOIN UNIVERSITY UNIVERSITY_1 ON APPLICATION.BachelorUniversityID = UNIVERSITY_1.ID INNER JOIN CGPA CGPA_1 ON APPLICATION.BachelorCGPAID = CGPA_1.ID INNER JOIN INTERMEDIATE ON APPLICATION.IntermediateID = INTERMEDIATE.ID INNER JOIN BOARD ON APPLICATION.IntermediateBoardID = BOARD.ID INNER JOIN MATRICULATION ON APPLICATION.MatricID = MATRICULATION.ID INNER JOIN BOARD BOARD_1 ON APPLICATION.MatricBoardID = BOARD_1.ID INNER JOIN OTHERQUALIFICATION ON APPLICATION.OtherID = OTHERQUALIFICATION.ID INNER JOIN UNIVERSITY UNIVERSITY_3 ON APPLICATION.OtherUniversityID = UNIVERSITY_3.ID INNER JOIN CGPA CGPA_2 ON APPLICATION.OtherCGPAID = CGPA_2.ID INNER JOIN PREFERENCES ON APPLICATION.PreferenceID = PREFERENCES.ID INNER JOIN DOMICILECITY DOMICILECITY_1 ON STUDENT_DETAIL.CityCode = DOMICILECITY_1.Code where STUDENT_DETAIL.Email = '" + Session("UserID") + "'"

            dtApplication = General.FetchDataTable(strQuery)

            If dtApplication.Rows.Count > 0 Then

                lblName.Text = dtApplication.Rows(0).Item("Name").ToString()
                lblAppID.Text = dtApplication.Rows(0).Item("ApplicationID").ToString()
                lblFName.Text = dtApplication.Rows(0).Item("FatherName").ToString()
                lblCNIC.Text = dtApplication.Rows(0).Item("CNIC").ToString()

                If dtApplication.Rows(0).Item("Gender").ToString() = "M" Then
                    lblGender.Text = "Male"
                Else
                    lblGender.Text = "Female"
                End If

                lblDOB.Text = dtApplication.Rows(0).Item("DOB").ToString()
                lblContact.Text = dtApplication.Rows(0).Item("Telephone").ToString()
                lblMobile.Text = dtApplication.Rows(0).Item("Mobile").ToString()
                lblAddress.Text = dtApplication.Rows(0).Item("PostalAddress").ToString()
                lblCOR.Text = dtApplication.Rows(0).Item("CityOR").ToString()
                lblDCity.Text = dtApplication.Rows(0).Item("DomicileCity").ToString()
                lblDomicile.Text = dtApplication.Rows(0).Item("DomicileRegion").ToString()
                lblEmail.Text = dtApplication.Rows(0).Item("Email").ToString()
                lblReligion.Text = dtApplication.Rows(0).Item("Religion").ToString()

                lblMaster.Text = dtApplication.Rows(0).Item("Master").ToString()
                lblMasterSubject.Text = dtApplication.Rows(0).Item("MasterSubject").ToString()
                lblMasterUniversity.Text = dtApplication.Rows(0).Item("MasterUniversity").ToString()
                lblMasterCGPA.Text = dtApplication.Rows(0).Item("MasterCGPAOBT").ToString()
                lblMasterGPA.Text = dtApplication.Rows(0).Item("MasterCGPA").ToString()
                lblMasterTM.Text = dtApplication.Rows(0).Item("MasterTotalMarks").ToString()
                lblMasterMO.Text = dtApplication.Rows(0).Item("MasterMarksOBT").ToString()
                lblMasterPercentage.Text = dtApplication.Rows(0).Item("MasterPercentage").ToString()
                lblMasterDOP.Text = dtApplication.Rows(0).Item("MasterDateDeclare").ToString()

                lblBachelor.Text = dtApplication.Rows(0).Item("Bachelor").ToString()
                lblBachelorSubject.Text = dtApplication.Rows(0).Item("BachelorSubject").ToString()
                lblBachelorUniversity.Text = dtApplication.Rows(0).Item("BachelorUniversity").ToString()
                lblBachelorCGPA.Text = dtApplication.Rows(0).Item("BachelorCGPAOBT").ToString()
                lblBachelorGPA.Text = dtApplication.Rows(0).Item("BachelorCGPA").ToString()
                lblBachelorTM.Text = dtApplication.Rows(0).Item("BachelorTotalMarks").ToString()
                lblBachelorMO.Text = dtApplication.Rows(0).Item("BachelorMarksOBT").ToString()
                lblBachelorPercentage.Text = dtApplication.Rows(0).Item("BachelorPercentage").ToString()
                lblBachelorDOP.Text = dtApplication.Rows(0).Item("BachelorDateDeclare").ToString()

                lblInter.Text = dtApplication.Rows(0).Item("Inter").ToString()
                lblInterSubject.Text = dtApplication.Rows(0).Item("IntermediateSubject").ToString()
                lblInterBoard.Text = dtApplication.Rows(0).Item("InterBoard").ToString()
                lblInterTM.Text = dtApplication.Rows(0).Item("IntermediateTotalMarks").ToString()
                lblInterMO.Text = dtApplication.Rows(0).Item("IntermediateMarksOBT").ToString()
                lblInterPercentage.Text = dtApplication.Rows(0).Item("IntermediatePercentage").ToString()
                lblInterDOP.Text = dtApplication.Rows(0).Item("IntermediateDateDeclare").ToString()

                lblMatric.Text = dtApplication.Rows(0).Item("Matric").ToString()
                lblMatricSubject.Text = dtApplication.Rows(0).Item("MatricSubject").ToString()
                lblMatricBoard.Text = dtApplication.Rows(0).Item("InterBoard").ToString()
                lblMatricTM.Text = dtApplication.Rows(0).Item("MatricTotalMarks").ToString()
                lblMatricMO.Text = dtApplication.Rows(0).Item("MatricMarksOBT").ToString()
                lblMatricPercentage.Text = dtApplication.Rows(0).Item("MatricPercentage").ToString()
                lblMatricDOP.Text = dtApplication.Rows(0).Item("MatricDateDeclare").ToString()

                lblOther.Text = dtApplication.Rows(0).Item("OtherQ").ToString()
                lblOtherSubject.Text = dtApplication.Rows(0).Item("OtherSubject").ToString()
                lblOtherUniversity.Text = dtApplication.Rows(0).Item("OtherUniversity").ToString()
                lblOtherCGPA.Text = dtApplication.Rows(0).Item("OtherCGPAOBT").ToString()
                lblOtherGPA.Text = dtApplication.Rows(0).Item("OtherQCGPA").ToString()
                lblOtherTM.Text = dtApplication.Rows(0).Item("OtherTotalMarks").ToString()
                lblOtherMO.Text = dtApplication.Rows(0).Item("OtherMarksOBT").ToString()
                lblOtherPercentage.Text = dtApplication.Rows(0).Item("OtherPercentage").ToString()
                lblOtherDOP.Text = dtApplication.Rows(0).Item("OtherDateDeclare").ToString()

                lblPreference.Text = dtApplication.Rows(0).Item("Preference").ToString()

                lblACName.Text = lblName.Text
                lblBCName.Text = lblName.Text
                lblIBPName.Text = lblName.Text

                lblACFName.Text = lblFName.Text
                lblBCFName.Text = lblFName.Text
                lblIBPFName.Text = lblFName.Text

                lblACCNIC.Text = lblCNIC.Text
                lblBCCNIC.Text = lblCNIC.Text
                lblIBPCNIC.Text = lblCNIC.Text

                lblACAddress.Text = lblAddress.Text
                lblBCAddress.Text = lblAddress.Text
                lblIBPAddress.Text = lblAddress.Text

            End If

        Catch ex As Exception
            Throw ex
        End Try

    End Sub



End Class


'SELECT STUDENT_DETAIL.Email, STUDENT_DETAIL.Name, STUDENT_DETAIL.FatherName, STUDENT_DETAIL.CNIC, STUDENT_DETAIL.Gender, STUDENT_DETAIL.DOB, 
'                  STUDENT_DETAIL.Telephone, STUDENT_DETAIL.Mobile, STUDENT_DETAIL.PostalAddress, APPLICATION.ApplicationID, APPLICATION.CousreID, APPLICATION.CycleNo, 
'                  APPLICATION.MasterSubject, APPLICATION.MasterCGPAOBT, APPLICATION.MasterTotalMarks, APPLICATION.MasterMarksOBT, APPLICATION.MasterPercentage, 
'                  APPLICATION.MasterDateDeclare, APPLICATION.BachelorSubject, APPLICATION.BachelorCGPAOBT, APPLICATION.BachelorTotalMarks, 
'                  APPLICATION.BachelorMarksOBT, APPLICATION.BachelorPercentage, APPLICATION.BachelorDateDeclare, APPLICATION.IntermediateSubject, 
'                  APPLICATION.IntermediateTotalMarks, APPLICATION.IntermediateMarksOBT, APPLICATION.IntermediatePercentage, APPLICATION.IntermediateDateDeclare, 
'                  APPLICATION.MatricSubject, APPLICATION.MatricTotalMarks, APPLICATION.MatricMarksOBT, APPLICATION.MatricPercentage, APPLICATION.MatricDateDeclare, 
'                  APPLICATION.OtherSubject, APPLICATION.OtherCGPAOBT, APPLICATION.OtherTotalMarks, APPLICATION.OtherMarksOBT, APPLICATION.OtherPercentage, 
'                  APPLICATION.OtherDateDeclare, DOMICILECITY.Description AS DomicileCity, BACHELORDEGREE.Description AS Bachelor, BOARD.Description AS InterBoard, 
'                  DOMICILEREGION.Description AS DomicileRegion, MATRICULATION.Description AS Matric, MASTERDEGREE.Description AS Master, INTERMEDIATE.Description AS Inter, 
'                  CGPA.Description AS MasterCGPA, OTHERQUALIFICATION.Description AS OtherQ, UNIVERSITY_1.Description AS BachelorUniversity, 
'                  CGPA_2.Description AS OtherQCGPA, DOMICILECITY_1.Description AS CityOR, UNIVERSITY.Description AS MasterUniversity, CGPA_1.Description AS BachelorCGPA, 
'                  UNIVERSITY_3.Description AS OtherUniversity, PREFERENCES.Description AS Preference, RELIGION.Description AS Religion, BOARD_1.Description AS MatricBoard
'FROM     STUDENT_DETAIL INNER JOIN
'                  APPLICATION ON STUDENT_DETAIL.Email = APPLICATION.Email INNER JOIN
'                  DOMICILECITY ON STUDENT_DETAIL.DomicileCityCode = DOMICILECITY.Code INNER JOIN
'                  DOMICILEREGION ON STUDENT_DETAIL.DomicileRegionCode = DOMICILEREGION.Code INNER JOIN
'                  RELIGION ON STUDENT_DETAIL.ReligionID = RELIGION.ID INNER JOIN
'                  MASTERDEGREE ON APPLICATION.MasterID = MASTERDEGREE.ID INNER JOIN
'                  CGPA ON APPLICATION.MasterCGPAID = CGPA.ID INNER JOIN
'                  BACHELORDEGREE ON APPLICATION.BachelorID = BACHELORDEGREE.ID INNER JOIN
'                  UNIVERSITY ON APPLICATION.MasterUniversityID = UNIVERSITY.ID INNER JOIN
'                  UNIVERSITY UNIVERSITY_1 ON APPLICATION.BachelorUniversityID = UNIVERSITY_1.ID INNER JOIN
'                  CGPA CGPA_1 ON APPLICATION.BachelorCGPAID = CGPA_1.ID INNER JOIN
'                  INTERMEDIATE ON APPLICATION.IntermediateID = INTERMEDIATE.ID INNER JOIN
'                  BOARD ON APPLICATION.IntermediateBoardID = BOARD.ID INNER JOIN
'                  MATRICULATION ON APPLICATION.MatricID = MATRICULATION.ID INNER JOIN
'                  BOARD BOARD_1 ON APPLICATION.MatricBoardID = BOARD_1.ID INNER JOIN
'                  OTHERQUALIFICATION ON APPLICATION.OtherID = OTHERQUALIFICATION.ID INNER JOIN
'                  UNIVERSITY UNIVERSITY_3 ON APPLICATION.OtherUniversityID = UNIVERSITY_3.ID INNER JOIN
'                  CGPA CGPA_2 ON APPLICATION.OtherCGPAID = CGPA_2.ID INNER JOIN
'                  PREFERENCES ON APPLICATION.PreferenceID = PREFERENCES.ID INNER JOIN
'                  DOMICILECITY DOMICILECITY_1 ON STUDENT_DETAIL.CityCode = DOMICILECITY_1.Code








