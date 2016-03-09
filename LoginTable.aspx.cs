using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginTable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitVenue();
    }

    protected void SubmitVenue()
    {
        AddShowServiceReference.LoginServiceClient lsc
            = new AddShowServiceReference.LoginServiceClient();
       AddShowServiceReference.VenueLite vLite = new AddShowServiceReference.VenueLite();

        vLite.Name = NameTextBox1.Text;
        vLite.Address = AddressTextBox.Text;
        vLite.City = CityTextBox1.Text;
        vLite.State = StateTextBox2.Text;
        vLite.ZipCode = ZipCodeTextBox3.Text;
        vLite.Phone = PhoneTextBox4.Text;
        vLite.Email = EmailTextBox.Text;
        vLite.WebPage = WebPageTextBox5.Text;
        vLite.AgeRestriction = int.Parse(AgeRestrictionTextBox6.Text);
        vLite.UserName = UserNameTextBox.Text;
        vLite.Password = PasswordTextBox.Text;
        

        int result = lsc.VenueRegistration(vLite);

        if (result != -1)
            ResultLabel.Text = "Succesfully Registerd";
        else 
            ResultLabel.Text = "Registration Failed";

        Response.Redirect("AddShow.aspx");

    }
}