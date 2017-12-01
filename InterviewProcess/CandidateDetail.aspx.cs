using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Text;

namespace InterviewProcess
{
    public partial class CandidateDetail : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var param = Newtonsoft.Json.JsonConvert.SerializeObject(

                new
                {
                    Name = TextBox1.Text,
                    Contact = TextBox3.Text,
                    Skill = TextBox5.Text,
                    JobRole = DropDownList1.Text,
                    CVPath = FileUpload1.FileName,
                    PhotoPath = FileUpload2.FileName,
                    DOB = Calendar1.SelectedDate,
                    Email = TextBox2.Text,
                    YOE = TextBox6.Text,
                    interviewSchedule = new
                    {

                        Date = Calendar2.SelectedDate,
                        Time = TextBox4.Text,
                        RoomID = DropDownList4.SelectedItem.Value
                        
                    }
                });

            
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://localhost:16563");
                //client.DefaultRequestHeaders.Add("Content-Type", "application/json");
                HttpContent contentPost = new StringContent(param, Encoding.UTF8, "application/json");

                var result = client.PostAsync("api/CreateCandidate", contentPost).Result;
                string resultContent = result.Content.ReadAsStringAsync().Result;
            }


        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}