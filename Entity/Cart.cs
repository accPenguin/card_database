using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entity
{
    public class Cart
    {
        private string cid;
        public string Cid
        {
        get { return cid; }
        set { cid = value; }
        }
        
        private string name;
        public string Name
        {
        get { return name; }
        set { name = value; }
        }
        private string pid;
        public string Pid
        {
        get { return pid; }
        set { pid = value; }
        }
        private string pname;
        public string Pname
        {
            get { return pname; }
            set { pname = value; }
        }
        private string price;
        public string Price
        {
        get { return price; }
        set { price = value; }
        }
        private string nums;
        public string Nums
        {
        get { return nums; }
        set { nums = value; }
        }
        private string photo;
        public string Photo        {
            get { return photo; }
            set { photo = value; }
        }
    }
}

