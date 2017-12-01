using InterviewProcessLibrary.DataAccess;
using InterviewProcessLibrary.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterviewProcessLibrary
{
    public class InterviewProcess
    {
        DA d = new DA();
        public int CreateCandidate(Candidate candidate)
        {
           return  d.Insert(candidate);
        }

        public void ReturnFrontDesk(DateTime date)
        {
            d.ReturnFrontDeskView(date);
        }
        public void ScheduleInterview(InterviewSchedule schedule)
        {
            d.Scheduleinterview(schedule);
        }
        public List<ShowView> ShowViewToGajju(DateTime date)
        {
           return d.ShowView(date);
        }

    }
}
