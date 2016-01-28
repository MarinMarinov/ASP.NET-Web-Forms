<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CookiesExchanger.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="Username" runat="server" placeholder="Enter username"></asp:TextBox>
            <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
