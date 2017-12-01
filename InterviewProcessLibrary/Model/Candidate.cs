using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterviewProcessLibrary.Model
{
    public class Candidate
    {

        //public Candidate()
        //{
        //    this.interviewSchedule = new InterviewSchedule();
        //}
            
    
        public int CandidateId { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Skill { get; set; }
        public string JobRole { get; set; }
        public string CVPath { get; set; }
        public string PhotoPath { get; set; }
        public DateTime? DOB { get; set; }
        public string Email { get; set; }
        public int YOE { get; set; }
        public InterviewSchedule interviewSchedule { get; set; }


    }
}
