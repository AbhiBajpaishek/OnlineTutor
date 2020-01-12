using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ddlLogin = dropdownlist.Text.ToString();
        con.Open();
        if(ddlLogin=="Admin")
        {
            string strAdmin = "select * from reg_admin where email='"+txtmail.Text.ToString()+"' and password='"+txtpassword.Text.ToString()+"'";
            SqlCommand cmd = new SqlCommand(strAdmin, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.Read())
            {
                Session["EmailID"] = txtmail.Text.ToString();
                Response.Redirect("/Admin/Dashboard.aspx");
                Response.Write("<script>alert('Login Successfully');<script>");
                Session.RemoveAll();
            }
            else
            {
                lblmessage.Text = "userid and password is incorrect! try again";

            }
          }

        if (ddlLogin=="Teacher")
        {
            string strTeacher = "select * from reg_teacher where email='" + txtmail.Text.ToString() + "' and password='" + txtpassword.Text.ToString() + "'";
            SqlCommand cmd = new SqlCommand(strTeacher, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["EmailID"] = txtmail.Text.ToString();
                Response.Redirect("/login/Teacherpro.aspx");
                Response.Write("<script>alert('Login Successfully');<script>");
                Session.RemoveAll();
            }
            else
            {
                lblmessage.Text = "userid and password is incorrect! try again";

            }
        }
        if (ddlLogin == "Student")
        {
            string strStudent = "select * from reg_student where email='" + txtmail.Text.ToString() + "' and password='" + txtpassword.Text.ToString() + "'";
            SqlCommand cmd = new SqlCommand(strStudent, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["EmailID"] = txtmail.Text.ToString();
                Response.Redirect("/login/Studentpro.aspx");
                Response.Write("<script>alert('Login Successfully');<script>");
                Session.RemoveAll();
            }
            else
            {
                lblmessage.Text = "userid and password is incorrect! try again";

            }
        }
        con.Close();
    }

}