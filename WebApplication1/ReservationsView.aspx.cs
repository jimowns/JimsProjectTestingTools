﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using WebApplication1.Klasses;
using WebApplication1.Klasses.Algemeen;
using WebApplication1.Klasses.Connection;
using WebApplication1.Klasses.Reservations;
using WebApplication1.Klasses.Reservations.linq;
using WebApplication1.Klasses.Reservations.Table;
using WebApplication1.Klasses.Slots;
using WebApplication1.Klasses.Slots.linq;

namespace WebApplication1
{
    public partial class ReservationsView : System.Web.UI.Page
    {
        private const string NEXT_PAGE = "LoginView.aspx";
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


            List<Slots> list = new TableReservation().GetTableReservationsByLecturerID();
            TableReservation tableReservation = new TableReservation(list);
            int rowCnt = list.Count;

            for (int i = 0; i < tableReservation.List.Count; i++)
            {
                tableReservation.Index = i;
                this.tableDatum.Rows.Add(tableReservation.GetTableDate());
                this.tableBegin.Rows.Add(tableReservation.GetTableDateBegin());
                this.tableEind.Rows.Add(tableReservation.GetTableDateEnd());
                this.tableDigitaal.Rows.Add(tableReservation.GetTableDigital());
                this.tableDuur.Rows.Add(tableReservation.GetTableDuration());
                this.tableLocatie.Rows.Add(tableReservation.GetTableLocation());
            }


            ButtonGenerator b = new ButtonGenerator(rowCnt);
            for (int i = 0; i < rowCnt; i++)
            {
                Panel1.Controls.Add(b.WriteReservationButton(i, list.ElementAt(i).ID.ToString())); //slot id
                b.ClickReservationsDelete(i);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }


        protected void GridView1_Load(object sender, EventArgs e)
        {
        }
    }
}