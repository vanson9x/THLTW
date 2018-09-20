using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(THLTW.Startup))]
namespace THLTW
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
