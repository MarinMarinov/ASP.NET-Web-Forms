using System.Web.Mvc;

namespace SummAppMVC.Controllers
{
    using System;

    public class SumController : Controller
    {
        // GET: Sum
        public ActionResult Index(double? number1, double? number2)
        {
            if (number1.HasValue && number2.HasValue)
            {
                this.ViewBag.number1 = number1.Value.ToString();
                this.ViewBag.number2 = number2.Value.ToString();
                this.ViewBag.result = number1.Value + number2.Value;

                return this.View();
            }

            return this.View();
        }
    }
}