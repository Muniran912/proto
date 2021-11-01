    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="proto.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click2" />
            <br />
            <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
            <br />
        </div>
    </form>
</body>
</html>