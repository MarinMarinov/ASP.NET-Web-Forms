using System;
using System.Linq;

namespace InputForm
{
    using System.Collections.Generic;
    using System.Web.UI.WebControls;

    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            this.Name.Text = "Student name: " + this.FirstName.Text + " " + this.LastName.Text;
            this.Number.Text = "Faculty number: " + this.FacultyNumber.Text;
            this.SelectedUniversity.Text = "University: " + this.University.Text;
            this.SelectedSpeciality.Text = "Speciality: " + this.Speciality.Text;

            var selectedCourses = new List<string>();

            foreach (ListItem item in this.Courses.Items)
            {
                if (item.Selected)
                {
                    selectedCourses.Add(item.Value);
                }
            }

            this.SelectedCourses.Text = "Selected courses: " + string.Join(", ", selectedCourses);
        }

        public IQueryable<string> GetUniversities()
        {
            return (new[] {"UACEG", "SU", "TU"}).AsQueryable();
        }

        public IQueryable<string> GetSpecialities()
        {
            return (new[] {"Civil Engineering", "Geodesy", "Chemistry", "Mathematics", "Mechanics"}).AsQueryable();
        }

        public IQueryable<string> GetCourses()
        {
            return (new[] { "Steel structures", "Photogrammetry", "Resistance of the materials", "Linear Algebra", "Data structures and Algorithms" }).AsQueryable();
        }
    }
}