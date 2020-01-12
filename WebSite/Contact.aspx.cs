using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void  Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_tbl_contact", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", txtname.Text.ToString());
        cmd.Parameters.AddWithValue("@Email", txtmail.Text.ToString());
        cmd.Parameters.AddWithValue("@Subject",txtsubject.Text.ToString());
        cmd.Parameters.AddWithValue("@Massage", txtmag.Text.ToString());
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtmail.Text = "";
        txtsubject.Text = "";
        txtmail.Text = "";
        txtmag.Text = "";
       
    }
}