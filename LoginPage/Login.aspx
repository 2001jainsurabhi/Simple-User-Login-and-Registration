<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form id="formLogin" runat="server">
        <h2>Login</h2>
        <div>
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="loginValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ValidationGroup="loginValidation" ErrorMessage="Email is required." CssClass="error"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="loginValidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ValidationGroup="loginValidation" ErrorMessage="Password is required." CssClass="error"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="loginValidation" />
        </div>
        <div class="error">
            <asp:Literal ID="lblErrorMessage" runat="server" Visible="false"></asp:Literal>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Ragistration.aspx">New User Register Here</asp:HyperLink>
        </div>


    </form>
</body>
</html>
