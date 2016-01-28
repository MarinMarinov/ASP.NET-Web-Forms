namespace EmployeesFormview
{
    using System;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.UI.WebControls;

    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Employee> AllEmployees_GetData()
        {
            var employees = new NorthwindEntities().Employees;

            return employees;
        }

        protected void Details_Command(object sender, CommandEventArgs e)
        {
            var employees = new NorthwindEntities().Employees;
            int employeeId = int.Parse(e.CommandArgument.ToString());

            this.FormView.DataSource = employees.Where(emp => emp.EmployeeID == employeeId).ToList();
            this.FormView.DataBind();
        }
    }
}