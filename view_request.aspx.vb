
Partial Class view_rejects
    Inherits System.Web.UI.Page

    
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim r As GridViewRow = GridView1.SelectedRow
        Application("SignupID") = r.Cells(1).Text
        Application("fname") = r.Cells(2).Text
        Application("lname") = r.Cells(3).Text
        Application("loginname") = r.Cells(4).Text
        Application("password") = r.Cells(5).Text
        Application("Confirmpassword") = r.Cells(6).Text
        Application("phno") = r.Cells(7).Text
        Application("email") = r.Cells(8).Text
        Application("Pname") = r.Cells(9).Text
        Application("Purl") = r.Cells(10).Text
        Response.Redirect("list_approval1.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub
End Class
