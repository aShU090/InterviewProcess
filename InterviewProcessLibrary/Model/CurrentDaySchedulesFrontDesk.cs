using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterviewProcessLibrary.Model
{
    class CurrentDaySchedules
    {
        public List<Temp> Schedules { get; set; }
    }
    public class Temp
    {
        public DateTime InterviewTime { get; set; }
        public Candidate candidate { get; set; }
    }
}
