using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InterviewProcessLibrary.Model
{
 public  class ShowView
    {
        public int Id { get; set; }
        public string PhotoPath { get; set; }
        public string Name { get; set; }
        public DateTime Date { get; set; }
        public object Time { get; set; }
        public int RoomId { get; set; }
    }
}
