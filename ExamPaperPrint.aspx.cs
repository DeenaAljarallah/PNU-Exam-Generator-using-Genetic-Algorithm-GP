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
using System.Web.UI.WebControls;

namespace PNUExamGenerator
{
    public partial class ExamPaperPrint : System.Web.UI.Page
    {
        ExamPaperReport rpt = new ExamPaperReport();
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSqlDBConn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                CrystalReportViewer1.ReportSource = (ExamPaperReport)rpt;
                conn.Open();
                cmd.CommandText = "Select * from ExamPaperTable";
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "ExamPaperTable");
                sda.Fill(dt);
                rpt = new ExamPaperReport();
                rpt.SetDataSource(ds);
                CrystalReportViewer1.ReportSource = rpt;
                conn.Close();
            }
            else
            {
                Response.Redirect("PNUexamGenerator.aspx");
            }
            
        }
    }
}