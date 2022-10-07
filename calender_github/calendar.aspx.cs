using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calendar
{
    public partial class calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Caption = "mycalender";
            Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
            Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;
            Calendar1.TitleFormat = TitleFormat.Month;
            Label1.Text = Calendar1.SelectedDate.Date.ToString();
            Label2.Text = Calendar1.TodaysDate.ToShortDateString();
            Label3.Text = "10-9-2022";
            TimeSpan d = new DateTime(2022, 9, 11) - DateTime.Now;
            Label4.Text = d.Days.ToString();
            TimeSpan d1 = new DateTime(2022, 11, 30) - DateTime.Now;
            Label5.Text = d1.Days.ToString();
            if (Calendar1.SelectedDate.ToShortDateString() == "10-09-2022")
            { 
                Label3.Text = "Ganpati days start";
            }
            if (Calendar1.SelectedDate.ToShortDateString() == "15-09-2022")
            {
                Label3.Text = "<b>Ganpati Days end</b>"; 
            }

        }
    }
}