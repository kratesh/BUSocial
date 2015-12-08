using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView view = (DataView)EventDB.Select(DataSourceSelectArguments.Empty);
        foreach (DataRow row in view.Table.Rows)
        {
            TableRow newrow = new TableRow();
            TableCell newcell1 = new TableCell();
            newrow.Cells.Add(newcell1);
            newcell1.Text = row["event"].ToString();
            TableCell newcell2 = new TableCell();
            newrow.Cells.Add(newcell2);
            newcell2.Text = "  ";
            TableCell newcell3 = new TableCell();
            newrow.Cells.Add(newcell3);
            newcell3.Text = row["host"].ToString();
            TableCell newcell4 = new TableCell();
            newrow.Cells.Add(newcell4);
            newcell4.Text = "  ";
            TableCell newcell5 = new TableCell();
            newrow.Cells.Add(newcell5);
            newcell5.Text = row["description"].ToString();
            TableCell newcell6 = new TableCell();
            newrow.Cells.Add(newcell6);
            newcell6.Text = "  ";
            TableCell newcell7 = new TableCell();
            newrow.Cells.Add(newcell7);
            newcell7.Text = row["cost"].ToString();
            TableCell newcell8 = new TableCell();
            newrow.Cells.Add(newcell8);
            newcell8.Text = "  ";
            TableCell newcell9 = new TableCell();
            newrow.Cells.Add(newcell9);
            newcell9.Text = row["time"].ToString();
            Eventtable.Rows.Add(newrow);
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        EventDB.Insert();
        Response.Redirect("Event.aspx");
    }
}