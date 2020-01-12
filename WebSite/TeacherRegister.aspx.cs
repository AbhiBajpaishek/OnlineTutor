using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class TeacherRegister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_reg_teacher", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text.ToString());
        cmd.Parameters.AddWithValue("@lastname", txtlastname.Text.ToString());
        cmd.Parameters.AddWithValue("@Email", txtmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
        cmd.Parameters.AddWithValue("@Gender", ddlgender.Text.ToString());
         cmd.Parameters.AddWithValue("@Subject", txtsubject.Text.ToString());
        cmd.Parameters.AddWithValue("@Contact", txtmobile.Text.ToString());
        cmd.Parameters.AddWithValue("@Teacher_exp", txtexp.Text.ToString());
        cmd.Parameters.AddWithValue("@action", "insert");
        cmd.ExecuteNonQuery();
        con.Close();
    }
     protected void Button2_Click(object sender, EventArgs e)
     {
         txtfirstname.Text = "";
         txtlastname.Text = "";
         txtmail.Text = "";
         txtpassword.Text = "";
         ddlgender.Text = "-1";
         txtsubject.Text = "";
         txtmobile.Text = "";
         txtexp.Text = "";
        
     }
}
