using System;

namespace CookiesExchanger
{
    public partial class OtherPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Username"] == null)
            {
                Response.Redirect("Home.aspx", true);
            }
            else
            {
                Response.Write(string.Format("Welcome {0}", Request.Cookies["Username"].Value));
            }

        }
    }
}