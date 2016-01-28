<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RandomNumbersHTMLControls.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Random numbers generator with HTML controls</title>
</head>
<body>
    <header>Random numbers generator with HTML controls</header>
    <form id="form1" runat="server">
    <div>
        <h2>Select number range</h2>
        <label for="Val1">From: </label>
        <input id="Val1" runat="server" type="number" placeholder="Range From" />
        <br />
        <label for="Val2">To: </label>
        <input id="Val2" runat="server" type="number" placeholder="Range To" />
        <br />
        <button runat="server" onserverclick="Button_ServerClick">Generate</button>
        <p runat="server" id="Result"></p>
    </div>
    </form>
</body>
</html>
