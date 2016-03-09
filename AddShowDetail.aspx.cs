using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShowDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"] == null)
            Response.Redirect("Default.aspx");
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SubmitShowDetail();
    }
     protected void SubmitShowDetail()
    {
       AddShowServiceReference.LoginServiceClient alsc = 
           new AddShowServiceReference.LoginServiceClient();

       AddShowServiceReference.ShowDetailLite sdLite = 
           new AddShowServiceReference.ShowDetailLite();

       sdLite.ArtistStartTime = ArtistStartTimeTextBox.Text;
       sdLite.Additional = AdditionalTextBox.Text;

       srl.AddShowDetail(sdLite);
    }
}