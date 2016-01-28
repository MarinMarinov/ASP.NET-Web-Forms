using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Reflection;
using System.Web.UI.WebControls;

namespace HelloASP.NET
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LabelAssembly.Text = Assembly.GetExecutingAssembly().Location;
            this.LabelCode.Text = "Hello ASP.NET !";
        }
    }
}