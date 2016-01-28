<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeesDetailsview.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Employees</h1>
        <asp:Repeater runat="server" ID="AllEmployees" ItemType="EmployeesDetailsview.Employee" SelectMethod="AllEmployees_GetData">
            <ItemTemplate>
                <asp:HyperLink runat="server" NavigateUrl='<%# "~/EmployeeDetails.aspx/" + Item.EmployeeID %>'>
                    <%# Item.FirstName + " " + Item.LastName %>
                </asp:HyperLink>
                <br />
            </ItemTemplate>
        </asp:Repeater>    
    </div>
    </form>
</body>
</html>
