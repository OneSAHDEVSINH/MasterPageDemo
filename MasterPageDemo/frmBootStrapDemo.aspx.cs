using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class frmBootStrapDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title += " " + DateTime.Now.ToString("dd-MM-yyyy");
            Style myStyle = new Style();
            myStyle.BackColor = System.Drawing.Color.Coral;
            Page.Header.StyleSheet.CreateStyleRule(myStyle, null, "#first");

            Label lblPageHeader = (Label)Master.FindControl("lblPageheader");
            lblPageHeader.Text = "Bootstrap Demo";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String name = txtName.Text.ToUpper();
            lblOutput.Text = name;
            lblOutput.CssClass = "text-white";
        }
    }
}