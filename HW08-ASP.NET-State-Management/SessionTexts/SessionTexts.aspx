<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionTexts.aspx.cs" Inherits="SessionTexts.SessionTexts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Input some text several times:
        <br/>
        <asp:TextBox runat="server" ID="TextBox" placeholder="Enter some text..."></asp:TextBox>
        <asp:Button runat="server" ID="TextEntered" OnClick="TextEntered_Click" Text="Enter" />
        <br />
        Text result:
        <asp:Label runat="server" ID="TextResult"></asp:Label>
        <h2>All session texts:</h2>
        <asp:ListBox runat="server" ID="AllText"></asp:ListBox>
    </div>
    </form>
</body>
</html>
