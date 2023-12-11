Imports System.Data.SqlClient

Partial Class veiw_bank_details
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Response.Redirect("edit_bank_details.aspx")

    End Sub

    Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init



        Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\cashify.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        Dim str As String
        str = "select loginname,name,lname,fathername,mothername,dob,gender,contactno,address,email,accno,acctype,cifno,bankname,bankaddress from bank_tab where loginname='" & Application("loginname") & "'"
        Dim cmd As New SqlCommand(str, conn)

        Dim res As SqlDataReader = cmd.ExecuteReader()
        If res.HasRows = True Then

            res.Read()
            Application("loginname") = res(0).ToString
            Application("name") = res(1).ToString
            Application("lname") = res(2).ToString
            Application("fathername") = res(3).ToString
            Application("mothername") = res(4).ToString
            Application("dob") = res(5).ToString
            Application("gender") = res(6).ToString
            Application("contactno") = res(7).ToString
            Application("address") = res(8).ToString
            Application("email") = res(9).ToString
            Application("accno") = res(10).ToString
            Application("acctype") = res(11).ToString
            Application("cifno") = res(12).ToString
            Application("bankname") = res(13).ToString
            Application("bankaddress") = res(14).ToString


            TextBox1.Text = Application("name")
            TextBox2.Text = Application("lname")
            TextBox3.Text = Application("fathername")
            TextBox4.Text = Application("mothername")
            TextBox5.Text = Application("dob")
            gender.Text = Application("gender")
            TextBox6.Text = Application("contactno")
            TextBox7.Text = Application("address")
            TextBox8.Text = Application("email")
            TextBox10.Text = Application("accno")
            acctype.Text = Application("acctype")
            TextBox11.Text = Application("cifno")
            TextBox12.Text = Application("bankname")
            TextBox13.Text = Application("bankaddress")
            TextBox14.Text = Application("loginname")

        End If


    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label17.Text = Application("loginname")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Response.Redirect("user_home.aspx")
    End Sub
End Class

