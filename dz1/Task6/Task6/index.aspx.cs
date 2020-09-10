using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task6
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

        protected void addProduct(object sender, EventArgs e)
        {
            int[] indexes = Basket.GetSelectedIndices();
            for (int index = 0; index < indexes.Length; index++)
            {
                string str = Basket.Items[indexes[index] - index].ToString();
                ListItem item = new ListItem(str);
                Basket.Items.Remove(item);
                ProductsList.Items.Add(item);
            }
        }
        protected void deleteProduct(object sender, EventArgs e)
        {
            int[] indexes = ProductsList.GetSelectedIndices();
            for (int index = 0; index < indexes.Length; index++)
            {
                string str = ProductsList.Items[indexes[index]-index].ToString();
                ListItem item = new ListItem(str);
                ProductsList.Items.Remove(item);
                Basket.Items.Add(item);
            }
        }
        protected void allToCart(object sender, EventArgs e)
        {
            for (int index = 0; index < ProductsList.Items.Count; index++)
            {
                string str = ProductsList.Items[index].ToString();
                ListItem item = new ListItem(str);
                Basket.Items.Add(item);
            }
            ProductsList.Items.Clear();
        }
        protected void allFromCart(object sender, EventArgs e)
        {
            for (int index = 0; index < Basket.Items.Count; index++)
            {
                string str = Basket.Items[index].ToString();
                ListItem item = new ListItem(str);
                ProductsList.Items.Add(item);
            }
            Basket.Items.Clear();
        }
    }
}