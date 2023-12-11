Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls

Partial Class edit_bank_details
    Inherits System.Web.UI.Page
    Dim n As Integer
    Dim num As Long
    Dim sqlstr As String
    Dim dvar As Integer

    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        TextBox14.Text = Application("loginname")
        Label18.Text = Application("loginname")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        conn.Open()
        Dim cmd As New SqlCommand("Delete from bank_tab where loginname='" & Label18.Text & "'", conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        conn.Close()
        conn.Open()
        
        Dim cmd2 As New SqlCommand("insert into bank_tab(loginname,name,lname,fathername,mothername,dob,gender,contactno,address,email,accno,acctype,cifno,bankname,bankaddress)Values('" & TextBox14.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & gender.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox10.Text & "','" & acctype.Text & "','" & TextBox11.Text & "','" & TextBox12.Text & "','" & TextBox13.Text & "')", conn)
            
            Dim res As SqlDataReader = cmd2.ExecuteReader()
            conn.Close()
        Response.Redirect("user_home.aspx")

    End Sub

    Protected Sub TextBox12_TextChanged(sender As Object, e As System.EventArgs) Handles TextBox12.TextChanged

    End Sub
End Class
