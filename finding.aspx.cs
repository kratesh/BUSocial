using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class finding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            auth.Visible = true;
            notauth.Visible = false;
        }
        else
        {
            auth.Visible = false;
            notauth.Visible = true;
        }
        DataView view = (DataView)Findr.Select(DataSourceSelectArguments.Empty);
        foreach (DataRow row in view.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["Address"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["Aorh"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["Owner"].ToString();
            TableCell newcell6 = new TableCell();
            newrow.Cells.Add(newcell6);
            newcell6.Text = "  ";
            TableCell newcell7 = new TableCell();
            newrow.Cells.Add(newcell7);
            newcell7.Text = row["fee"].ToString();
            TableCell newcell8 = new TableCell();
            newrow.Cells.Add(newcell8);
            newcell8.Text = "  ";
            TableCell newcell9 = new TableCell();
            newrow.Cells.Add(newcell9);
            newcell9.Text = row["avail"].ToString();
            Findroom.Rows.Add(newrow);
        }
        DataView view2 = (DataView)Findrm.Select(DataSourceSelectArguments.Empty);
        foreach (DataRow row in view2.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["name"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["fm"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["phone"].ToString();
            TableCell newcell6 = new TableCell();
            newrow.Cells.Add(newcell6);
            newcell6.Text = "  ";
            TableCell newcell7 = new TableCell();
            newrow.Cells.Add(newcell7);
            newcell7.Text = row["email"].ToString();
            TableCell newcell8 = new TableCell();
            newrow.Cells.Add(newcell8);
            newcell8.Text = "  ";
            TableCell newcell9 = new TableCell();
            newrow.Cells.Add(newcell9);
            newcell9.Text = row["description"].ToString();
            Findroommate.Rows.Add(newrow);
        }
    }
    protected void Subfindr_Click(object sender, EventArgs e)
    {
        Findr.Insert();
        Response.Redirect("Finding.aspx");
    }
    protected void findr_Click(object sender, EventArgs e)
    {
        TableRow title = new TableRow();
        title = Findroom.Rows[0];
        Findroom.Rows.Clear();
        Findroom.Rows.Add(title);
        DataView dv = (DataView)Findr.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count == 0)
        {
            //status
        }
        foreach (DataRow row in dv.Table.Rows)
        {
            if (Aorh.Text.ToString() == row["aorh"].ToString())
            {
                TableRow newrow = new TableRow();
                TableCell newcell1 = new TableCell();
                newrow.Cells.Add(newcell1);
                newcell1.Text = row["Address"].ToString();
                TableCell newcell2 = new TableCell();
                newrow.Cells.Add(newcell2);
                newcell2.Text = "  ";
                TableCell newcell3 = new TableCell();
                newrow.Cells.Add(newcell3);
                newcell3.Text = row["Aorh"].ToString();
                TableCell newcell4 = new TableCell();
                newrow.Cells.Add(newcell4);
                newcell4.Text = "  ";
                TableCell newcell5 = new TableCell();
                newrow.Cells.Add(newcell5);
                newcell5.Text = row["Owner"].ToString();
                TableCell newcell6 = new TableCell();
                newrow.Cells.Add(newcell6);
                newcell6.Text = "  ";
                TableCell newcell7 = new TableCell();
                newrow.Cells.Add(newcell7);
                newcell7.Text = row["fee"].ToString();
                TableCell newcell8 = new TableCell();
                newrow.Cells.Add(newcell8);
                newcell8.Text = "  ";
                TableCell newcell9 = new TableCell();
                newrow.Cells.Add(newcell9);
                newcell9.Text = row["avail"].ToString();
                Findroom.Rows.Add(newrow);
            }
        }
    }
    protected void subper_Click(object sender, EventArgs e)
    {
        Findrm.Insert();
        Response.Redirect("Finding.aspx");
    }
    protected void findrm_Click(object sender, EventArgs e)
    {
        TableRow title = new TableRow();
        title = Findroommate.Rows[0];
        Findroommate.Rows.Clear();
        Findroommate.Rows.Add(title);
        DataView dv = (DataView)Findrm.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count == 0)
        {
            //status
        } 
        if (Fm.Text != "F" && Fm.Text != "M")
        {
            return;
        }
        foreach (DataRow row in dv.Table.Rows)
        {
            if (Fm.Text.ToString() == row["fm"].ToString())
            {
                TableRow newrow = new TableRow();
                TableCell newcell1 = new TableCell();
                newrow.Cells.Add(newcell1);
                newcell1.Text = row["name"].ToString();
                TableCell newcell2 = new TableCell();
                newrow.Cells.Add(newcell2);
                newcell2.Text = "  ";
                TableCell newcell3 = new TableCell();
                newrow.Cells.Add(newcell3);
                newcell3.Text = row["fm"].ToString();
                TableCell newcell4 = new TableCell();
                newrow.Cells.Add(newcell4);
                newcell4.Text = "  ";
                TableCell newcell5 = new TableCell();
                newrow.Cells.Add(newcell5);
                newcell5.Text = row["phone"].ToString();
                TableCell newcell6 = new TableCell();
                newrow.Cells.Add(newcell6);
                newcell6.Text = "  ";
                TableCell newcell7 = new TableCell();
                newrow.Cells.Add(newcell7);
                newcell7.Text = row["email"].ToString();
                TableCell newcell8 = new TableCell();
                newrow.Cells.Add(newcell8);
                newcell8.Text = "  ";
                TableCell newcell9 = new TableCell();
                newrow.Cells.Add(newcell9);
                newcell9.Text = row["description"].ToString();
                Findroommate.Rows.Add(newrow);
            }
        }
    }
    protected void view_Click(object sender, EventArgs e)
    {
        TableRow title = new TableRow();
        title = Findroom.Rows[0];
        Findroom.Rows.Clear();
        Findroom.Rows.Add(title);
        DataView view = (DataView)Findr.Select(DataSourceSelectArguments.Empty);
        foreach (DataRow row in view.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["Address"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["Aorh"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["Owner"].ToString();
            TableCell newcell6 = new TableCell();
            newrow.Cells.Add(newcell6);
            newcell6.Text = "  ";
            TableCell newcell7 = new TableCell();
            newrow.Cells.Add(newcell7);
            newcell7.Text = row["fee"].ToString();
            TableCell newcell8 = new TableCell();
            newrow.Cells.Add(newcell8);
            newcell8.Text = "  ";
            TableCell newcell9 = new TableCell();
            newrow.Cells.Add(newcell9);
            newcell9.Text = row["avail"].ToString();
            Findroom.Rows.Add(newrow);
        }
    }
    protected void viewfind_Click(object sender, EventArgs e)
    {
        TableRow title = new TableRow();
        title = Findroommate.Rows[0];
        Findroommate.Rows.Clear();
        Findroommate.Rows.Add(title);
        DataView dv = (DataView)Findrm.Select(DataSourceSelectArguments.Empty); 
        foreach (DataRow row in dv.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["name"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["fm"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["phone"].ToString();
            TableCell newcell6 = new TableCell();
            newrow.Cells.Add(newcell6);
            newcell6.Text = "  ";
            TableCell newcell7 = new TableCell();
            newrow.Cells.Add(newcell7);
            newcell7.Text = row["email"].ToString();
            TableCell newcell8 = new TableCell();
            newrow.Cells.Add(newcell8);
            newcell8.Text = "  ";
            TableCell newcell9 = new TableCell();
            newrow.Cells.Add(newcell9);
            newcell9.Text = row["description"].ToString();
            Findroommate.Rows.Add(newrow);
        }
    }
}