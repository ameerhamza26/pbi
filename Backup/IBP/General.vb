Imports Microsoft.VisualBasic
Imports mysql.Data.MySqlClient
Imports System.Data
Imports System.Net.Mail
Imports System.Net

Public Class General

    Private Shared m_strConnection As String = ConfigurationManager.AppSettings("DBConnection")


    Public Shared Function FetchDataTable(ByVal vstrQuery As String) As DataTable

        Dim cnnRM As MySqlConnection
        Dim cmdRM As MySqlCommand
        Dim daRM As MySqlDataAdapter
        Dim dsRM As DataSet

        Try
            cnnRM = New MySqlConnection(m_strConnection)
            cmdRM = New MySqlCommand

            cmdRM.Connection = cnnRM
            cmdRM.CommandType = CommandType.Text

            cmdRM.CommandText = vstrQuery
            cnnRM.Open()

            daRM = New MySqlDataAdapter(cmdRM)
            dsRM = New DataSet

            daRM.Fill(dsRM)

            FetchDataTable = dsRM.Tables(0)

        Catch ex As Exception
            Throw ex
        Finally
            If Not daRM Is Nothing Then
                daRM.Dispose()
            End If
            If Not cnnRM Is Nothing Then
                cnnRM.Dispose()
            End If
            If Not cmdRM Is Nothing Then
                cmdRM.Dispose()
            End If
        End Try

    End Function


    Public Shared Function FetchScalar(ByVal vstrQuery As String) As String

        Dim cnnRM As MySqlConnection
        Dim cmdRM As MySqlCommand

        Try
            cnnRM = New MySqlConnection(m_strConnection)
            cmdRM = New MySqlCommand

            cmdRM.Connection = cnnRM
            cmdRM.CommandType = CommandType.Text

            cmdRM.CommandText = vstrQuery
            cnnRM.Open()

            FetchScalar = cmdRM.ExecuteScalar()

        Catch ex As Exception
            Throw ex
        Finally
            If Not cnnRM Is Nothing Then
                cnnRM.Dispose()
            End If
            If Not cmdRM Is Nothing Then
                cmdRM.Dispose()
            End If
        End Try

    End Function


    Public Shared Sub DoMultiTransaction(ByVal vstrQuery As String)

        Dim cnnRM As MySqlConnection = Nothing
        Dim cmdRM As MySqlCommand = Nothing
        Dim transRM As MySqlTransaction = Nothing
        Dim arrStrValues() As String
        Dim intCounter As Integer

        arrStrValues = Split(vstrQuery, "|||")

        Try
            cnnRM = New MySqlConnection(m_strConnection)
            cmdRM = New MySqlCommand

            cmdRM.Connection = cnnRM
            cmdRM.CommandType = CommandType.Text
            cnnRM.Open()

            transRM = cnnRM.BeginTransaction
            cmdRM.Transaction = transRM

            For intCounter = 0 To arrStrValues.Length - 2
                cmdRM.CommandText = arrStrValues(intCounter)
                cmdRM.ExecuteNonQuery()
            Next

            transRM.Commit()

        Catch ex As Exception
            transRM.Rollback()
            Throw ex
        Finally
            If Not cnnRM Is Nothing Then
                cnnRM.Dispose()
            End If
            If Not cmdRM Is Nothing Then
                cmdRM.Dispose()
            End If
        End Try

    End Sub

    Public Shared Sub DoSingleTransaction(ByVal vstrQuery As String)

        Dim cnnRM As MySqlConnection = Nothing
        Dim cmdRM As MySqlCommand = Nothing

        Try
            cnnRM = New MySqlConnection(m_strConnection)
            cmdRM = New MySqlCommand

            cmdRM.Connection = cnnRM
            cmdRM.CommandType = CommandType.Text
            cnnRM.Open()

            cmdRM.CommandText = vstrQuery
            cmdRM.ExecuteNonQuery()

        Catch ex As Exception
            Throw ex
        Finally
            If Not cnnRM Is Nothing Then
                cnnRM.Dispose()
            End If
            If Not cmdRM Is Nothing Then
                cmdRM.Dispose()
            End If
        End Try

    End Sub

    Public Shared Function IsValidEmail(ByVal strEmail As String) As Boolean

        Dim blnvalid As Boolean = True
        Dim strnames, strname
        Dim intCount As Integer
        strnames = Split(strEmail, "@")

        If UBound(strnames) <> 1 Then
            blnvalid = False
            Return blnvalid
        End If

        For Each strname In strnames
            If Len(strname) <= 0 Then
                blnvalid = False
                Return blnvalid
            End If
            For intCount = 1 To Len(strname)
                'IntCounter = LCase(Mid(strname, intCount, 1))
                If InStr("abcdefghijklmnopqrstuvwxyz_-.", LCase(Mid(strname, intCount, 1))) <= 0 And Not IsNumeric(LCase(Mid(strname, intCount, 1))) Then
                    blnvalid = False
                    Return blnvalid
                End If
            Next
            If Left(strname, 1) = "." Or Right(strname, 1) = "." Then
                blnvalid = False
                Return blnvalid
            End If
        Next
        If InStr(strnames(1), ".") <= 0 Then
            blnvalid = False
            Return blnvalid
        End If
        intCount = Len(strnames(1)) - InStrRev(strnames(1), ".")
        If intCount <> 2 And intCount <> 3 Then
            blnvalid = False
            Return blnvalid
        End If
        If InStr(strEmail, "..") > 0 Then
            blnvalid = False
            Return blnvalid
        End If
        Return blnvalid
    End Function

    Public Shared Sub SendMail(ByVal Subject As String, ByVal pstrBody As String, ByVal pstrTo As String, ByVal pstrBcc As String, ByVal pstrCC As String)

        Dim objMail As MailMessage = Nothing
        Dim smptCl As SmtpClient = Nothing

        Try

            objMail = New MailMessage()
            objMail.From = New MailAddress(ConfigurationManager.AppSettings("FromEmail"))
            objMail.To.Add(pstrTo)
            If pstrCC <> "" Then
                objMail.CC.Add(pstrCC)
            End If
            If pstrBcc <> "" Then
                objMail.Bcc.Add(pstrBcc)
            End If
            objMail.Subject = Subject
            objMail.Body = pstrBody + vbCr + vbLf + objMail.Body


            'smptCl = New SmtpClient(ConfigurationManager.AppSettings("SMTPServer"), ConfigurationManager.AppSettings("SMTPPort"))
            smptCl = New SmtpClient(ConfigurationManager.AppSettings("SMTPServer"))
            'smptCl.EnableSsl = True
            'smptCl.DeliveryMethod = SmtpDeliveryMethod.Network
            'smptCl.UseDefaultCredentials = False

            'smptCl.Credentials = New NetworkCredential(ConfigurationManager.AppSettings("FromEmail"), ConfigurationManager.AppSettings("FromPassword"))

            smptCl.Send(objMail)

        Catch ex As Exception
            Throw New Exception("Error While Sending Email")
        Finally
            If Not objMail Is Nothing Then
                objMail = Nothing
            End If
            If Not smptCl Is Nothing Then
                smptCl = Nothing
            End If
        End Try
    End Sub

End Class
