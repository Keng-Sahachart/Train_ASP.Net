using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace shopingCartWorkshop
{
    public partial class Product : System.Web.UI.Page
    {
        SqlSvr sqlSvr;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = "Provider=sqloledb;Data Source=127.0.0.1;Initial Catalog=shoppingCart;User Id=sa;Password=P@ssw0rd;";
            sqlSvr = new SqlSvr(strcon);
            QryPrd();
        }
        
        void QryPrd()
        {
            DataTable dtPdr = new DataTable();
            dtPdr = sqlSvr.qryDt("select * from product");
            gv_prd.DataSource = dtPdr;
        }
    }
}