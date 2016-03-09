using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"] == null)
            Response.Redirect("Default.aspx");
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SubmitShow();
    }
    protected void SubmitShow()
    {
        AddShowServiceReference.LoginServiceClient lsc =
            new AddShowServiceReference.LoginServiceClient();
        ShowTrackerServiceReference.ShowLite sLite = 
            new ShowTrackerServiceReference.ShowLite();
        
        sLite.Name = ShowNameTextBox.Text;
        sLite.Date = ShowDateCalendar.SelectedDate.ToShortDateString();
        sLite.Time = ShowTimeTextBox.Text;
        sLite.TicketInfo = ShowTicketInfoTextBox.Text;

        lsc.AddShow(sLite);
    }
    protected void ShowDateCalendar_SelectionChanged(object sender, EventArgs e)
    {

    }
}