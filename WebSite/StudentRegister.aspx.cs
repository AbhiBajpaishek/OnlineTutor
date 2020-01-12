using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentRegister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_reg_student", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text.ToString());
        cmd.Parameters.AddWithValue("@lastname", txtlastname.Text.ToString());
        cmd.Parameters.AddWithValue("@Email", txtmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
        cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@DOB", txtdob.Text.ToString());
        cmd.Parameters.AddWithValue("@Subject", txtsubject.Text.ToString());
        cmd.Parameters.AddWithValue("@Course", txtcourse.Text.ToString());
        cmd.Parameters.AddWithValue("@College", txtcollege.Text.ToString());
        cmd.Parameters.AddWithValue("@Contact", txtcontact.Text.ToString());
        cmd.Parameters.AddWithValue("@Addres", txtadd.Text.ToString());
        cmd.Parameters.AddWithValue("@Pin_code", txtpin.Text.ToString());
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
        txtdob.Text = "";
        txtsubject.Text = "";
        txtcourse.Text = "";
        txtcollege.Text = "";
        txtcontact.Text = "";
        txtadd.Text = "";
        txtpin.Text = "";
    }
}