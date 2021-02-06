using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insert_workers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void backtopunonjes_Click(object sender, EventArgs e)
    {
        Response.Redirect("punonj.aspx");
    }

    protected void insert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N9AAJ82\SKERDI;Initial Catalog=lokaliDb;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into punonjes values(@emer, @mbiemer, @datelindja, @pozicioni)", con);
        cmd.Parameters.AddWithValue("@emer", emer.Text);
        cmd.Parameters.AddWithValue("@mbiemer", mbiemer.Text);
        cmd.Parameters.AddWithValue("@datelindja", datelindja.Text);
        cmd.Parameters.AddWithValue("@pozicioni", pozicioni.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Response.Redirect("punonj.aspx");

    }
}