using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace EharnaBioapp
{
    public partial class loginmenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checkNetwork();
        }

        public void checkNetwork()
        {
            try
            {

                Ping myPing = new Ping();
                PingReply reply = myPing.Send("172.16.3.117");
                if (reply.Status.ToString()=="Success")
                {

                    Response.Write("Status: " + reply.Status + " time: " + reply.RoundtripTime.ToString() + " Address: " + reply.Address);
                }
                else
                {
                    Response.Write("Please Check Connection...");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("OFCR.aspx");
        }
        
    }
}