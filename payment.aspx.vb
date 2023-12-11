Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Partial Class payment
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim n As Integer
    Dim num As Long
    Dim sqlstr As String
    Dim dvar As Integer

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label14.Text = Application("loginname")
        TextBox14.Text = Application("loginname")

        TextBox2.Text = Application("drop1")
        TextBox3.Text = Application("drop2")
        TextBox13.Text = Application("txt2")

        conn.ConnectionString = Application("str")
        conn.Open()
        Dim cmd1 As New SqlCommand("select Max(transID) from payment_tab", conn)
        Dim rs As SqlDataReader = cmd1.ExecuteReader()
        rs.Read()
        TextBox1.Text = rs(0) + 1
        rs.Close()
        conn.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Application("pay") = TextBox13.Text

        conn.Open()
        Dim cmd2 As New SqlCommand("insert into payment_tab(loginname,transID,fromcur,tocur,name,address,contactno,email,bankname,bankaddress,country,accno,amt)Values('" & TextBox14.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox10.Text & "','" & TextBox9.Text & "','" & TextBox11.Text & "','" & TextBox12.Text & "','" & TextBox13.Text & "')", conn)
        Dim rs As SqlDataReader = cmd2.ExecuteReader()
        conn.Close()
        Response.Redirect("card_details.aspx")


    End Sub

    Protected Sub TextBox7_TextChanged(sender As Object, e As System.EventArgs) Handles TextBox7.TextChanged

    End Sub
End Class

