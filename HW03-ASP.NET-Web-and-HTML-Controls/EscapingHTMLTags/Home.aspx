<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EscapingHTMLTags.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Escaping HTML Tags App</title>
</head>
<body>
    <h3>Input some valid HTML</h3>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="Input" runat="server" />
            <asp:Button runat="server" OnClick="Btn_Click" Text="Push the button" />
            <hr />
            Text box :
            <asp:TextBox ID="textBox" runat="server" />
            <hr />
            Label :
            <asp:Label ID="label" runat="server" />
        </div>
    </form>
</body>
</html>
