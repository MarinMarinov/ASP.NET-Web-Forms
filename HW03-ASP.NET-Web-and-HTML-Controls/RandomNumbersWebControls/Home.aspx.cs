using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RandomNumbersWebControls
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            var rnd = new Random();
            try
            {
                int fromNumber = int.Parse(this.Val1.Text);
                int toNumber = int.Parse(this.Val2.Text);

                int randomNumber = rnd.Next(fromNumber, toNumber + 1);

                this.Result.Text = randomNumber.ToString();
            }
            catch
            {
                this.Result.Text = "Invalid input! Input only integer numbers!";
            }
        }
    }
}