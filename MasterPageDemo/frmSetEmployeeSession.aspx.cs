using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    
    public partial class frmSetEmployeeSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSetSession_Click(object sender, EventArgs e)
        //{
        //    String name = txtName.Text.Trim();
        //    int id = Convert.ToInt32(txtEmpId.Text);
        //    String email = txtEmail.Text.Trim();
        //    int salary = Convert.ToInt32(txtSalary.Text);

        //    Employee emp = new Employee()
        //    { Id = id, Name = name, Email = email, Salary = salary };

        //    Session["Employee"] = emp;
        //    Response.Write("<script>alert('Employee session is set successfully');</script>");
        //}

        protected void btnGetSession_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmGetEmployeeSession.aspx");
        }

        protected void btnSetSession_Click1(object sender, EventArgs e)
        {
            String name = txtName.Text.Trim();
            int id = Convert.ToInt32(txtEmpId.Text);
            String email = txtEmail.Text.Trim();
            int salary = Convert.ToInt32(txtSalary.Text);

            Employee emp = new Employee()
            { Id = id, Name = name, Email = email, Salary = salary };

            Session["Employee"] = emp;
            Response.Write("<script>alert('Employee session is set successfully');</script>");
        }
    }
}