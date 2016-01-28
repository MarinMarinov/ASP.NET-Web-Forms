using System;

namespace EscapingHTMLTags
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            string text = this.Input.Text;
            string escapedHtml = Server.HtmlEncode(text);
            this.textBox.Text = escapedHtml;
            this.label.Text = escapedHtml;
        }
    }
}