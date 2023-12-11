Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Partial Class signup
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim n As Integer
    Dim num As Long
    Dim sqlstr As String
    Dim dvar As Integer


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox5.Text = TextBox7.Text Then
            conn.Open()
            If FileUpload1.PostedFile IsNot Nothing Then
                Dim FileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
                FileUpload1.SaveAs(Server.MapPath("photos/" & FileName))
                Dim cmd2 As New SqlCommand("insert into signup_tab(signupID,fname,lname,loginname,password,confirmpassword,phno,email,Pname,Purl,Status)Values(" & TextBox1.Text & ",'" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox7.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox8.Text & "',@filename,@filepath,'Pending')", conn)
                cmd2.Parameters.AddWithValue("@filename", FileName)
                cmd2.Parameters.AddWithValue("@filepath", "photos/" & FileName)
                Dim res As SqlDataReader = cmd2.ExecuteReader()
                conn.Close()
                Application("loginname") = "loginname"
                Response.Redirect("bank_details.aspx")
            End If
        Else
            TextBox5.Text = ""
            TextBox7.Text = ""
            TextBox5.Focus()
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox7.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox8.Text = ""
        TextBox1.Focus()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = Application("str")
        conn.Open()
        Dim cmd1 As New SqlCommand("select Max(signupID) from signup_tab", conn)
        Dim rs As SqlDataReader = cmd1.ExecuteReader()
        rs.Read()
        TextBox1.Text = rs(0) + 1
        rs.Close()
        conn.Close()
    End Sub
End Class
