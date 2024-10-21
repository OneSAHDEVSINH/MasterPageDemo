using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class frmSetSessionDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSetSession_Click(object sender, EventArgs e)
        {
            lblInfo.Text = string.Empty;
            if (txtName.Text.Trim() == string.Empty)
            {
                lblInfo.Text = "Name Required";
                lblInfo.CssClass = "text-danger fw-bold";
            } 
            else
            {
                Session["name"] = txtName.Text;
                lblInfo.CssClass = "text-white fw-bold";
                lblInfo.Text = "Session set successfully";
            }
        }

        protected void btnGetSession_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmGetsession.aspx");
        }
    }
}