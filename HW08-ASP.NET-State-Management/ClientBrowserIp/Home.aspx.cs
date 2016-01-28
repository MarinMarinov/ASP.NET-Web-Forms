using System;

namespace ClientBrowserIp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string browser = this.Request.Browser.Browser;
            string userHost = this.Request.UserHostAddress;

            this.Label.Text = string.Format("Your browser is: {0}, and your IP is: {1}", browser, userHost);
        }
    }
}