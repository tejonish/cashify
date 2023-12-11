Imports System.Data.SqlClient
Imports System.Net.Mail
Partial Class list_approval
    Inherits System.Web.UI.Page
    Dim mid As String
    Public conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        conn.Open()
        Dim cmd As New SqlCommand("Update Signup_tab set Status='Approved' where signupID=" & TextBox1.Text & "", conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        conn.Close()
        'Create Login
        conn.Open()
        Response.Redirect("admin_home.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Application("signupID")
        TextBox2.Text = Application("fname")
        TextBox3.Text = Application("lname")
        TextBox4.Text = Application("loginname")
        TextBox5.Text = Application("password")
        TextBox6.Text = Application("phno")
        TextBox7.Text = Application("email")
        Image1.ImageUrl = Application("Purl")
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        conn.Open()
        Dim cmd As New SqlCommand("Update Signup_Tab set Status='REJECTED' where SignupID=" & TextBox1.Text & "", conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        conn.Close()
        'Create Login
        conn.Open()
        Response.Redirect("admin_home.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Response.Redirect("admin_home.aspx")
    End Sub

End Class
