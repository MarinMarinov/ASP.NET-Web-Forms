<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TicTacToeGame.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <h1>
                <asp:Label ID="Result" runat="server" Text="Your turn"></asp:Label>
            </h1>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="Btn0" Visible="true" runat="server" CommandArgument="0" OnCommand="Click_Command" /></td>
                    <td>
                        <asp:Button ID="Btn1" Visible="true" runat="server" CommandArgument="1" OnCommand="Click_Command" /></td>
                    <td>
                        <asp:Button ID="Btn2" Visible="true" runat="server" CommandArgument="2" OnCommand="Click_Command" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Btn3" Visible="true" runat="server" CommandArgument="3" OnCommand="Click_Command" /></td>
                    <td>
                        <asp:Button ID="Btn4" Visible="true" runat="server" CommandArgument="4" OnCommand="Click_Command" /></td>
                    <td>
                        <asp:Button ID="Btn5" Visible="true" runat="server" CommandArgument="5" OnCommand="Click_Command" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Btn6" Visible="true" runat="server" CommandArgument="6" OnCommand="Click_Command" /></td>
                    <td>
                        <asp:Button ID="Btn7" Visible="true" runat="server" CommandArgument="7" OnCommand="Click_Command" /></td>
                    <td>
                        <asp:Button ID="Btn8" Visible="true" runat="server" CommandArgument="8" OnCommand="Click_Command" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
