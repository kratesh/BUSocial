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
            Before.Visible = false;
            Logined.Visible = true;
            LoginPanel.Visible = false;
            RegisterPanel.Visible = false;
            stats.Text = "Hello " + User.Identity.Name + "!";
        }
        else 
        { 
            Before.Visible = true;
            Logined.Visible = false;
            LoginPanel.Visible = true;
            RegisterPanel.Visible = false;
        }
    }
    protected void TryRegister_Click(object sender, EventArgs e)
    {
        Before.Visible = true;
        Logined.Visible = false;
        LoginPanel.Visible = false;
        RegisterPanel.Visible = true;
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        if (ID.Text == "")
        {
            stat.Text = "Please enter a user name.";
            return;
        }
        if (RPW.Text == "" || RPW2.Text == "")
        {
            stat.Text = "Please enter a password and re-enter it.";
            return;
        }
        if (RPW.Text != RPW2.Text)
        {

            stat.Text = "Passwords do not match";
            return;
        }
        //Validate password length or characters (optional)
        if (RPW.Text.Length < 6)
        {
            stat.Text = "Enter a password at least six characters.";
            return;
        }
        //Check that the user is not in the database
        DataView dv = (DataView)LoginDB.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count != 0)
        {
            stat.Text = "User name already exists.";
            return;
        }
        LoginDB.Insert();
        stats.Text = "Hello " + ID.Text + "!";
        FormsAuthentication.RedirectFromLoginPage(ID.Text, false);
    }
    protected void Login_Click(object sender, EventArgs e)
    {

        DataView dv = (DataView)LoginDB.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count == 0)
        {
            //status
        }
        DataRow row = dv.Table.Rows[0];
        if ((PW.Text.ToString() == (string)row["PW"]))
        {
            //authenticated
            FormsAuthentication.RedirectFromLoginPage(ID.Text, false);
            Logined.Visible = true;
            stats.Text = "Hello " + ID.Text + "!";
            ID.Text = "";
            return;
        }

        try  //catches blank User name
        {
        }
        catch
        {
            //Not authenticated
        }
        stat.Text = "failed!";
    }
}