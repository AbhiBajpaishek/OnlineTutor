using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login_Studentpro : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EmailID"] == null)
        {
            Response.Redirect("/Login.aspx");
            Session.RemoveAll();
        }
        else
        {

            if (!IsPostBack)
            {
                BindSubjectDdl();
                gridviewbind();
            }
        }
    }
    protected void BindSubjectDdl()
    {
        SqlCommand cmd = new SqlCommand("select distinct subject from reg_teacher", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        con.Close();
        ddlselsub.DataSource = ds;
        ddlselsub.DataTextField = "subject";
        ddlselsub.DataBind();
        ddlselsub.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlselexpteacher.Items.Insert(0, new ListItem("--Select Experience--", "0"));
        gridviewbind();
    }
    protected void ddlselsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select distinct teacher_exp from reg_teacher where subject='" + ddlselsub.Text.ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        con.Close();
        ddlselexpteacher.DataSource = ds;
        ddlselexpteacher.DataTextField = "teacher_exp";
        ddlselexpteacher.DataBind();
        ddlselexpteacher.Items.Insert(0, new ListItem("--Select Experience--", "0"));
        gridviewbind();
    }
    protected void ddlselexpteacher_SelectedIndexChanged(object sender, EventArgs e)
    {
        gridviewbind();
    }
    public void gridviewbind()
    {
        SqlCommand cmd = new SqlCommand("select * from reg_teacher  where subject='" + ddlselsub.Text.ToString() + "' and teacher_exp='" + ddlselexpteacher.Text.ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        sda.Fill(dt);
        con.Close();
        grdstudentpro.DataSource = dt.Tables[0];
        grdstudentpro.DataBind();

    }
    protected void grdstudentpro_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string stu_email = Session["EmailID"].ToString();
        Label teacheremail = grdstudentpro.Rows[e.RowIndex].FindControl("lbltemail") as Label;
        SqlCommand cmd = new SqlCommand("pro_status", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@stu_email", stu_email);
        cmd.Parameters.AddWithValue("@t_email", teacheremail.Text.ToString());
        cmd.Parameters.AddWithValue("@status", "0");
        cmd.Parameters.AddWithValue("@isRequestsent", "1");
        cmd.Parameters.AddWithValue("@isRequestAccepted", "0");
        cmd.Parameters.AddWithValue("@query", "insert");
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Send successfully..')</script>");
        con.Close();
    }
}