using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterviewProcess
{
    public partial class CandidateDetailForReceptionist : System.Web.UI.Page
    {
        private DataTable socialEvents;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void InitializeComponent()
        {
            //this.Calendar1.DayRender += new System.Web.UI.WebControls.DayRenderEventHandler(this.Calendar1_DayRender);
            this.Calendar1.SelectionChanged += new System.EventHandler(this.Calendar1_SelectionChanged);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        //{

        //    //DataRow[] rows = socialEvents.Select(
        //    //      String.Format(
        //    //         "Date >= #{0}# AND Date < #{1}#",
        //    //         e.Day.Date.ToShortDateString(),
        //    //         e.Day.Date.AddDays(1).ToShortDateString()
        //    //      )
        //    //   );

        //    foreach (DataRow row in rows)
        //    {
        //        System.Web.UI.WebControls.Image image;
        //        image = new System.Web.UI.WebControls.Image();
        //        image.ToolTip = row["Description"].ToString();
        //        e.Cell.BackColor = Color.Wheat;
        //    }
        //}

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string resultContent;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://localhost:16563");
                //client.DefaultRequestHeaders.Add("Content-Type", "application/json");
                //HttpContent contentPost = new StringContent(param, Encoding.UTF8, "application/json");

                var result = client.GetAsync($"api/ShowViewToReceptionist?date={Calendar1.SelectedDate}").Result;
                resultContent = result.Content.ReadAsStringAsync().Result;
            }
            DataTable tester = (DataTable)JsonConvert.DeserializeObject(resultContent, (typeof(DataTable)));
             socialEvents =tester;
            System.Data.DataView view = socialEvents.DefaultView;
            view.RowFilter = String.Format(
                              "Date >= #{0}# AND Date < #{1}#",
                              Calendar1.SelectedDate.ToShortDateString(),
                              Calendar1.SelectedDate.AddDays(1).ToShortDateString()
                           );

            if (view.Count > 0)
            {
                GridView1.Visible = true;
                GridView1.DataSource = view;
                GridView1.DataBind();
            }
            else
            {
                GridView1.Visible = false;
            }
        }

    }
    }