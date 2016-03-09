<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

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
            <td>Show Name</td>
            <td>
                <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Show Date</td>
            <td>
                <asp:Calendar ID="ShowDateCalendar" runat="server" OnSelectionChanged="ShowDateCalendar_SelectionChanged"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>Show Time</td>
            <td>
                <asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Show Ticket Info</td>
            <td>
                <asp:TextBox ID="ShowTicketInfoTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="LoginButton_Click" />
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        </table>
    </div>
    <a href="AddArtist.aspx">Add Artist</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="AddShowDetail.aspx">Add Show Detail</a>
    </form>
</body>
</html>