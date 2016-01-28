using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SummAppMVC.Startup))]
namespace SummAppMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
