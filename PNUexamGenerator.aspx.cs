using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace PNUExamGenerator.Sources.images
{
    public partial class PNUexamGenerator : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSqlDBConn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblError.Visible = true;
            }
        }
        protected void lgnBtn_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd.CommandText = "Select * from UsersTable where E_mail = '" + txtID.Text + "' and Password='" + txtPwd.Text + "'";
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "UsersTable");
            sda.Fill(dt);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string userTp = dt.Rows[0][6].ToString();
                string user_id = dt.Rows[0][0].ToString();
                Session["user_id"] = user_id.ToString();
                Session["user_tp"] = userTp.ToString();
                if (userTp == "Instructor")
                {
                    Response.Redirect("InstructorHomePage.aspx");
                }
                else
                {
                    Response.Redirect("AdminHomePage.aspx");
                }
            }
            else
            {
                lblError.Text = "Enter the Correct Email or Password!";
            }
        }

    }
}