<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VenueLogin.aspx.cs" Inherits="VenueLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Login</h1>
       <p>Login or Register</p>
        <table>
            <tr>
                <td>User Name </td>
                <td>
                <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode ="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" style="height: 26px" /></td>
                        <td>
                    
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label></td>
                        </tr>
            </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginTable.aspx">Register</asp:HyperLink>                                                           
    </div>
    </form>
</body>
</html>
