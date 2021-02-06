using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LogIn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N9AAJ82\SKERDI;Initial Catalog=lokaliDb;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from loginform where username=@username and passw=@passw", con);
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("passw", password.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
       // con.Open();
       // int i = cmd.ExecuteNonQuery();
       // con.Close();

        if (dt.Rows.Count > 0)
        {
            Response.Redirect("choosefunc.aspx");
        }
        else
        {
            Label1.Text = "Your username or password is incorrect";
        }

    }
}