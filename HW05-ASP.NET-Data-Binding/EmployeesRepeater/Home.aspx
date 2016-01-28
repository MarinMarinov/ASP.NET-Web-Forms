<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeesRepeater.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <asp:EntityDataSource ID="NorthwindEmployees" runat="server"
        EnableFlattening="false"
        ConnectionString="name=NorthwindEntities"
        DefaultContainerName="NorthwindEntities"
        EnableDelete="True" EnableInsert="True"
        EnableUpdate="True"
        EntitySetName="Employees">
    </asp:EntityDataSource>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater runat="server" DataSourceID="NorthwindEmployees" ItemType="EmployeesRepeater.Employee">
                <HeaderTemplate>
                    <table border="1" style="background-color: azure">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Title</th>
                                <th>BirthDate</th>
                                <th>HireDate</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>Region</th>
                                <th>PostalCode</th>
                                <th>Country</th>
                                <th>HomePhone</th>
                                <th>Extension</th>
                                <th>PhotoPath</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Item.FirstName + " " +Item.LastName %></td>
                        <td><%# Item.Title %></td>
                        <td><%# Item.BirthDate %></td>
                        <td><%# Item.HireDate %></td>
                        <td><%# Item.Address %></td>
                        <td><%# Item.City %></td>
                        <td><%# Item.Region %></td>
                        <td><%# Item.PostalCode %></td>
                        <td><%# Item.Country %></td>
                        <td><%# Item.HomePhone %></td>
                        <td><%# Item.Extension %></td>
                        <td><%# Item.PhotoPath %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
