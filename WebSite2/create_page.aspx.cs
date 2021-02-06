using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class create_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N9AAJ82\SKERDI;Initial Catalog=lokaliDb;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into loginform values(@username, @passw)", con);
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@passw", password.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Response.Redirect("create_user.aspx");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("create_user.aspx");
    }
}