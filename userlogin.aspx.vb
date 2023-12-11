Imports System.Data.SqlClient
Partial Class userlogin
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text = "" And TextBox2.Text = "" Then
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
        End If
        conn.Open()
        Dim cmd As New SqlCommand("Select * from signup_tab where loginname='" & TextBox1.Text & "'and password='" & TextBox2.Text & "' and Status='Approved'", conn)
        Dim res As SqlDataReader = cmd.ExecuteReader()
        If res.HasRows.ToString = True Then
            Response.Redirect("user_home.aspx")
        Else
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
            Label4.Visible = True
        End If
        conn.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Application("loginname") = TextBox1.Text
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class
