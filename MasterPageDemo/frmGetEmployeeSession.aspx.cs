using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class frmGetEmployeeSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Employee"] != null)
            {
                Employee emp = (Employee)Session["Employee"];
                lblOutput.Text = "Id: " + emp.Id.ToString();
                lblOutput.Text = "<br>Name: " + emp.Name;
                lblOutput.Text = "<br>Email: " + emp.Email;
                lblOutput.Text = "<br>Salary: " + emp.Salary;
            }
            else 
            {
                Response.Redirect("frmSetEmployeeSession.aspx");
            }
        }
    }
}