using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RandomNumbersHTMLControls
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button_ServerClick(object sender, EventArgs e)
        {
            var rnd = new Random();
            try
            {
                int fromNumber = int.Parse(this.Val1.Value);
                int toNumber = int.Parse(this.Val2.Value);

                int randomNumber = rnd.Next(fromNumber, toNumber + 1);

                this.Result.InnerText = randomNumber.ToString();
            }
            catch
            {
                this.Result.InnerText = "Invalid input! Input only integer numbers!";
            }
            
        }
    }
}