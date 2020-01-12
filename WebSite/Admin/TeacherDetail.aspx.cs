using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_TeacherDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();

        if(!IsPostBack)
        {
            bindgridoftecherdetail();
        }

    }
    public void  bindgridoftecherdetail()
    {
        String qry = "select * from reg_teacher";
        SqlDataAdapter sda = new SqlDataAdapter(qry, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        grdteacher.DataSource = dt;
        grdteacher.DataBind();
        //return dt;
    }
    protected void grdteacher_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label tid = grdteacher.Rows[e.RowIndex].FindControl("lblid") as Label;
        try
        {
            SqlCommand cmd = new SqlCommand("sp_reg_teacher", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", tid.Text.ToString());
            cmd.Parameters.AddWithValue("@action", "delete");
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Deleted Successfully');</script>");
            con.Close();
            grdteacher.EditIndex = -1;
            bindgridoftecherdetail();
        }
        catch (Exception exc)
        {
            throw exc;
        }

    }
    protected void grdteacher_RowEditing(object sender, GridViewEditEventArgs e)
    {
        bindgridoftecherdetail();
        grdteacher.EditIndex = -1;
    }
    protected void grdteacher_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
         Label tid = grdteacher.Rows[e.RowIndex].FindControl("lblid") as Label;
        Label firstname = grdteacher.Rows[e.RowIndex].FindControl("txtfirstname") as Label;
        Label email = grdteacher.Rows[e.RowIndex].FindControl("txtemail") as Label;
        TextBox lastname = grdteacher.Rows[e.RowIndex].FindControl("txtlastname") as TextBox;
        TextBox subject = grdteacher.Rows[e.RowIndex].FindControl("txtsubject") as TextBox;
        TextBox contact = grdteacher.Rows[e.RowIndex].FindControl("txtcontact") as TextBox;
        TextBox exp = grdteacher.Rows[e.RowIndex].FindControl("txtexp") as TextBox;

        try
        {
            SqlCommand cmd = new SqlCommand("update reg_teacher set firstname='" + firstname.Text + "',lastname='" + lastname.Text + "',subject='" + subject.Text + "', contact='" + contact.Text + "', teacher_exp='" + exp.Text + "' where id='" + tid.Text + "'", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Successfully');</script>");
            con.Close();
            grdteacher.EditIndex = -1;
            bindgridoftecherdetail();
        }
        catch (Exception exc)
        {
            throw exc;
        }
    }
    protected void grdteacher_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdteacher.EditIndex = -1;
        bindgridoftecherdetail();
    }
   
}