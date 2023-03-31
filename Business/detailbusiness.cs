using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
    public class detailbusiness
    {
        public int InsertDetails(Details details) // 插入数据方法 
        {
            string sqlText = "insert into tb_orderDetails  values('" + details.Detailsid + "' ,'" + details.Ordersid + "' , '" + details.Goodsid + "' , '" + details.Price + "' , '" + details.Num + "' , '" + details.ZhuangTai +"' , '" + details.PingJia + "' )";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int DeleteDetailsById(string id)  // 通过主键删除数据
        {

            string sqlText = "delete from tb_orderDetails where id = '" + id + "'";

            object obj = DataBaseAccess.ExecuteSql(sqlText);
            return Convert.ToInt32(obj);
        }

        public int UpdateDetails(Details details) //更新数据 
        {
            string sqlText = "update tb_orderDetails set  ordersid = '" + details.Ordersid + "' ,  goodsid = '" + details.Goodsid + "' ,  price = '" + details.Price + "' ,  num = '" + details.Num + "'  where detailsid = '" + details.Detailsid + "'";
            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public DataTable getALLDetails() //查询全部数据 
        {
            string sqlText = "select * from tb_orderDetails";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable getDetailsById(string id) //按主键查询 
        {
            string sqlText = "select * from tb_orderDetails where id =  '" + id + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable fahuo(string zhuangtai) //按主键查询 
        {
            string sqlText = "update tb_orderDetails set zhuangtai =  '" + zhuangtai + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }
        public DataTable pingjia(string zhuangtai) //按主键查询 
        {
            string sqlText = "update tb_orderDetails set pingjia =  '" + zhuangtai + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }
    }
}
