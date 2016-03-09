<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginTable.aspx.cs" Inherits="LoginTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Registration</h1>
        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="NameTextBox1" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="NameRequiredFieldValidator1" runat="server" ErrorMessage="Name requierd."
                        ControlToValidate="NameTextBox1"></asp:RequiredFieldValidator></td>
             </tr>

            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AddressTextBox" ErrorMessage="Address Required."></asp:RequiredFieldValidator>
                </td>
             </tr>

             <tr>
                <td class="auto-style2">City</td>
                <td class="auto-style2">
                    <asp:TextBox ID="CityTextBox1" runat="server"></asp:TextBox></td><td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CityTextBox1" ErrorMessage="City Required"></asp:RequiredFieldValidator>
                 </td>
             </tr>

             <tr>
                <td>State</td>
                <td>
                    <asp:TextBox ID="StateTextBox2" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="State required." ControlToValidate="StateTextBox2"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                <td>ZipCode</td>
                <td>
                    <asp:TextBox ID="ZipCodeTextBox3" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ZipCodeTextBox3" ErrorMessage="ZipCode required."></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="PhoneTextBox4" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PhoneTextBox4" ErrorMessage="Phone required."></asp:RequiredFieldValidator>
                 </td>
             </tr>

            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
             </tr>

             <tr>
                <td>WebPage</td>
                <td>
                    <asp:TextBox ID="WebPageTextBox5" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Webpage required." ControlToValidate="WebPageTextBox5"></asp:RequiredFieldValidator>
                 </td>
             </tr>


            <tr>
                <td>AgeRestriction</td>
                <td>
                    <asp:TextBox ID="AgeRestrictionTextBox6" runat="server"></asp:TextBox></td>
                    <td><asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="AgeRestrictionTextBox6" ErrorMessage="You must be over 18 yrs old to register."></asp:CustomValidator>
                </td>
             </tr>

             <tr>
                <td class="auto-style1">User name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox></td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Enter a username"></asp:RequiredFieldValidator>
                 </td>
             </tr>

               <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Enter a password"></asp:RequiredFieldValidator>
                   </td>
             </tr>

              <tr>
                <td>ConfirmPassword</td>
                <td>
                    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server"></asp:TextBox></td>
                  <td>
                      <asp:CompareValidator ID="CompareValidator1" 
                          runat="server" 
                          ErrorMessage="Passwords don't match"
                          ControlToValidate="ConfirmPasswordTextBox"
                          ControlToCompare="PasswordTextBox">

                      </asp:CompareValidator>
                  </td>
             </tr>
               
            <tr>
                <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                </td>

                <td>
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label></td>
                    <td></td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
