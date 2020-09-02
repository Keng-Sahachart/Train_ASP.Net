using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class ShowData_BySession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_ss_name.Text = Session["Name"].ToString();
            Txt_ss_LastName.Text = Session["LastName"].ToString();
        }
    }
}