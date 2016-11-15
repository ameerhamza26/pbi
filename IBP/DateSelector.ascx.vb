Public Class DateSelector
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Put user code to initialize the page here
        Dim scriptStr As String = _
        "javascript:return popUpCalendar(this,this, 'dd-mmm-yyyy', '__doPostBack(\'" & getClientID() & "\')')"
        '"javascript:return popUpCalendar(this," & getClientID() & ", 'mm/dd/yyyy', '__doPostBack(\'" & getClientID() & "\')')"
        txt_Date.Attributes.Add("onclick", scriptStr)

        Try
            If Not IsPostBack Then
                If txt_Date.Text = "" Then
                    'txt_Date.Text = Format(Now, "dd-MMM-yyyy")
                End If
            End If
        Catch ex As Exception

        End Try

    End Sub
    ' Get the id of the control rendered on client side
    ' Very essential for Javascript Calendar scripts to locate the textbox
    Public Function getClientID() As String
        Return txt_Date.ClientID()
    End Function

    ' This propery sets/gets the calendar date
    Public Property CalendarDate() As String
        Get
            Return txt_Date.Text
        End Get
        Set(ByVal Value As String)
            txt_Date.Text = Value
        End Set
    End Property

End Class