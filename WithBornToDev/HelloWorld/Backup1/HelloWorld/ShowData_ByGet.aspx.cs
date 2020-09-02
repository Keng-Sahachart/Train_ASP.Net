using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class ShowData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string F = Request.QueryString["txt_Name"];
            string L = Request.QueryString["txt_Last"];

            Label1.Text = F;
            Label2.Text = L;


        }
    }
}