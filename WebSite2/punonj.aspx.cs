using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Punonj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void backtomain2_Click(object sender, EventArgs e)
    {
        Response.Redirect("choosefunc.aspx");
    }

    protected void insert_work_Click(object sender, EventArgs e)
    {
        Response.Redirect("insert_workers.aspx");
    }
}