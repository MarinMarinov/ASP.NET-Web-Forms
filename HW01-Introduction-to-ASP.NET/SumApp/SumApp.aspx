<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SumApp.aspx.cs" Inherits="SumApp.SumApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Application for summing</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        First number:
        <br />
        <asp:TextBox runat="server" ID="valueFirst"></asp:TextBox>
        <br />
        Second number:
        <br />
        <asp:TextBox runat="server" ID="valueSecond"></asp:TextBox>
        <br />
        <asp:Button runat="server" ID="SumBtn" Text="Sum" OnClick="Btn_Click"/>
        <br />
        Result: <asp:Label runat="server" ID="Result"></asp:Label>
    
    </div>
    </form>
</body>
</html>
