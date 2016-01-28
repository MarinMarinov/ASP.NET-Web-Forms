<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RandomNumbersWebControls.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Random numbers generator with Web controls</title>
</head>
<body>
    <header>
        Random numbers generator with HTML controls
    </header>
    <form id="form1" runat="server">
        <div>
            <h2>Select number range</h2>
            <asp:TextBox ID="Val1" runat="server" placeholder="Range from" />
            <br />
            <asp:TextBox ID="Val2" runat="server" placeholder="Range to" />
            <br />
            <asp:Button runat="server" OnClick="Btn_Click" Text="Get random number" />
            <asp:Literal runat="server" ID="Result" />
        </div>
    </form>
</body>
</html>
