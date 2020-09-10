using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task5
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
                if (blueTheme_rb.Text == thm)
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

        protected void addItem(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(addItem_tb.Text))
            {
                ListItem item = new ListItem(addItem_tb.Text);
                if (ListBox1.Items.Contains(item) == false)
                {
                    ListBox1.Items.Add(addItem_tb.Text);    
                }
            }
        }
        protected void deleteItem(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(removeItem_tb.Text))
            {
                ListItem item = new ListItem(removeItem_tb.Text);
                if (ListBox1.Items.Contains(item) == true)
                {
                    ListBox1.Items.Remove(removeItem_tb.Text);
                }
            }
        }
        protected void editItem(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(findItem_tb.Text) && !string.IsNullOrWhiteSpace(replaceItem_tb.Text))
            {
                ListItem item = new ListItem(findItem_tb.Text);
                if (ListBox1.Items.Contains(item) == true)
                {
                    ListBox1.Items.Remove(findItem_tb.Text);
                    ListBox1.Items.Add(replaceItem_tb.Text);
                }
            }
        }
    }
}