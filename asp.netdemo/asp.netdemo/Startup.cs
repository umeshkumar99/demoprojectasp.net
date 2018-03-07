using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(asp.netdemo.Startup))]
namespace asp.netdemo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
