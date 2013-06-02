<%@ Page Language="VB" AutoEventWireup="false" CodeFile="productedit.aspx.vb" Inherits="productedit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView 
            ID="FormView1" 
            runat="server"
            DataSourceID="EditDataSource"             
            DataKeyNames="productid" 
            DefaultMode="Edit" >
                    <EditItemTemplate>
                        <table style="width: 100% ; text-align:center" >
                            <tr>
                                <td style="width: 227px">Product ID</td>
                                <td style="width: 16px">:</td>
                                <td>
                                    <asp:TextBox ID="txtProductID" runat="server" Text='<%# Bind("productid") %>' Width="100px" ReadOnly = "true"></asp:TextBox>
                                </td>                                  
                            </tr>
                            <tr>
                                <td>Product Name</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("productname") %>' Width="200px"></asp:TextBox>
                                </td>      
                            </tr>
                            <tr>
                                <td>Supplier</td>
                                <td>:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="supplierSqlDataSource"
                                        SelectedValue='<%# Bind("supplierid") %>' 
                                        Width="200px" DataTextField="companyname" DataValueField="supplierid" >
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td>:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="categorySqlDataSource"
                                        SelectedValue='<%# Bind("categoryid") %>' 
                                        Width="200px" DataTextField="categoryname" DataValueField="categoryid" >
                                    </asp:DropDownList>
                                </td>
                            </tr>  
                            <tr>
                                <td>Quantity Per Unit</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="txtQtyPerUnit" runat="server" Text='<%# Bind("quantityperunit") %>' Width="200px" ></asp:TextBox>
                                </td>      
                            </tr>
                            <tr>
                                <td>Unit Price</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="txtUnitPrice" runat="server" Text='<%# Bind("unitprice") %>' Width="200px" ></asp:TextBox>
                                </td>      
                            </tr> 
                            <tr>
                                <td></td>
                                <td></td>
                                <td><br />
                                    <asp:Button ID="updateButton" runat="server" CommandName="Update" 
                                        CssClass="button" Text="Simpan" />
                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" CssClass="button" PostBackUrl="~/Default.aspx" 
                                        Text="Batal" />
                                </td>
                            </tr>                                                                                                             
                        </table>
                    </EditItemTemplate>          
                    <InsertItemTemplate>
                        <table style="width: 100% ; text-align:center" >
                            <tr>
                                <td style="width: 227px">Product ID</td>
                                <td style="width: 16px">:</td>
                                <td>
                                    <asp:TextBox ID="txtProductID" runat="server" Text='<%# Bind("productid") %>' Width="100px" ReadOnly = "true"></asp:TextBox>
                                </td>                                  
                            </tr>
                            <tr>
                                <td>Product Name</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("productname") %>' Width="200px"></asp:TextBox>
                                </td>      
                            </tr>
                            <tr>
                                <td>Supplier</td>
                                <td>:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="supplierSqlDataSource"
                                        SelectedValue='<%# Bind("supplierid") %>' 
                                        Width="200px" DataTextField="companyname" DataValueField="supplierid" >
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td>:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="categorySqlDataSource"
                                        SelectedValue='<%# Bind("categoryid") %>' 
                                        Width="200px" DataTextField="categoryname" DataValueField="categoryid" >
                                    </asp:DropDownList>
                                </td>
                            </tr>  
                            <tr>
                                <td>Quantity Per Unit</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="txtQtyPerUnit" runat="server" Text='<%# Bind("quantityperunit") %>' Width="200px" ></asp:TextBox>
                                </td>      
                            </tr>
                            <tr>
                                <td>Unit Price</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="txtUnitPrice" runat="server" Text='<%# Bind("unitprice") %>' Width="200px" ></asp:TextBox>
                                </td>      
                            </tr> 
                            <tr>
                                <td></td>
                                <td></td>
                                <td><br />
                                    <asp:Button ID="updateButton" runat="server" CommandName="Insert" 
                                        Text="Simpan" />
                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" PostBackUrl="~/Default.aspx" 
                                        Text="Batal" />
                                </td>
                            </tr>                                                                                                             
                        </table>
                    </InsertItemTemplate>          
        </asp:FormView>
    <asp:SqlDataSource ID="supplierSqlDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
        ProviderName="<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>"
        SelectCommand="SELECT * from suppliers">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="categorySqlDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
        ProviderName="<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>"
        SelectCommand="SELECT * from categories">
    </asp:SqlDataSource>    
    <asp:SqlDataSource ID="EditDataSource" runat="server"  ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:NorthwindConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM products WHERE productid = @productid" 
        UpdateCommand="UPDATE products SET  
                            productname = @productname, 
                            supplierid = @supplierid, 
                            categoryid=@categoryid,
                            quantityperunit=@quantityperunit,
                            unitprice=@unitprice
                            WHERE productid = @productid" 
        InsertCommand = "Insert into products (productname, supplierid, categoryid, quantityperunit, unitprice) 
                         values (@productname, @supplierid, @categoryid, @quantityperunit, @unitprice)"                                                   
        OldValuesParameterFormatString="{0}">    
    <SelectParameters>
        <asp:QueryStringParameter Name="productid" QueryStringField="productid" Type="String" />
    </SelectParameters>
        <UpdateParameters> 
           <asp:Parameter Name="productname" Type="string" Direction="Input"/>
           <asp:Parameter Name="supplierid" Type="String" Direction="Input"/>
           <asp:Parameter Name="categoryid" Type="String" Direction="Input"/>
           <asp:Parameter Name="quantityperunit" Type="string" Direction="Input"/>
           <asp:Parameter Name="unitprice" Type="String" Direction="Input"/>         
        </UpdateParameters>
        <InsertParameters> 
           <asp:Parameter Name="productname" Type="string" Direction="Input"/>
           <asp:Parameter Name="supplierid" Type="String" Direction="Input"/>
           <asp:Parameter Name="categoryid" Type="String" Direction="Input"/>
           <asp:Parameter Name="quantityperunit" Type="string" Direction="Input"/>
           <asp:Parameter Name="unitprice" Type="String" Direction="Input"/>         
        </InsertParameters>        
    </asp:SqlDataSource>    
    </div>
    </form>
</body>
</html>
