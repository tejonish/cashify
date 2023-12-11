Imports System.Data.SqlClient
Partial Class oldpassword
    Inherits System.Web.UI.Page
    Dim SqlStr As String
    Dim dVar As Integer
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Then
            TextBox1.Focus()
        ElseIf TextBox2.Text = TextBox3.Text Then
            conn.Open()
            Dim cmd As New SqlCommand("Update signup_tab set password= '" & TextBox2.Text & "'  where  loginname='" & TextBox1.Text & "'", conn)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            conn.Close()

            conn.Open()
            Dim cmd1 As New SqlCommand("Update signup_tab set confirmpassword= '" & TextBox3.Text & "'  where  loginname='" & TextBox1.Text & "'", conn)
            Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
            conn.Close()
            'Create Login
            conn.Open()
            Response.Redirect("Userlogin.aspx")
        Else
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox1.Focus()
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
End Class
