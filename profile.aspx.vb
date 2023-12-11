Imports System.Data.SqlClient

Partial Class profile
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init



        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        Dim str As String
        str = "select signupID,fname,lname,loginname,password,confirmpassword,phno,email,purl from signup_tab where loginname='" & Application("loginname") & "'"
        Dim cmd As New SqlCommand(str, conn)

        Dim res As SqlDataReader = cmd.ExecuteReader()
        If res.HasRows = True Then

            res.Read()
            Application("signupID") = res(0).ToString
            Application("fname") = res(1).ToString
            Application("lname") = res(2).ToString
            Application("loginname") = res(3).ToString
            Application("password") = res(4).ToString
            Application("confirmpassword") = res(5).ToString
            Application("phno") = res(6).ToString
            Application("email") = res(7).ToString
            Application("purl") = res(8).ToString

            TextBox1.Text = Application("signupID")
            TextBox2.Text = Application("fname")
            TextBox3.Text = Application("lname")
            TextBox4.Text = Application("loginname")
            TextBox5.Text = Application("password")
            TextBox6.Text = Application("confirmpassword")
            TextBox7.Text = Application("phno")
            TextBox8.Text = Application("email")
            Image3.ImageUrl = Application("purl")


        End If

    End Sub


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label19.Text = Application("loginname")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Response.Redirect("edit_profile.aspx")
    End Sub
End Class
