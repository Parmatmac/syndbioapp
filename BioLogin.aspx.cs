using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Specialized;
using System.Web.Script.Serialization;
using System.Net.NetworkInformation;


namespace EharnaBioapp
{
    public partial class BioLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            txtFingTemp.Value = "Rk1SACAyMAAAAAFEAAABPAFiAMUAxQEAAAAoMYCRAKgkV0C0ALodZECKAHnOSUCBAG7mSYDDAHBXXYCiAP1/ZEBaAPDvZEBEAG46XUD7AJatUEApAI5HZEEFALoeL0B9ASP6ZEA+AE0uV0C0ASiBZIA5ADu3SUA6ATPjSYB/AVZwSYCXAL4WZECAANJoZIDGAKIsZEBqAHYmSYBWAHY2XUDMAGdcZEDwAKksXUD8AK0rQ0DpAGtRZEDJAEvYZEC4ARsCZED0AGHBZEBOAD0ZQ4CnACP3V4BUASvuZEDMAUvyFEB3ALzwZIB7AIDYSYDBAMYRZECpAOoFZEBEAJZHZIC3AFvWXUDeAHFRZID2AIw5ZEBGAF25XYBHAPltV0CbADHzZEA2APXxSUDbADrfZICYATYBZEBUACOZG0BIAUXmZAAA";
       
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(empid.Text=="123456")
            {

            Response.Redirect("loginmenu.aspx");
            }
            else
            {
                Response.Redirect("Biologin.aspx");
            }
        }

        
       
    }
}