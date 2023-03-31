using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
    public class productbusiness
    {
        public int InsertGoods(Product goods)
        {

            //string sqlText = "insert into tb_product  values('" + goods.Goodsid + "' ,'" + goods.Goodsname + "' , '" + goods.Image + "' , '" + goods.Price + "' , '" + goods.Storage + "' , '" + goods.Sellnum + " " + "," + " " + "," + " " + "," + " " + "," + "' )";
            string sqlText = "insert into tb_product values(13, '新卡牌',  '战士', '这是一段卡牌描述', '传说','~/image/战士/艾萨拉的三叉戟.png', 1600, 66, 8, '6666666666')";
            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int DeleteGoodsById(string id)
        {

            string sqlText = "delete from tb_product where pid = '" + id + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public int UpdateGoods(Product goods)
        {
            string sqlText = "update tb_product set  pname = '" + goods.Goodsname + "' ,  photo = '" + goods.Image + "' ,  price = '" + goods.Price + "' ,  storage = '" + goods.Storage + "' ,  sellnum = '" + goods.Sellnum + "'  where goodsid = '" + goods.Goodsid + "'";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }

        public DataTable getALLGoods()
        {
            string sqlText = "select * from tb_product ";//不用连表查询，好看多了，，

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable getHot() //查询热门商品的全部数据
        {
            string sqlText = "select * from tb_product ";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable getBcate(string bcateid) //查询全部数据 
        {
            string sqlText = "select * from tb_product ";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public Product getGoodsById(string id) //按主键查询 
        {
            string sqlText = "select *  from tb_product where pid = '" + id + "'";

            DataTable dt = DataBaseAccess.GetDataSet(sqlText);
            Product goods = new Product();
            if (dt.Rows.Count > 0)
            {
                goods.Goodsid = "" + dt.Rows[0][0];
                goods.Goodsname = "" + dt.Rows[0][1];
                goods.Image = "" + dt.Rows[0][5];
        
                goods.Price = "" + dt.Rows[0][6];
                goods.Storage = "" + dt.Rows[0][9];
                goods.Sellnum = "" + dt.Rows[0][8];
               
            }
            return goods;
        }

        public DataTable getGoodsByName(string val)
        {

            string sqlText = "select * from tb_product where pname like '%" + val + "%'";

            DataTable dt = DataAccess.DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable getkabei()
        {

            string sqlText = "select * from tb_beimian";

            DataTable dt = DataAccess.DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }

        public DataTable gettaopai()
        {

            string sqlText = "select * from tb_staopai";

            DataTable dt = DataAccess.DataBaseAccess.GetDataSet(sqlText);
            return dt;
        }
        public int Insertkabei(kabei goods)
        {

            string sqlText = "insert into tb_beimian  values('" + goods.Image +  "' )";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }
        public int Inserttaopai(taopai goods)
        {

            string sqlText = "insert into tb_staopai  values('" + goods.Image + "' , '" + goods.Goodsid  +  "' )";

            int i = DataBaseAccess.ExecuteSql(sqlText);
            return i;
        }
    }
}
