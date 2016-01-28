namespace ToDos.Migrations
{
    using System.Data.Entity.Migrations;
    using Data;

    public sealed class Configuration : DbMigrationsConfiguration<ToDosDbContext>
    {
        public Configuration()
        {
            this.AutomaticMigrationsEnabled = true;
            this.AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(ToDos.Data.ToDosDbContext context)
        {

        }
    }
}
