<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddArtist2.aspx.cs" Inherits="AddArtist2" %>

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
            <td>Name</td>    
                <td class="auto-style1">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name Required" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Email Address Required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Not a valid email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Web Page</td>
            <td class="auto-style1">
                <asp:TextBox ID="WebPageTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="WebPageRequiredFieldValidator" runat="server" ErrorMessage="Web Page Required" ControlToValidate="WebPageTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        </table>
    </div>
    <a href="AddShowDetail.aspx">Add Show Detail</a>   
    </form>
</body>
</html>















    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

