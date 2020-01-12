using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_CourseUpdate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void register_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("sp_tbl_Course", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@coursename", txtcname.Text.ToString());
            cmd.Parameters.AddWithValue("@coursefee", txtcoursefee.Text.ToString());
            cmd.Parameters.AddWithValue("@duration", txtcourseduration.Text.ToString());
            cmd.Parameters.AddWithValue("@action", "insert");
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Course Added Successfully');</script>");
            txtcname.Text = "";
            txtcourseduration.Text = "";
            txtcoursefee.Text = "";
        }
        catch (Exception exc)
        {
            throw exc;
        }
        finally
        {
            con.Close();
        }
    }
    protected void clrbtn_Click(object sender, EventArgs e)
    {
        txtcname.Text = "";
        txtcourseduration.Text = "";
        txtcoursefee.Text = "";
    }
}