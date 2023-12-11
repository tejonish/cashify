Imports System.Data.SqlClient
Partial Class admin_login
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If txtID.Text = "" And TxtPass.Text = "" Then
            txtID.Text = ""
            TxtPass.Text = ""
            txtID.Focus()
        End If
        conn.Open()
        Dim cmd As New SqlCommand("Select * from admin_tab where adminname='" & TxtID.Text & "'and Password='" & TxtPass.Text & "' ", conn)
        Dim res As SqlDataReader = cmd.ExecuteReader()
        If res.HasRows.ToString = True Then
            Response.Redirect("admin_home.aspx")
            Label3.Visible = False
        Else
            TxtID.Text = ""
            TxtPass.Text = ""
            TxtID.Focus()
            Label3.Visible = True
        End If
        conn.Close()
    End Sub
End Class
