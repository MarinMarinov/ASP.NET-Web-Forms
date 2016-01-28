using System;
using System.Collections.Generic;
using System.Linq;

namespace Cars
{
    using System.Web.UI.WebControls;

    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<string> GetProducers()
        {
            return Producer.GetProducers().Select(c => c.Name).ToList();
        }

        public IEnumerable<string> GetExtras()
        {
            return Extra.GetExtras().Select(e => e.Name + "; price: " + string.Format("{0:c}", e.Cost)).ToList();
        }

        public IEnumerable<string> GetEngines()
        {
            return Engines.GetEngines();
        }

        protected void Producer_SelectedIndexChanged(object sender, EventArgs e)
        {
            var s = this.CarProducer.SelectedValue;
            this.CarModel.DataSource =
                Producer.GetProducers().FirstOrDefault(p => p.Name == this.CarProducer.SelectedValue).Models;
            this.CarModel.DataBind();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var selectedExtras = new List<string>();

            foreach (ListItem item in this.CarExtras.Items)
            {
                if (item.Selected)
                {
                    selectedExtras.Add(item.Text);
                }
            }

            this.Result.Text = string.Format("Your choose: car {0}, model {1}, engine {2}, extras: {3}",
                this.CarProducer.SelectedValue, this.CarModel.SelectedValue, this.CarEngines.SelectedValue,
                string.Join(", ", selectedExtras));
        }
    }
}