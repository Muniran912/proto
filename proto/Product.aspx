<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="proto.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bullet Line | Wrestling Merchandise Shop</title>
    </head>
<body>
    <form id="form1" runat="server">
    <h1>Bullet Line | Wrestling Merchandise Shop</h1>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>
            <ItemTemplate>
                <li>
                    <a href="<%#Eval("Id", "ViewProduct.aspx?Id={0}") %>">
                        <%#Eval ("TitleBeltName") %>
                    </a>
                </li>
            </ItemTemplate>
            <FooterTemplate><ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblTitleBelt]"></asp:SqlDataSource>
    </form>
</body>
</html>
    