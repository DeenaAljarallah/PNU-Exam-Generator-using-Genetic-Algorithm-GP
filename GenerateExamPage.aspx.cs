using System;
using System.Data;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace PNUExamGenerator
{
    public partial class GenerateExamPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSqlDBConn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected List<string> gaPa1List = new List<string>();
        protected List<string> gaPa2List = new List<string>();
        protected List<string> child = new List<string>();
        string Qtype, textMessage;
        int randomCount = new int(), CrosOverGene = new int(), questionQuant = new int();
        private Random random = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                if (!IsPostBack)
                {
                    string sql = "DELETE FROM ExamPaperTable";
                    conn.Open();
                    SqlCommand ExamCmd = new SqlCommand(sql, conn);
                    ExamCmd.ExecuteNonQuery();
                    conn.Close();

                    List<string> CloLst = new List<string>() {"CLO", "One", "Two", "Three", "Four", "Five", "Six" };
                    foreach (string CloLs in CloLst)
                    {
                        CLoDDL.Items.Add(CloLs);
                    }
                    DataTable vCourseTable = new DataTable();
                    try
                    {
                        SqlDataAdapter CrsAdapter = new SqlDataAdapter("SELECT Course_Code, Course_Title FROM CourseTable", conn);
                        CrsAdapter.Fill(vCourseTable);
                        CrsNmDDL.DataSource = vCourseTable;
                        CrsNmDDL.DataTextField = "Course_Title";
                        CrsNmDDL.DataValueField = "Course_Code";
                        CrsNmDDL.DataBind();
                    }
                    catch (Exception ex)
                    {
                        lblError.Visible = true;
                        lblError.Text = "Cannot Fill Course Names! " + ex.Message;
                    }
                    CrsNmDDL.Items.Insert(0, new ListItem("<Select Course>", "0"));
                }
            }
            else
            {
                Response.Redirect("PNUexamGenerator.aspx");
            }
        }
        protected void TF_PrepButton_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(TF_quanText.Text.ToString()) > 0)
            {
                questionQuant = Convert.ToInt32(TF_quanText.Text.ToString());
                Qtype = "T&F";
                QuestionsGA();
            }
            else
            {
                textMessage = "Please, Enter Quantities of T/F Questions";
                ClientScript.RegisterStartupScript(this.GetType(), "nwalert", "alert('" + textMessage.ToString() + "');", true);
                return;
            }
        }

        protected void MCQ_Button_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(MCQ_QuanText.Text.ToString()) > 0)
            {
                questionQuant = Convert.ToInt32(MCQ_QuanText.Text.ToString());
                Qtype = "Multiple Choices";
                QuestionsGA();
            }
            else
            {
                textMessage = "Please, Enter Quantities of MCQ Questions";
                ClientScript.RegisterStartupScript(this.GetType(), "nwalert", "alert('" + textMessage.ToString() + "');", true);
                return;
            }
        }

        protected void Mat_Button_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Mat_QuanText.Text.ToString()) > 0)
            {
                questionQuant = Convert.ToInt32(Mat_QuanText.Text.ToString());
                Qtype = "Matching";
                QuestionsGA();
            }
            else
            {
                textMessage = "Please, Enter Quantities of Matching Questions";
                ClientScript.RegisterStartupScript(this.GetType(), "nwalert", "alert('" + textMessage.ToString() + "');", true);
                return;
            }
        }

        protected void Essay_Button_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Essay_QuanText.Text.ToString()) > 0)
            {
                questionQuant = Convert.ToInt32(Essay_QuanText.Text.ToString());
                Qtype = "Essay";
                QuestionsGA();
            }
            else
            {
                textMessage = "Please, Enter Quantities of Essay Questions";
                ClientScript.RegisterStartupScript(this.GetType(), "nwalert", "alert('" + textMessage.ToString() + "');", true);
                return;
            }
        }

        protected void GenerateExamButton_Click(object sender, EventArgs e)
        {
            Session["CrsCode"] = CrsNmDDL.SelectedValue.ToString();
            Session["CrsName"] = CrsNmDDL.SelectedItem.ToString();

            Response.Redirect("ExamPaperPrint.aspx");
        }

        protected void QuestionsGA()
        {
            //try
            //{
            SqlConnection connQGA = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSqlDBConn"].ConnectionString);
            SqlCommand cmdQGA = new SqlCommand();
            SqlDataAdapter sdaQGA = new SqlDataAdapter();
            DataSet dsQGA = new DataSet();
            DataTable gaListDt = new DataTable();
            // 1- Initialization

            connQGA.Open();
            cmdQGA.CommandText = "SELECT * FROM QuestionBankTable where Course_code = '" + CrsNmDDL.SelectedValue.ToString() + "' and CLO = '" + CLoDDL.SelectedItem.ToString() + "' and Question_type = '" + Qtype.ToString() + "' and Chapter between '" + Convert.ToInt32(ChapFromTxt.Text.ToString()) + "' and '" + Convert.ToInt32(ChapToTxt.Text.ToString()) + "'";
            cmdQGA.Connection = connQGA;
            sdaQGA.SelectCommand = cmdQGA;
            sdaQGA.Fill(dsQGA, "QuestionBankTable");
            sdaQGA.Fill(gaListDt);

            if (dsQGA.Tables[0].Rows.Count > 0)
            {
                for (var i = 0; i < gaListDt.Rows.Count / 2; i++)
                {
                    var item1 = new ListItem
                    {
                        Text = gaListDt.Rows[i][0].ToString()
                    };
                    gaPa1List.Add(gaListDt.Rows[i][0].ToString());
                }

                for (var p = gaListDt.Rows.Count / 2; p < gaListDt.Rows.Count; p++)
                {
                    var item2 = new ListItem
                    {
                        Text = gaListDt.Rows[p][0].ToString()
                    };
                    gaPa2List.Add(item2.Text.ToString());
                }
                connQGA.Close();

                // 2- Crossover
                //Crossover(gaPa1List.Count, gaPa2List.Count, gaPa1List, gaPa2List);
                Crossover();

                // 3- Mutation
                randomCount = child.Count;
                Mutation();

                // 4- Select Questions and insert it in Exam Paper Table
                selectedQuestions();
            }
            else
            {
                textMessage = "There is no enough questions with this criteria";
                ClientScript.RegisterStartupScript(this.GetType(), "nwalert", "alert('" + textMessage.ToString() + "');", true);
            }

            //}
            //catch (Exception ex)
            //{
            //lblError.Visible = true;
            //lblError.Text = "Cannot Fill Genetic List! " + ex.Message;
            //}
        }

        //public List<string> Crossover(int P1listcount, int P2listcount, List<string> P1list, List<string> P2list)
        public List<string> Crossover()
        {
            randomCount = gaPa1List.Count;
            getRandomGene();
            for (var i = 0; i < CrosOverGene; i++)
            {
                var Gene = new ListItem
                {
                    Text = gaPa1List[i].ToString()
                };
                child.Add(Gene.Text.ToString());
            }

            for (var i = CrosOverGene; i < gaPa2List.Count; i++)
            {
                var Gene2 = new ListItem
                {
                    Text = gaPa2List[i].ToString()
                };
                child.Add(Gene2.Text.ToString());
            }
            return child;
        }

        public void Mutation()
        {
            int firstGene, secondGene;
            string firstValue;
            firstGene = getRandomGene();
            secondGene = getRandomGene();

            firstValue = child[firstGene].ToString();
            child[firstGene] = child[secondGene].ToString();
            child[secondGene] = firstValue.ToString();
        }

        protected void selectedQuestions()
        {
            SqlConnection connSQ = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSqlDBConn"].ConnectionString);
            SqlCommand cmdSQ = new SqlCommand();
            int serial;
            if (child.Count < questionQuant)
            {
                textMessage = "There is no enough questions in this type -- " + Qtype.ToString();
                ClientScript.RegisterStartupScript(this.GetType(), "nwalert", "alert('" + textMessage.ToString() + "');", true);
                return;
            }
            connSQ.Open();
            for (var i = 0; i < questionQuant; i++)
            {
                string QuesId, CrsCode, QuesTxt, Mark, QesTp, instructId, crsTitle, QuesSerial;
                QuesId = child[i].ToString();
                string SqCmd = "Select * from QuestionBankTable where Question_id = '" + QuesId.ToString() + "'";
                using (SqlCommand cmdSQ2 = new SqlCommand(SqCmd, connSQ))
                {
                    SqlDataAdapter sdaSQ = new SqlDataAdapter();
                    DataSet dsSQ = new DataSet();
                    DataTable dtSQ = new DataTable();

                    sdaSQ.SelectCommand = cmdSQ2;
                    sdaSQ.Fill(dsSQ, "QuestionBankTable");
                    sdaSQ.Fill(dtSQ);

                    CrsCode = dtSQ.Rows[0][1].ToString();
                    QuesTxt = dtSQ.Rows[0][2].ToString();
                    Mark = dtSQ.Rows[0][3].ToString();
                    QesTp = dtSQ.Rows[0][4].ToString();
                    instructId = dtSQ.Rows[0][7].ToString();
                    crsTitle = dtSQ.Rows[0][8].ToString();
                    serial = i + 1;
                    QuesSerial = QesTp + serial.ToString();
                }
                SqlCommand cmdQues = new SqlCommand("insert into ExamPaperTable values('" + QuesId.ToString() + "','" + CrsCode.ToString() + "','" + QuesTxt.ToString() + "','" + Mark.ToString() + "','" + QesTp.ToString() + "','" + instructId.ToString() + "','" + crsTitle.ToString() + "', '" + QuesSerial.ToString() + "')", connSQ);
                cmdQues.ExecuteNonQuery();
            }
            connSQ.Close();
        }

        private int getRandomGene()
        {
            int i = random.Next(0,randomCount);
            CrosOverGene = i;
            return CrosOverGene;
        }
    }
}