using System;
using System.Collections.Generic;

namespace SessionTexts
{
    public partial class SessionTexts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AllText"] != null)
            {
                this.AllText.DataSource = (List<string>) Session["AllText"];
                this.DataBind();
            }
        }

        protected void TextEntered_Click(object sender, EventArgs e)
        {
            string newText = this.TextBox.Text;
            this.TextResult.Text = newText;

            if (Session["AllText"] == null)
            {
                Session["AllText"] = new List<string>();
            }

            var list = (List<string>)Session["AllText"];

            list.Add(newText);

            this.AllText.DataSource = list;
            this.DataBind();
        }
    }
}