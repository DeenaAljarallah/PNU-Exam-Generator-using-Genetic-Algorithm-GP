using System;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; //Crystal Report Namespaces 

namespace PNUExamGenerator
{
    public partial class NewExamPaperPage : System.Web.UI.Page
    {
        ExamPaperReport rpt;
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSqlDBConn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                //gvbind();
                Session.Add("report", rpt);
            }
            else
            {
                Response.Redirect("PNUexamGenerator.aspx");
            }
        }

        protected void gvbind()
        {
            conn.Open();
            cmd.CommandText = "Select * from ExamPaperTable";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            GVExamTbl.DataSource = dt;
            GVExamTbl.DataBind();
            conn.Close();
        }
        
        protected void printButton_Click(object sender, EventArgs e)
        {
            /*
            CrystalReportViewer1.ReportSource = (ExamPaperReport)Session["report"];
            conn.Open();
            cmd.CommandText = "Select * from ExamPaperTable";
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "ExamPaperTable");
            sda.Fill(dt);
            rpt = new ExamPaperReport();
            rpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rpt;
            Session.Add("report", rpt);
            */
        }
        
    }
}