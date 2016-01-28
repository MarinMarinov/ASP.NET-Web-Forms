<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TweetsAggregator.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <asp:ObjectDataSource ID="TweetsDataSource" runat="server" SelectMethod="GetTweets"
        TypeName="TweetsAggregator.TweeterAPIMock.TweetsManager">
        <SelectParameters>
            <asp:ControlParameter ControlID="Username" DefaultValue="John" Name="username" Type="String" PropertyName="Text" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="Username"></asp:TextBox>
            <asp:Button runat="server" Text="Get Tweets" />
            <hr />

            <asp:GridView runat="server" ID="TweetsGridView" DataSourceID="TweetsDataSource" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                    <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
