using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class login_Teacherpro : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["EmailID"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("/Login.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                grdStudentBind();
            }
        }
    }
    public DataTable grdStudentBind()
    {
        string unm = Session["EmailID"].ToString();
        string reqsent = "1";
        SqlCommand cmd = new SqlCommand("select reg_student.Firstname,reg_student.Gender,reg_student.Email,reg_student.contact,status.t_email,status.stu_email from reg_student inner join status on reg_student.Email=status.stu_email where t_email='" + unm + "' and isRequestSent='" + reqsent + "'", con);
        cmd.CommandType = CommandType.Text;
      
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Close();
        grdteacher.DataSource = dt;
        grdteacher.DataBind();
        return dt;
    }
    protected void grdteacher_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Label stuemail = grdteacher.Rows[e.RowIndex].FindControl("lblstuemail") as Label;
        string confirm = "0";
        string cancel = "0";
        SqlCommand cmd = new SqlCommand("update status set isRequestSent='" + confirm + "',isRequestAccepted='" + cancel + "' where stu_email='" + stuemail.Text + "' and t_email='" + Session["EmailID"].ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Cancel');</script>");
        con.Close();
        grdStudentBind();
    }
    protected void grdteacher_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label stuemail = grdteacher.Rows[e.RowIndex].FindControl("lblstuemail") as Label;
        string confirm = "1";
        SqlCommand cmd = new SqlCommand("update status set isRequestAccepted='" + confirm + "' where stu_email='" + stuemail.Text + "' and t_email='" + Session["EmailID"].ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Confirmed');</script>");
        con.Close();
        grdStudentBind();
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://bulksmsgateway.co.in/SMS_API/sendsms.php?username=demo&password=123456&_SmsTo={" + txtcontact.Text.ToString().Trim() + "}&sendername=NETWLD&_Msg={" + txtmsg.Text.ToString().Trim() + "}");

            HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
            System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
            string responseString = respStreamReader.ReadToEnd();
            respStreamReader.Close();
            myResp.Close();
            lblsucmsg.Text = "Message sent";

        }
        txtcontact.Text = "";
        txtmsg.Text = "";
    }
}