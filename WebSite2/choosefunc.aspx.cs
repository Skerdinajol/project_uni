using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class choosefunc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Shto_punonjes_Click(object sender, EventArgs e)
    {
        Response.Redirect("punonj.aspx");
    }

    protected void Shto_mall_Click(object sender, EventArgs e)
    {
        Response.Redirect("produkt.aspx");
    }



    protected void backtologin_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }

    protected void krijo_user_Click(object sender, EventArgs e)
    {
        Response.Redirect("create_user.aspx"); 
    }
}