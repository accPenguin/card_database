using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Orders
    {

        private string oid;
        public string Ordersid
        {
            get { return oid; }
            set { oid = value; }
        }
        private string name;
        public string Username
        {
            get { return name; }
            set { name = value; }
        }
     
        private string allprize;
        public string Total
        {
            get { return allprize; }
            set { allprize = value; }
        }
        private string ordertime;
        public string Ordertime
        {
            get { return ordertime; }
            set { ordertime = value; }
        }
 
        private string address;
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string tel;
        public string Contact
        {
            get { return tel; }
            set { tel = value; }
        }
    
    }
}
