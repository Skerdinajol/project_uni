using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class create_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void new_user_Click(object sender, EventArgs e)
    {
        Response.Redirect("create_page.aspx");
    }

    protected void backtomain_Click(object sender, EventArgs e)
    {
        Response.Redirect("choosefunc.aspx");
    }
}