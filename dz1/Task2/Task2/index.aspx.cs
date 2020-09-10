using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task2
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            string thm;
            thm = (string)Session["themeSelected"];
            if (thm != null)
            {
                Page.Theme = thm;
                if(blueTheme_rb.Text == thm)
                {
                    blueTheme_rb.Checked = true;
                } 
                else
                {
                    orangeTheme_rb.Checked = true;
                }
            }
            else
            {
                if (blueTheme_rb.Checked)
                {
                    Session["themeSelected"] = blueTheme_rb.Text;
                }
                else
                {
                    Session["themeSelected"] = orangeTheme_rb.Text;
                }
                Page.Theme = "Blue";
            }

        }
        protected void changeTheme(object sender, EventArgs e)
        {
            if (blueTheme_rb.Checked)
            {
                Session["themeSelected"] = blueTheme_rb.Text;
            }
            else
            {
                Session["themeSelected"] = orangeTheme_rb.Text;
            }
            Server.Transfer(Request.FilePath);
        }
    }
}