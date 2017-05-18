using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TigerLift
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Context.User.Identity;

            if (user.IsAuthenticated)
            {
                lnkLogin.Visible = false;
                lnkRegister.Visible = false;
                btnLogout.Visible = true;

            }
            else
            {
                lnkLogin.Visible = true;
                lnkRegister.Visible = true;
                btnLogout.Visible = false;
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();

            Response.Redirect("Default.aspx");
        }
    }
}
