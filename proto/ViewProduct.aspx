<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="proto.ViewProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Title Belt<br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    TitleBeltName:
                    <asp:TextBox ID="TitleBeltNameTextBox" runat="server" Text='<%# Bind("TitleBeltName") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    TitleBeltName:
                    <asp:TextBox ID="TitleBeltNameTextBox" runat="server" Text='<%# Bind("TitleBeltName") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    TitleBeltName:
                    <asp:Label ID="TitleBeltNameLabel" runat="server" Text='<%# Bind("TitleBeltName") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblTitleBelt] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
