using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDos.Data
{
    public class Category
    {
        private ICollection<Todo> todos;

        public Category()
        {
            this.todos = new HashSet<Todo>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public virtual ICollection<Todo> Todos
        {
            get { return this.todos; }
            set { this.todos = value; }
        }
    }
}