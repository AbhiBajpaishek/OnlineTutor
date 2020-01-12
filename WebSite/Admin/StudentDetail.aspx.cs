using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_StudentDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        if (!IsPostBack)
        {
            bindgridofstudentdetail();
        }

    }
    public DataTable bindgridofstudentdetail()
    {
        string qry = "select * from reg_student";
        SqlDataAdapter adp = new SqlDataAdapter(qry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        grdstudent.DataSource = dt;
        grdstudent.DataBind();
        return dt;
    }
    protected void grdstudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            con.Open();
            Label id = grdstudent.Rows[e.RowIndex].FindControl("lblid") as Label;
            string query = "delete from reg_student where id='" + Convert.ToInt32(id.Text) + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            grdstudent.EditIndex = -1;
            bindgridofstudentdetail(); ;
            Response.Write("<script>alert('Data Deleted successfully');</script>");
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

    protected void grdstudent_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdstudent.EditIndex = e.NewEditIndex;
        bindgridofstudentdetail();
    }
    protected void grdstudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label id = grdstudent.Rows[e.RowIndex].FindControl("lblid") as Label;
        TextBox fname = grdstudent.Rows[e.RowIndex].FindControl("txtFirstname") as TextBox;
        TextBox lastname = grdstudent.Rows[e.RowIndex].FindControl("txtLastname") as TextBox;
        TextBox email = grdstudent.Rows[e.RowIndex].FindControl("txEmail") as TextBox;
        TextBox gender = grdstudent.Rows[e.RowIndex].FindControl("txtGender") as TextBox;
        TextBox course = grdstudent.Rows[e.RowIndex].FindControl("txtCourse") as TextBox;
        TextBox contact = grdstudent.Rows[e.RowIndex].FindControl("txtContact") as TextBox;
        con.Open();
        SqlCommand cmd = new SqlCommand("update reg_student set Firstname='" + fname.Text + "',Lastname='" + lastname.Text + "',Gender='" + gender.Text + "', contact='" + contact.Text + "' where id='" + Convert.ToInt32(id.Text) + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        grdstudent.EditIndex = -1;
        bindgridofstudentdetail();
    }

    protected void grdstudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdstudent.EditIndex = -1;
        bindgridofstudentdetail();
    }
}
  