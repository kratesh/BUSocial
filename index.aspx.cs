using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            Login.Visible = false;
            Logout.Visible = true;
            stats.Text = "Hello " + User.Identity.Name + "!";
        }
        else 
        {
            Login.Visible = true;
            Logout.Visible = false;
            stats.Text = "";
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("index.aspx");
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}