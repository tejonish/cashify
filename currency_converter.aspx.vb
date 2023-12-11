
Partial Class currency_converter
    Inherits System.Web.UI.Page
    Dim a As Double
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If DropDownList1.Text = "INR" Then
            Image1.Visible = True
            Image2.Visible = False
            Image3.Visible = False
            Image4.Visible = False
            Image5.Visible = False
        End If

        If DropDownList1.Text = "USD" Then
            Image1.Visible = False
            Image2.Visible = True
            Image3.Visible = False
            Image4.Visible = False
            Image5.Visible = False
        End If

        If DropDownList1.Text = "YEN" Then
            Image1.Visible = False
            Image2.Visible = False
            Image3.Visible = True
            Image4.Visible = False
            Image5.Visible = False
        End If

        If DropDownList1.Text = "YUAN" Then
            Image1.Visible = False
            Image2.Visible = False
            Image3.Visible = False
            Image4.Visible = True
            Image5.Visible = False
        End If

        If DropDownList1.Text = "EURO" Then
            Image1.Visible = False
            Image2.Visible = False
            Image3.Visible = False
            Image4.Visible = False
            Image5.Visible = True
        End If

        If DropDownList2.Text = "INR" Then
            Image6.Visible = True
            Image7.Visible = False
            Image8.Visible = False
            Image9.Visible = False
            Image10.Visible = False
        End If

        If DropDownList2.Text = "USD" Then
            Image6.Visible = False
            Image7.Visible = True
            Image8.Visible = False
            Image9.Visible = False
            Image10.Visible = False
        End If

        If DropDownList2.Text = "YEN" Then
            Image6.Visible = False
            Image7.Visible = False
            Image8.Visible = True
            Image9.Visible = False
            Image10.Visible = False
        End If

        If DropDownList2.Text = "YUAN" Then
            Image6.Visible = False
            Image7.Visible = False
            Image8.Visible = False
            Image9.Visible = True
            Image10.Visible = False
        End If

        If DropDownList2.Text = "EURO" Then
            Image6.Visible = False
            Image7.Visible = False
            Image8.Visible = False
            Image9.Visible = False
            Image10.Visible = True
        End If

        If Val(TextBox1.Text) <= 0 Then
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
        End If


        If Val(TextBox1.Text) >= 5000 Then
            Label4.Text = 500
        End If
        If Val(TextBox1.Text) >= 50000 Then
            Label4.Text = 1000
        End If
        Label6.Text = 300
        Label11.Text = Val(TextBox1.Text) - Val(Label4.Text) - Val(Label6.Text)

        If DropDownList1.Text = "INR" And DropDownList2.Text = "USD" Then
            Label14.Text = "82.6153"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")

        End If
        If DropDownList1.Text = "USD" And DropDownList2.Text = "INR" Then
            Label14.Text = "0.012"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "INR" And DropDownList2.Text = "EURO" Then
            Label14.Text = "90.6249"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "EURO" And DropDownList2.Text = "INR" Then
            Label14.Text = "0.011"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "INR" And DropDownList2.Text = "WON" Then
            Label14.Text = "0.063"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "WON" And DropDownList2.Text = "INR" Then
            Label14.Text = "15.96"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "INR" And DropDownList2.Text = "YEN" Then
            Label14.Text = "0.57"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "YEN" And DropDownList2.Text = "INR" Then
            Label14.Text = "1.75"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "INR" And DropDownList2.Text = "YUAN" Then
            Label14.Text = "11.43"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "YUAN" And DropDownList2.Text = "INR" Then
            Label14.Text = "0.088"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "EURO" And DropDownList2.Text = "YUAN" Then
            Label14.Text = "0.13"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "YUAN" And DropDownList2.Text = "EURO" Then
            Label14.Text = "7.92"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "EURO" And DropDownList2.Text = "USD" Then
            Label14.Text = "0.91"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "USD" And DropDownList2.Text = "EURO" Then
            Label14.Text = "1.10"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "EURO" And DropDownList2.Text = "YEN" Then
            Label14.Text = "0.0063"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If
        If DropDownList1.Text = "YEN" And DropDownList2.Text = "EURO" Then
            Label14.Text = "157.58"
            a = Label11.Text / Label14.Text
            TextBox2.Text = a.ToString("N2")
        End If

        If DropDownList1.Text = DropDownList2.Text Then
            TextBox1.Text = ""
            DropDownList1.Focus()
        End If
        
        Label18.Text = Today().Day + 3 & "/" & Today().Month & "/" & Today().Year
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim TEMP As String
        TEMP = DropDownList1.Text
        DropDownList1.Text = DropDownList2.Text
        DropDownList2.Text = TEMP
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        If Val(TextBox2.Text) > 0 Then
            Application("drop1") = DropDownList1.Text
            Application("drop2") = DropDownList2.Text
            Application("txt2") = TextBox2.Text
            Response.Redirect("payment.aspx")
        Else
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
End Class
