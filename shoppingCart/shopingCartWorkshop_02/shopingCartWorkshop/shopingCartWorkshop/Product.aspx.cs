﻿using System;
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
           
            sqlSvr = new SqlSvr(Config.connString);
            sqlSvr.Connect();
            QryPrd();
        }

        void QryPrd()
        {
            DataTable dtPdr = new DataTable();
            dtPdr = sqlSvr.QryDt("select * from product");
            gv_prd.DataSource = dtPdr;
            gv_prd.DataBind();
        }
    }
}