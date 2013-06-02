
Partial Class productedit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString.Count > 0 AndAlso Request.QueryString("productid") IsNot Nothing Then
            FormView1.ChangeMode(FormViewMode.Edit)
        Else
            FormView1.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Protected Sub FormView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        FormView1.ChangeMode(FormViewMode.ReadOnly)
        Response.Redirect("~/Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        'setelah item di update, maka akan kembali ke form default.aspx
        Response.Redirect("~/Default.aspx")
    End Sub
End Class
