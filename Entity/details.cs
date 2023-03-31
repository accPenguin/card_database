using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Details
    {
        private string id;
        public string Detailsid
        {
            get { return id; }
            set { id = value; }
        }
        private string oid;
        public string Ordersid
        {
            get { return oid; }
            set { oid = value; }
        }
        private string pid;
        public string Goodsid
        {
            get { return pid; }
            set { pid = value; }
        }
        private string price;
        public string Price
        {
            get { return price; }
            set { price = value; }
        }
        private string nums;
        public string Num
        {
            get { return nums; }
            set { nums = value; }
        }

        private string zhuangtai;
        public string ZhuangTai
        {
            get { return zhuangtai; }
            set { zhuangtai = value; }
        }

        private string pingjia;
        public string PingJia
        {
            get { return pingjia; }
            set { pingjia = value; }
        }
    }
}
