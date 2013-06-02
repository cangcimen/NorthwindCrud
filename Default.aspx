<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat ="server" Text="Tambah Products" PostBackUrl ="~/productedit.aspx" />
    </div>
    <div>
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AutoGenerateColumns="False" DataKeyNames="ProductID" 
            DataSourceID="productDataSource"
            Width="1111px"
            GridLines="None"  
            AllowPaging="True"  
            CssClass="mGrid"  
            PagerStyle-CssClass="pgr"  
            AlternatingRowStyle-CssClass="alt">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                    SortExpression="ProductID" Visible="False" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                    SortExpression="CategoryID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                    SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                    SortExpression="UnitsInStock" Visible="False" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                    SortExpression="UnitsOnOrder" Visible="False" />
                <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
                    SortExpression="ReorderLevel" Visible="False" />
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" 
                    SortExpression="Discontinued" Visible="False" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                    SortExpression="CategoryName" />
                
                <asp:TemplateField HeaderText="Edit Data" >
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1"  runat="server" CausesValidation="False" ImageUrl="~/images/icon_edit.gif" PostBackUrl='<%# Eval("productid", "~/productedit.aspx?productid={0}") %>' /><!---->
                        <asp:ImageButton ID="ImageButton2"  runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/icon_delete.gif"  /> 
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="100px" />
                </asp:TemplateField>
                
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="productDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT * FROM [Alphabetical list of products]"
            DeleteCommand="DELETE FROM products where productid = @productid">
            
           <DeleteParameters>
                <asp:Parameter Name="productid" Type="string" Direction="Input"/>
           </DeleteParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
