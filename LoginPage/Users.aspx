<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="LoginPage.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label_welcome" runat="server" Text="Welcome___"></asp:Label>
            <asp:Button ID="B_Logout" runat="server" Text="Logout" OnClick="B_Logout_Click" />
        </div>
    </form>
</body>
</html>
