using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Users
    {
        private string uid;
        public string Usersid
        {
            get { return uid; }
            set { uid = value; }
        }
        private string uname;
        public string Username
        {
            get { return uname; }
            set { uname = value; }
        }
        private string password;
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
       
        private string tel;
        public string Contact
        {
            get { return tel; }
            set { tel = value; }
        }
      
        private string email;
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string address;
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        
    }
}
