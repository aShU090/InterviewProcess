using InterviewProcessLibrary;
using InterviewProcessLibrary.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace InterviewProcessAPI.Controllers
{
    public class ValuesController : ApiController
    {
        // GET api/values
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        [HttpPost]
        [Route ("api/CreateCandidate")]
        public HttpResponseMessage CreateCandidate([FromBody]Candidate value)
        {
            var responseCode = HttpStatusCode.OK; ;
            try
            {
                InterviewProcess cc = new InterviewProcess();
                int id = cc.CreateCandidate(value);
                var interSched = new InterviewSchedule();
                interSched.CandidateId = id;
                interSched.RoomId = value.interviewSchedule.RoomId;
                interSched.UserId = value.interviewSchedule.UserId;
                interSched.Date = value.interviewSchedule.Date;
                interSched.Time = value.interviewSchedule.Time;
                cc.ScheduleInterview(interSched);               
                
            }
            catch (Exception e)
            {
                responseCode = HttpStatusCode.BadRequest;
            }
            return new HttpResponseMessage { StatusCode = responseCode };
        }

        [HttpGet]
        [Route("api/GetFrontDeskData")]
        public HttpResponseMessage GetFrontDeskData(DateTime date)
        {
            var responseCode = HttpStatusCode.OK; ;
            try
            {
                InterviewProcess cc = new InterviewProcess();
                cc.ReturnFrontDesk(date);
            }
            catch (Exception e)
            {
                responseCode = HttpStatusCode.BadRequest;
            }
            return new HttpResponseMessage { StatusCode = responseCode };
        }
        [HttpPost]
        [Route("api/ScheduleTime")]
        public HttpResponseMessage ScheduleTime([FromBody]InterviewSchedule Schedule)
        {
            var responseCode = HttpStatusCode.OK; 
            try
            {
                InterviewProcess cc = new InterviewProcess();
                cc.ScheduleInterview(Schedule);
            }
            catch (Exception e)
            {
                responseCode = HttpStatusCode.BadRequest;
            }
            return new HttpResponseMessage { StatusCode = responseCode };
        }
        //[HttpPut]
        //[Route("api/UpdateScheduleFormTime")]
        //public HttpResponseMessage UpdateScheduleFormTime([FromBody]int candidateid)
        //{
        //    var responseCode = HttpStatusCode.OK;
        //    try
        //    {
        //        InterviewProcess cc = new InterviewProcess();
        //        cc.UpdateScheduleInterview(candidateid);
        //    }
        //    catch (Exception e)
        //    {
        //        responseCode = HttpStatusCode.BadRequest;
        //    }
        //    return new HttpResponseMessage { StatusCode = responseCode };
        //}
        [HttpGet]
        [Route("api/ShowViewToReceptionist")]
        public HttpResponseMessage ShowViewToReceptionist(DateTime date)
        {
            var list = new List<ShowView>();
            var responseCode = HttpStatusCode.OK;
            try
            {
                InterviewProcess cc = new InterviewProcess();
                 list= cc.ShowViewToGajju(date);
            }
            catch (Exception e)
            {
                responseCode = HttpStatusCode.BadRequest;
            }
            return Request.CreateResponse(responseCode, list);

        }
        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
