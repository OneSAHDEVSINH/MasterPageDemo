using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class frmGetSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                //int userCount = Convert.ToInt32(Application["SessionCount"]);
                lblSession.Text = Convert.ToString(Session["name"]);
                //lblSession.Text += "<br>"User-Count " + userCount;
            }
            else
            {
                Response.Redirect("frmSetSessionDemo.aspx");
            }
        }
    }
}