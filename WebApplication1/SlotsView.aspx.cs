using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using WebApplication1.Klasses;
using WebApplication1.Klasses.Algemeen;
using WebApplication1.Klasses.Connection;
using WebApplication1.Klasses.Slots.linq;

namespace WebApplication1
{
    public partial class SlotsView : System.Web.UI.Page
    {
        private ButtonGenerator buttons;
        private Entity entity;
        private const string NEXT_PAGE = "LoginView.aspx";
        private const string LOGOUT_PAGE = "Logout.aspx";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (HttpContext.Current.Session[SessionEnum.SessionNames.LecturorsID.ToString()].Equals(string.Empty))
                    HttpContext.Current.Response.Redirect(NEXT_PAGE);
            }
            catch
            {
                HttpContext.Current.Response.Redirect(NEXT_PAGE);
            }

            this.entity = new Entity();
            int aantal_buttons = this.entity.DB_Slots.Count;
            this.buttons = new ButtonGenerator(aantal_buttons);

            for (int i = 0; i < aantal_buttons; i++)
            {
                Panel1.Controls.Add(buttons.WriteButton(i, entity.DB_Slots.ElementAt(i).ID.ToString()));
                this.buttons.ClickSlots(i);
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect(LOGOUT_PAGE);
        }
    }
}