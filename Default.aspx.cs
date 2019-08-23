using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPUpdateProgress
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnSendMail_Click(object sender, EventArgs e)
		{
			Random rnd = new Random();
			decimal month = rnd.Next(99999, 99999999);

			decimal contador = 0;
			DateTime a = DateTime.Now;
			for (decimal i = 0; i < month; i++)
			{
				contador = i;
			}
			DateTime b = DateTime.Now;

			Label1.Text = a.ToString("HH:mm:ss") + " a " + b.ToString("HH:mm:ss") + " ::: " + contador.ToString();
		}
	}
}