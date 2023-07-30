<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ragistration.aspx.cs" Inherits="LoginPage.Ragistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registration Page</h2>
        <div>
            <table align ="center">
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="TextBoxUN" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Please enter a password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td>
                        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBoxEmail" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter the valid Email Id" ForeColor="Red" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ForeColor="Red" ControlToValidate="TextBoxPass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxRPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both Password must be same" ForeColor="Red" ControlToValidate="TextBoxRPass" ControlToCompare="TextBoxPass"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <asp:TextBox ID="TextBoxDOB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the dob" ControlToValidate="TextBoxDOB" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" OnCheckedChanged="RadioButton1_CheckedChanged1" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" OnCheckedChanged="RadioButton2_CheckedChanged" />
                        <asp:RadioButton ID="RadioButton3" runat="server" Text="others" GroupName="gender" OnCheckedChanged="RadioButton3_CheckedChanged" />
                    </td>
                    </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="TextBoxAdd" runat="server" OnTextChanged="TextBoxAdd_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the Address" ForeColor="Red" ControlToValidate="TextBoxAdd"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td>courses</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Hindi"/>
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="English"/>
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="others"/>
                    </td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>
                        <asp:DropDownList ID="DropDownListCountry" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                            <asp:ListItem>New Delhi </asp:ListItem>  
                            <asp:ListItem>Greater Noida</asp:ListItem>  
                            <asp:ListItem>NewYork</asp:ListItem>  
                            <asp:ListItem>Paris</asp:ListItem>  
                            <asp:ListItem>London</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:TextBox ID="TextBoxCity" runat="server" OnTextChanged="TextBoxCity_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" Type= "Submit" runat="server"  Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <input id="Reset1" type="reset" value="reset" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
