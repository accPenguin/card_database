using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class taopai
    {
        private string photo;
        public string Image
        {
            get { return photo; }
            set { photo = value; }
        }

        private string tid;
        public string Goodsid
        {
            get { return tid; }
            set { tid = value; }
        }
    }
}
