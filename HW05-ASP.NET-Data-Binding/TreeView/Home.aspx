<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TreeView.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:XmlDataSource runat="server" ID="XmlSrc" DataFile="~/Vendors.xml" ></asp:XmlDataSource>
            <asp:TreeView runat="server" DataSourceID="XmlSrc">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="expenses" TextField="#InnerText" />
                    <asp:TreeNodeBinding DataMember="vendor" ValueField="name" />
                </DataBindings>
            </asp:TreeView>

        </div>
    </form>
</body>
</html>
