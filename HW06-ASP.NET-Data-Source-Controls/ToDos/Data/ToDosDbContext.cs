namespace ToDos.Data
{
    using Migrations;
    using System.Data.Entity;

    public class ToDosDbContext : DbContext
    {

        public ToDosDbContext()
            : base("name=ToDosDbContext")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<ToDosDbContext, Configuration>());
        }

        public IDbSet<Todo> Todos { get; set; }

        public IDbSet<Category> Categories { get; set; }
    }
}