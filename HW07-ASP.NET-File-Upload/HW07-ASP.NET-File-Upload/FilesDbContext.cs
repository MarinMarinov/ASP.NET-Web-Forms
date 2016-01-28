namespace HW07_ASP.NET_File_Upload
{
    using System;
    using System.Data.Entity;
    using System.Linq;
    using Migrations;

    public class FilesDbContext : DbContext
    {

        public FilesDbContext()
            : base("FilesDbContext")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<FilesDbContext, Configuration>());
        }

        public IDbSet<TextFile> TextFiles { get; set; }

    }
}