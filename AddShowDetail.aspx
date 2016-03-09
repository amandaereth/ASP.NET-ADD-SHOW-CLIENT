<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShowDetail.aspx.cs" Inherits="AddShowDetail" %>

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
            <td>Artist Start Time</td>
            <td>
                <asp:TextBox ID="ArtistStartTimeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Additional Detail</td>
            <td>
                <asp:TextBox ID="AdditionalTextBox" runat="server"></asp:TextBox>
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
        <a href="AddArtist.aspx">Add Artist</a>
    </form>
</body>
</html> 

