using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class books : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            auth.Visible = true;
            Renting.Visible = true;
            Buying.Visible = true;
            Submitpanel.Visible = true;
            notauth.Visible = false;
            notauth1.Visible = false;
            notauth2.Visible = false;
        }
        else
        {
            auth.Visible = false;
            Renting.Visible = false;
            Buying.Visible = false;
            Submitpanel.Visible = false;
            notauth.Visible = true;
            notauth1.Visible = true;
            notauth2.Visible = true;
        }
        DataView view = (DataView)Rentingbook.Select(DataSourceSelectArguments.Empty);
        foreach (DataRow row in view.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["books"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["owner"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["fee"].ToString();
            Renting.Rows.Add(newrow);
        }
        DataView view2 = (DataView)Buyingbook.Select(DataSourceSelectArguments.Empty);
        foreach (DataRow row in view2.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["books"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["owner"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["cost"].ToString();
            Buying.Rows.Add(newrow);
        }
        DataView view3 = (DataView)Donations.Select(DataSourceSelectArguments.Empty);
        if (view3.Table.Rows.Count == 0)
        {
            Yes.Visible = false;
            No.Visible = true;
        }
        else
        {
            Yes.Visible = true;
            No.Visible = false;
            foreach (DataRow row in view3.Table.Rows)
            {
                TableRow newrow = new TableRow();
                TableCell newcell1 = new TableCell();
                newrow.Cells.Add(newcell1);
                newcell1.Text = row["books"].ToString();
                Donate.Rows.Add(newrow);
            }
        }
    }
    protected void Donating_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        { 
            if (Book.Text != "")
            {
                Donations.Insert();
                Response.Redirect("Books.aspx", true);
            }
        }
    }
    protected void AddRent_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if (Book.Text != "" && Owner.Text != "" && Cost.Text != "")
            {
                Rentingbook.Insert();
                Response.Redirect("Books.aspx", true); 
            }
        }
    }
    protected void DeleteRent_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if (Book.Text != "")
            {
                Rentingbook.Delete();
                Response.Redirect("Books.aspx", true);
            }
        }
    }
    protected void AddBuy_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if (Book.Text != "" && Owner.Text != "" && Cost.Text != "")
            {
                Buyingbook.Insert();
                Response.Redirect("Books.aspx", true);
            }
        }
    }
    protected void DeleteBuy_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            if (Book.Text != "")
            {
                Buyingbook.Delete();
                Response.Redirect("Books.aspx", true);
            }
        }
    }
}