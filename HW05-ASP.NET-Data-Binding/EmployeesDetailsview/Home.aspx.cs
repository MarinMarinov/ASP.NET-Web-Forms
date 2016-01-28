using System;
using System.Collections.Generic;

namespace EmployeesDetailsview
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Employee> AllEmployees_GetData()
        {
            return (new NorthwindEntities()).Employees;
        }
    }
}