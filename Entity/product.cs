using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Product
    {
        //TODO
        private string pid;
        public string Goodsid
        {
            get { return pid; }
            set { pid = value; }
        }
        private string pname;
        public string Goodsname
        {
            get { return pname; }
            set { pname = value; }
        }
        private string photo;
        public string Image
        {
            get { return photo; }
            set { photo = value; }
        }
      
        private string price;
        public string Price
        {
            get { return price; }
            set { price = value; }
        }
        private string nums;
        public string Storage
        {
            get { return nums; }
            set { nums = value; }
        }
        private string salenums;
        public string Sellnum
        {
            get { return salenums; }
            set { salenums = value; }
        }
      
    }
}
