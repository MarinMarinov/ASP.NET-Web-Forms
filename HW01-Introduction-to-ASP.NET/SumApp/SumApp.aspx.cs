using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SumApp
{
    public partial class SumApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Result.Text = "Input some numbers in the fields above!";
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            try
            {
                string result = (double.Parse(this.valueFirst.Text) + double.Parse(this.valueSecond.Text)).ToString();
                this.Result.Text = result;
            }
            catch
            {
                this.Result.Text = "Input can be only numbers";
            }
        }
    }
}