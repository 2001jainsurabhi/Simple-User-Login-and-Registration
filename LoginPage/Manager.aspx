<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="LoginPage.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceRegistration" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" ProviderName="<%$ ConnectionStrings:RegistrationConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Table]" OnSelecting="SqlDataSourceRegistration_Selecting"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceRegistration" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob"></asp:BoundField>
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course"></asp:BoundField>
                                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country"></asp:BoundField>
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
