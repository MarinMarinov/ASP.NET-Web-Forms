<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs"
    Inherits="EmployeesFormview.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Employees</h1>
            <asp:Repeater runat="server" ID="AllEmployees"
                SelectMethod="AllEmployees_GetData" ItemType="EmployeesFormview.Employee">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Item.FirstName + " " + Item.LastName %>'></asp:Label>
                    <asp:Button runat="server" Text="View Details" OnCommand="Details_Command" CommandArgument="<%# Item.EmployeeID %>" />
                    <br />
                </ItemTemplate>
            </asp:Repeater>

            <h1>Details</h1>
            <asp:FormView runat="server" ID="FormView" ItemType="EmployeesFormview.Employee">
                <ItemTemplate>
                    FirstName : <%# Item.FirstName %><br />
                    LastName : <%# Item.LastName %><br />
                    Title : <%# Item.Title %><br />
                    BirthDate : <%# Item.BirthDate %><br />
                    HireDate : <%# Item.HireDate %><br />
                    Address : <%# Item.Address %><br />
                    City : <%# Item.City %><br />
                    Region : <%# Item.Region %><br />
                    PostalCode : <%# Item.PostalCode %><br />
                    Country : <%# Item.Country %><br />
                    HomePhone : <%# Item.HomePhone %><br />
                    Extension : <%# Item.Extension %><br />
                    Notes : <%# Item.Notes %><br />
                    PhotoPath : <%# Item.PhotoPath %><br />
                </ItemTemplate>

            </asp:FormView>

        </div>
    </form>
</body>
</html>
