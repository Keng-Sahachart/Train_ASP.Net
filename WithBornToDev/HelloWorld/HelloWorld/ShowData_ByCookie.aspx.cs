using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class ShowData_ByCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck_Name = Request.Cookies["ck_Name"];
            HttpCookie ck_LastName = Request.Cookies["ck_LastName"];

            TextBox1.Text = ck_Name.Value;
            TextBox2.Text = ck_LastName.Value;

        }
    }
}