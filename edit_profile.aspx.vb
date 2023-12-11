Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Partial Class edit_profile
    Inherits System.Web.UI.Page

    Dim n As Integer
    Dim num As Long
    Dim sqlstr As String
    Dim dvar As Integer

    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Application("signupID")
        Label19.Text = Application("loginname")

        conn.ConnectionString = Application("str")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        If TextBox7.Text = TextBox5.Text Then
            conn.Open()
            Dim cmd As New SqlCommand("Delete from signup_tab where loginname='" & Label19.Text & "'", conn)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            conn.Close()
            conn.Open()
            If FileUpload1.PostedFile IsNot Nothing Then
                Dim FileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)

                FileUpload1.SaveAs(Server.MapPath("photos/" & FileName))
                Dim cmd2 As New SqlCommand("insert into signup_tab(signupID,fname,lname,loginname,password,confirmpassword,phno,email,Pname,Purl,Status)Values(" & TextBox1.Text & ",'" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox7.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox8.Text & "',@filename,@filepath,'Approved')", conn)
                cmd2.Parameters.AddWithValue("@filename", FileName)
                cmd2.Parameters.AddWithValue("@filepath", "photos/" & FileName)
                Dim res As SqlDataReader = cmd2.ExecuteReader()
                conn.Close()
                Response.Redirect("profile.aspx")
            End If
        Else
            TextBox5.Text = ""
            TextBox7.Text = ""
            TextBox7.Focus()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Response.Redirect("profile.aspx")
    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick

    End Sub
End Class
