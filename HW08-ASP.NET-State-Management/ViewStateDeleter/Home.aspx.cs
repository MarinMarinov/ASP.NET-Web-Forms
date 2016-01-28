using System;

namespace ViewStateDeleter
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string obj = ViewState.ToString();
           
            this.Label.Text = obj;
        }
    }
}