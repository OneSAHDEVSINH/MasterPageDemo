using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class frmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWriteCookie_Click(object sender, EventArgs e)
        {
            txtWriteCookie.Focus();
            String name = txtWriteCookie.Text.Trim();
            if (name != string.Empty )
            {
                Response.Cookies["Name"].Value = name;
                txtWriteCookie.Text = String.Empty;
                lblMessage.Text = "Cookie has been written successfully";
                lblMessage.CssClass = "text-success fw-bold";
            }
            else
            {
                lblMessage.Text = "Cookie Required";
                lblMessage.CssClass = "text-danger fw-bold";
            }
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
            {
                String name = Request.Cookies["Name"].Value;
                txtReadCookie.Text = name;
            }
            else
            {
                txtReadCookie.Text = "Cookie does not exists";
            }
        }

        protected void btnWriteMultiValue_Click(object sender, EventArgs e)
        {
            String name = txtName.Text.Trim();
            String age = txtAge.Text.Trim();
            if (name != string.Empty && age != string.Empty)
            {
                //Response.Cookies["Person"].Expires = dateTime.Now.AddDays(1);
                Response.Cookies["Person"]["Name"] = name;
                Response.Cookies["Person"]["Age"] = age;
                Response.Cookies["Person"]["City"] = "Ahmedabad";
                Response.Write("<script>alert('Cookies stored successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Name and Age required');</script>");
            }
        }

        protected void btnReadMultiValue_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Person"] != null) 
            {
                txtName.Text = Request.Cookies["Person"]["Name"];
                txtAge.Text = Request.Cookies["Person"]["Age"];
            }
        }
    }
}