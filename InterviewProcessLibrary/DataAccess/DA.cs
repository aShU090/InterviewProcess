using Dapper;
using InterviewProcessLibrary.BaseClass;
using InterviewProcessLibrary.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InterviewProcessLibrary.BaseClass;

namespace InterviewProcessLibrary.DataAccess
{
   public class DA
    {
        public int Insert(Candidate candidate)
        {

            // -insert into data base.
            int result;
            string sql = string.Format(Constants.InsertToCandidateQuery, candidate.Name, candidate.Contact, candidate.Skill, candidate.JobRole, candidate.CVPath, candidate.PhotoPath, candidate.DOB, candidate.Email, candidate.YOE);


            using (IDbConnection connection = new SqlConnection(Constants.connectionstring))
            {
                 result = connection.Query<int>(sql,candidate).SingleOrDefault();
            }
            return result;
        }

        public void ReturnFrontDeskView(DateTime date)
        {
            string sql = string.Format(Constants.SelectFrontView);
            using (IDbConnection connection = new SqlConnection(Constants.connectionstring))
            {
                var result = connection.Query<Candidate>(sql).AsList();
            }
}
        public void Scheduleinterview(InterviewSchedule schedule)
        {
     string sql = string.Format(Constants.InsertScheduledInterviewInfo,schedule.CandidateId,schedule.UserId,schedule.ArriveStatus, schedule.Date, schedule.Time,schedule.RoomId);
            using (IDbConnection connection = new SqlConnection(Constants.connectionstring))
            {
                var result = connection.Query<InterviewSchedule>(sql).AsList();
            }
        }
        public void UpdateScheduleinterview(int id)
        {
            string sql = string.Format(Constants.InsertScheduledInterviewInfo);
            using (IDbConnection connection = new SqlConnection(Constants.connectionstring))
            {
                var result = connection.Query<Candidate>(sql).AsList();
            }
        }
        public List<ShowView> ShowView(DateTime date)
        {
            var result = new List<ShowView>();
            string sql = string.Format(Constants.ShowViewInfo,date);
            using (IDbConnection connection = new SqlConnection(Constants.connectionstring))
            {
              result = connection.Query<ShowView>(sql).AsList();
            }
            return result;
        }

    }
}


