<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Cars.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cars</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Car builder</h1>
        <hr />
        
        <h3>Producer:</h3>
        <asp:DropDownList runat="server" ID="CarProducer" SelectMethod="GetProducers"
             OnSelectedIndexChanged="Producer_SelectedIndexChanged" AutoPostBack="true">
        </asp:DropDownList>
        <asp:DropDownList runat="server" ID="CarModel" >
        </asp:DropDownList>
        
        <h3>Extras and prices:</h3>
        <asp:CheckBoxList runat="server" ID="CarExtras" SelectMethod="GetExtras" ></asp:CheckBoxList>

        <h3>Engines:</h3>
        <asp:RadioButtonList runat="server" ID="CarEngines" SelectMethod="GetEngines" RepeatDirection="Horizontal"></asp:RadioButtonList>
        
        <asp:Button runat="server" ID="SubmitButton" Text="Result Car" OnClick="SubmitButton_Click" />
        <br />
        <asp:Label runat="server" ID="Result">Result: </asp:Label>

    
    </div>
    </form>
</body>
</html>
