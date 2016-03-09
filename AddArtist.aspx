<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddArtist.aspx.cs" Inherits="AddArtist" %>

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
                <td>Choose an Artist from the List<td>
                </td>
                    <asp:DropDownList ID="ArtistDropDownList" runat="server" AutoPostBack ="true" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
                <asp:Label ID="ErrorLabel1" runat="server" Text=""></asp:Label>
                </tr>
            <tr>
                <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateURL ="~/AddArtist2.aspx">Artist Not Listed</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="AddShowDetail.aspx">Add Show Detail</a>
    </div>
    </form>
</body>
</html>
