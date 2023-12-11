Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Partial Class bank_details
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        conn.ConnectionString = Application("str")
        conn.Open()
        Dim cmd2 As New SqlCommand("insert into bank_tab(loginname,name,lname,fathername,mothername,dob,gender,contactno,address,email,accno,acctype,cifno,bankname,bankaddress)Values('" & TextBox14.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & gender.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox10.Text & "','" & acctype.Text & "','" & TextBox11.Text & "','" & TextBox12.Text & "','" & TextBox13.Text & "')", conn)
        Dim rs As SqlDataReader = cmd2.ExecuteReader()
        conn.Close()
        MsgBox("The Record has been Saved Successfully")
        Response.Redirect("userlogin.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox10.Text = ""
        TextBox11.Text = ""
        TextBox12.Text = ""
        TextBox13.Text = ""
        gender.Text = "SELECT"
        acctype.Text = "SELECT"
        TextBox1.Focus()
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As System.EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class
