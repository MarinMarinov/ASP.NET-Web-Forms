using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HelloASP.NET.Startup))]
namespace HelloASP.NET
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
