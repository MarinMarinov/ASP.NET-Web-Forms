using System;
using System.Linq;

namespace EmployeesDetailsview
{
    public partial class EmployeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var employeeId = int.Parse(Request.PathInfo.Substring(1));
            var employees = new NorthwindEntities().Employees;
            this.Details.DataSource = employees.Where(em => em.EmployeeID == employeeId).ToList();
            this.Details.DataBind();
        }
    }
}