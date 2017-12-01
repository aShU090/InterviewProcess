using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterviewProcessLibrary.BaseClass
{
   public static class Constants
    {
        public static string connectionstring= "Server=L005485;Initial Catalog = InterviewProcess; Integrated Security = true;";
        public static string InsertToCandidateQuery = "INSERT INTO CandidateDetail(Name,Contact,Skill,JobRole,CVPath,PhotoPath,DOB,Email,YOE) OUTPUT INSERTED.ID  values(N'{0}', N'{1}', N'{2}', N'{3}', N'{4}', N'{5}', CAST(N'{6}' AS DateTime), N'{7}', {8} )";
        public static string SelectFrontView = "exec dbo.GetSchedulesForCurrentDay";
        public static string InsertScheduledInterviewInfo = "INSERT INTO InterviewSchedule(CandidateId,UserId,ArriveStatus,Date,Time,RoomId) values(N'{0}', N'{1}',N'{2}',N'{3}',N'{4}',N'{5}') ";
        public static string UpdateScheduledInterviewInfo = "UPDATE InterviewSchedule SET {1} OUTPUT {2} INSERTED.Id {3} WHERE " + "CandidateId" + " = '{4}'";
        public static string ShowViewInfo = "SELECT CandidateDetail.Name, CandidateDetail.PhotoPath, RoomId,Date , Time FROM InterviewSchedule INNER JOIN CandidateDetail ON InterviewSchedule.CandidateId=CandidateDetail.Id where Date = N'{0}' Order by Time";
    }
}
