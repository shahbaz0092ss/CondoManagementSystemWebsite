using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class employeeBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["DemoConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        if (Session["username"] != null)
        {
            

            if (IsPostBack == false)
            {
               
                cmd.CommandText = "SELECT * FROM Users WHERE username = @username";
                cmd.Connection = conn;

                cmd.Parameters.AddWithValue("@username", Session["username"].ToString());

                DataTable de = new DataTable();

                SqlDataAdapter adpp = new SqlDataAdapter(cmd);

                adpp.Fill(de);
              

            }

        }

        cmd.CommandText = "SELECT * FROM booking";
        cmd.Connection = conn;
        DataTable dt = new DataTable();

        SqlDataAdapter adp = new SqlDataAdapter(cmd);

        adp.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }
}