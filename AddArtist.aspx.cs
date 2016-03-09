using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddArtist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        FillDropDownList();
    }
    protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void FillDropDownList()
    {
        DataTable table = null;
        try
        {
            table = ac.GetArtists();
        }
        catch (Exception ex)
        {
            ErrorLabel.Text = ex.Message;
        }
        ArtistDropDownList.DataSource = table;
        ArtistDropDownList.DataTextField = "ArtistName";
        ArtistDropDownList.DataValueField = "ArtistKey";
        ArtistDropDownList.DataBind();

    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        FillDropDownList(); 
    }
}

