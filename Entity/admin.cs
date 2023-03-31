using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Admin
    {

        private string aid;
        public string Adminid
        {
            get { return aid; }
            set { aid = value; }
        }
        private string aname;
        public string adminname
        {
            get { return aname; }
            set { aname = value; }
        }
        private string password;
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
      
        private string tel;
        public string Tel
        {
            get { return tel; }
            set { tel = value; }
        }
    }
}
