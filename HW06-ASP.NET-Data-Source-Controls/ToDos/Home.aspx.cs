using System;
using System.Linq;

namespace ToDos
{
    using Data;

    public partial class Home : System.Web.UI.Page
    {
        private ToDosDbContext db;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.db = new ToDosDbContext();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.DataBind();
        }

        public IQueryable<Category> CategoriesListView_GetData()
        {
            return db.Categories;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void CategoriesListView_UpdateItem(int? id)
        {
            Category category = this.db.Categories.Find(id);
            if (category == null)
            {
                ModelState.AddModelError("", String.Format("Category with id {0} was not found", id));
                return;
            }
            TryUpdateModel(category);
            if (ModelState.IsValid)
            {
                this.db.SaveChanges();
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void CategoriesListView_DeleteItem(int id)
        {
            Category category = this.db.Categories.Find(id);
            if (category == null)
            {
                ModelState.AddModelError("", String.Format("Category with id {0} was not found", id));
                return;
            }

            var categoryTodos = category.Todos.ToList();
            foreach (Todo todo in categoryTodos)
            {
                this.db.Todos.Remove(todo);
            }
            this.db.SaveChanges();
            this.db.Categories.Remove(category);
            this.db.SaveChanges();
        }

        protected void InserCategoriesButton_Click(object sender, EventArgs e)
        {
            Category category = new Category()
            {
                Name =
                    string.IsNullOrEmpty(this.InsertCategoryNameTextBox.Text)
                        ? "NoName"
                        : this.InsertCategoryNameTextBox.Text
            };

            this.db.Categories.Add(category);

            db.SaveChanges();
        }

        public IQueryable<Todo> TodosListView_GetData()
        {
            return this.db.Todos;
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void TodosListView_UpdateItem(int? id)
        {
            Todo todo = this.db.Todos.Find(id);
            if (todo == null)
            {
                ModelState.AddModelError("", String.Format("Todo with id {0} was not found", id));
                return;
            }
            TryUpdateModel(todo);
            if (ModelState.IsValid)
            {
                todo.Changed = DateTime.Now;
                this.db.SaveChanges();
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void TodosListView_DeleteItem(int? id)
        {
            var todo = this.db.Todos.Find(id);
            if (todo == null)
            {
                return;
            }
            this.db.Todos.Remove(todo);
            this.db.SaveChanges();
        }

        protected void InsertTodosButton_Click(object sender, EventArgs e)
        {
            Todo todo = new Todo()
            {
                Title =
                    string.IsNullOrEmpty(this.InsertTodoNameTextBox.Text) ? "Unnamed" : this.InsertTodoNameTextBox.Text,
                Body =
                    string.IsNullOrEmpty(this.InsertTodoBodyTextBox.Text) ? "Unnamed" : this.InsertTodoBodyTextBox.Text,
                CategoryId =
                    this.InsertTodoCategory.SelectedValue == "" ? 1 : int.Parse(this.InsertTodoCategory.SelectedValue),
                Changed = DateTime.Now
            };

            this.db.Todos.Add(todo);

            this.db.SaveChanges();
        }
    }
}