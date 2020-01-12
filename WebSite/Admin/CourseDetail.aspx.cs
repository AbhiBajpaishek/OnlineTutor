using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_CourseDetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showcourse();
        }
    }
    public DataTable showcourse()
    {
        string qry = "select * from tbl_course";
        SqlDataAdapter adp = new SqlDataAdapter(qry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        grdcourse.DataSource = dt;
        grdcourse.DataBind();
        return dt;
    }
    protected void grdcourse_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdcourse.EditIndex = e.NewEditIndex;
        showcourse();
    }
    protected void grdcourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label ID = grdcourse.Rows[e.RowIndex].FindControl("id") as Label;
        try
        {
            SqlCommand cmd = new SqlCommand("sp_tbl_course", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", ID.Text.ToString());
            cmd.Parameters.AddWithValue("@status", "delete");
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Deleted Successfully');</script>");
            con.Close();
            grdcourse.EditIndex = -1;
            showcourse();
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
    protected void grdcourse_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label ID = grdcourse.Rows[e.RowIndex].FindControl("lblid") as Label;
        TextBox cname = grdcourse.Rows[e.RowIndex].FindControl("txtcoursename") as TextBox;
        TextBox cfee = grdcourse.Rows[e.RowIndex].FindControl("txtcfee") as TextBox;
        TextBox cduration = grdcourse.Rows[e.RowIndex].FindControl("txtcduration") as TextBox;
        try
        {
            SqlCommand cmd = new SqlCommand("sp_tbl_course", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", ID.Text.ToString());
            cmd.Parameters.AddWithValue("@Coursename", cname.Text.ToString());
            cmd.Parameters.AddWithValue("@Coursefee", cfee.Text.ToString());
            cmd.Parameters.AddWithValue("@duration", cduration.Text.ToString());
            cmd.Parameters.AddWithValue("@action", "update");
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Updated Successfully');</script>");
            con.Close();
            grdcourse.EditIndex = -1;
            showcourse();
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
    protected void grdcourse_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdcourse.EditIndex = -1;
        showcourse();
    }
}
