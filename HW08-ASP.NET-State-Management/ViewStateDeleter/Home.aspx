<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ViewStateDeleter.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="The result will be - The state information is invalid for this page and might be corrupted."></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="TextBox"></asp:TextBox>
            <asp:Button runat="server" Text="Click to Generate ViewState" OnClick="Unnamed_Click"/>
            <asp:Label runat="server" ID="Label" ></asp:Label>
        </div>
        <button id="deleter">Click to delete view state</button>
        <script>
            document.getElementById("deleter").addEventListener("click", function () {
                document.getElementById("__VIEWSTATE").value = "";
            })
        </script>
    </form>
</body>
</html>
