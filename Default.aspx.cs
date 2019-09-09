using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace EharnaBioapp
{
    public partial class _Default : System.Web.UI.Page
    {

        byte[] usertemp;
        byte[] newFingerVal;

        protected void Page_Load(object sender, EventArgs e)
        {
                       
        }

        protected void Button_Login(object sender, EventArgs e)
        {
            FingValidate();      
        }

        

        public void FingValidate()
        {
            txtFingTemp.Text = "Rk1SACAyMAAAAAEOAAABPAFiAMUAxQEAAAAoKICsAM54ZECSAKh3XUB/AKP2XYB+AQ78ZED1ALkUZECFAGkAZEB0AR90ZECWATqNZEESAIQbUEBLASZyZIDrAT+TQ0ArAGBjUEDcAVKVG0CNAB8UQ0CoAKoHXUC/ANaFZEBuAKryXYDJAQqIZEBbAJBnV0BBAKlsXUBZAHdcXUBPAGvfXUAmAPLsL4BUATmBZEDQADgmXUAoAGTjUIC7ACOXL0CGAMH0XUCNAJr9XUDsANYOZIDgAPiJZICaASGAZEC7ASKKZEB+ASyEZIEFAQ+NKIC+AUWRZEEIAF4kNUDsAEIfXUDwAUYcQ0ECAD+fGwAA";
            
           
           
            usertemp = Convert.FromBase64String(txtFingTemp.Text.ToString());

            newFingerVal = Convert.FromBase64String(empid.Text.ToString());

            // string temp = Convert.ToBase64String(newFingerVal, 0, newFingerVal.Length);
           // string temp2 = Convert.ToBase64String(usertemp, 0, usertemp.Length);
           // byte[] abc = Convert.FromBase64String(temp);





            if (usertemp.SequenceEqual<byte>(newFingerVal) == true)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "Script", "alert('Finger Matched..!!');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "Script", "alert('Finger Matching Failed..!!');", true);
            }

        }
    }
}
