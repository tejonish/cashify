Imports System.Data.SqlClient

Partial Class card_details
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")

  
    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Response.Redirect("payment.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label6.Text = Application("loginname")
        TextBox8.Text = Application("pay")
       
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        If Val(TextBox5.Text) > 12 Then
            TextBox5.Text = ""
            TextBox6.Text = ""
            TextBox5.Focus()
        Else
            Response.Redirect("pay_success.aspx")
        End If
    End Sub

    Protected Sub TextBox5_TextChanged(sender As Object, e As System.EventArgs) Handles TextBox5.TextChanged

    End Sub
End Class
