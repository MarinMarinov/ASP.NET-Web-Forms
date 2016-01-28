<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HW07_ASP.NET_File_Upload.Home" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <telerik:RadScriptManager ID="RadScriptManager" runat="server">
                <scripts>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
                </scripts>
            </telerik:RadScriptManager>

            <telerik:RadAsyncUpload ID="RadAsyncUpload" runat="server" Skin="Default" MultipleFileSelection="Automatic">
            </telerik:RadAsyncUpload>
            <br />
            <asp:Button runat="server" ID="UploadButton" Text="Upload" OnClick="UploadButton_Click" />

        </div>
    </form>
</body>
</html>
