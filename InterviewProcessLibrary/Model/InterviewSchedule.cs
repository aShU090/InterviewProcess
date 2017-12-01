using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterviewProcessLibrary.Model
{
  public  class InterviewSchedule
    {
        public int CandidateId { get; set; }
        public int UserId { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time { get; set; }
        public int RoomId { get; set; }
        public bool ArriveStatus { get; set; }
        public int FeeddbackId { get; set; }
       
    }
}
