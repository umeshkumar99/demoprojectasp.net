using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Gitwebprojectmvc.Startup))]
namespace Gitwebprojectmvc
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
