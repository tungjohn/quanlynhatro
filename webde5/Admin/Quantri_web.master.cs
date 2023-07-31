using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_Quantri_web : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblAdmin.Text = "Xin chào Admin: " + Session["Username"].ToString();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
