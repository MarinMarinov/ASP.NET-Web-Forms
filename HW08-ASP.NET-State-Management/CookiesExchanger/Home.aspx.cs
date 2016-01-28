using System;
using System.Web;

namespace CookiesExchanger
{

    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            var cookie = new HttpCookie("Username", this.Username.Text);
            cookie.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(cookie);
            Response.Redirect("OtherPage.aspx", true);
        }
    }
}