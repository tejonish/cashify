Imports System.Data.SqlClient

Partial Class transaction_history
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label1.Text = Application("loginname")
    End Sub
End Class
