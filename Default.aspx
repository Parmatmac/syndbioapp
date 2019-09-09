<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="EharnaBioapp._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Synd Biometric Login System</title>
    
  
    <script type="text/javascript" src="Scripts/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="Scripts/mfs100-9.0.2.6_XHR.js"></script>
    <script language="javascript" type="text/javascript">


        var quality = 60; //(1 to 100) (recommanded minimum 55)
        var timeout = 10; // seconds (minimum=10(recommanded), maximum=60, unlimited=0 )

        function GetInfo() {
            document.getElementById('tdSerial').innerHTML = "";
            document.getElementById('tdLocalMac').innerHTML = "";
            document.getElementById('tdLocalIP').innerHTML = "";
            document.getElementById('tdSystemID').innerHTML = "";
            document.getElementById('tdPublicIP').innerHTML = "";


            var key = document.getElementById('txtKey').value;

            var res;
            if (key.length == 0) {
                res = GetMFS100Info();
            }
            else {
                res = GetMFS100KeyInfo(key);
            }

            if (res.httpStaus) {


                if (res.data.ErrorCode == "0") {
                    document.getElementById('tdSerial').innerHTML = res.data.DeviceInfo.SerialNo;
                    document.getElementById('tdLocalMac').innerHTML = res.data.DeviceInfo.LocalMac;
                    document.getElementById('tdLocalIP').innerHTML = res.data.DeviceInfo.LocalIP;
                    document.getElementById('tdSystemID').innerHTML = res.data.DeviceInfo.SystemID;
                    document.getElementById('tdPublicIP').innerHTML = res.data.DeviceInfo.PublicIP;
                }
            }
            else {
                alert(res.err);
            }
            return false;
        }


        var newfinger;

        function Capture() {
            try {

                //document.getElementById('empid').value = "";
                

                    var res = CaptureFinger(quality, timeout);
                    if (res.httpStaus) {

                        // document.getElementById('txtStatus').value = "ErrorCode: " + res.data.ErrorCode + " ErrorDescription: " + res.data.ErrorDescription;

                        if (res.data.ErrorCode == "0") {
                            // document.getElementById('imgFinger').src = "data:image/bmp;base64," + res.data.BitmapData;
                            var imageinfo = "Quality: " + res.data.Quality + " Nfiq: " + res.data.Nfiq + " W(in): " + res.data.InWidth + " H(in): " + res.data.InHeight + " area(in): " + res.data.InArea + " Resolution: " + res.data.Resolution + " GrayScale: " + res.data.GrayScale + " Bpp: " + res.data.Bpp + " WSQCompressRatio: " + res.data.WSQCompressRatio + " WSQInfo: " + res.data.WSQInfo;
                            //                       

                             document.getElementById('empid').value = res.data.IsoTemplate;

                            newfinger = res.data.IsoTemplate;

                            Verify();
                        }
                    }
                    else {
                        alert(res.err);
                    }
                
            }
            catch (e) {
                alert(e);
            }
            return true;
        }

        function Verify() {
            try {
                var isotemplatehid = document.getElementById('txtFingTemp').value;
                var res = VerifyFinger(newfinger, isotemplatehid);

                if (res.httpStaus) {
                    if (res.data.Status) {
                        alert("Biometric Authintication Successful... You are redirecting to next page...!!");
                        location.href = "Default.aspx";
                    }
                    else {
                        if (res.data.ErrorCode != "0") {
                            alert(res.data.ErrorDescription);
                        }
                        else {
                            alert("Biometric Authintication Failed. Try Again...!!");
                        }
                    }
                }
                else {
                    alert(res.err);
                }
            }
            catch (e) {
                alert(e);
            }
            return false;

        }
           
     
    </script>
   
</head>

<body style="background-color:orange; color:white;">


 <div style="background-color:">
            <div class="logintitle" align="center" style="padding-top:30px;">
                <h1>
                    Synd Biometric Login Authintication
                </h1>
            </div>
           
           
        </div>

    <table width="100%" style="padding-top:0px;display:none;">
             

        <tr>
            <td width="200px;">
                <table align="left" border="0" width="100%" style="display:none;">
                    <tr>
                        <td>
                            <input type="submit" id="btnInfo" value="Get Info" class="btn btn-primary btn-100" onclick="return GetInfo()" />
                        </td>
                        <td>
                           <%-- <input type="submit" id="btnCapture" value="Capture" class="btn btn-primary btn-100" onclick="return Capture()" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                           <%-- <input type="submit" id="btnCaptureAndMatch" value="Capture and Match" class="btn btn-primary btn-200" onclick="return Match()" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <%--<input type="submit" id="btnMatch" value="Match" class="btn btn-primary btn-200" onclick="return Verify()" />--%>
                        </td>
                    </tr>
                   <%-- <tr>
                        <td>
                            <input type="submit" id="btnGetPid" value="Get PID (X)" class="btn btn-primary btn-100" onclick="return GetPid()" />
                        </td>
                        <td>
                            <input type="submit" id="btnProtoGetPid" value="Get PID (P)" class="btn btn-primary btn-100" onclick="return GetProtoPid()" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" id="btnGetRbd" value="Get RBD (X)" class="btn btn-primary btn-100" onclick="return GetRbd()" />
                        </td>
                        <td>
                            <input type="submit" id="btnProtoGetRbd" value="Get RBD (P)" class="btn btn-primary btn-100" onclick="return GetProtoRbd()" />
                        </td>
                    </tr>--%>
                </table>
            </td>
          <%--  <td width="150px" height="190px" align="center" class="img">
                <img id="imgFinger" width="145px" height="188px" alt="Finger Image" />
            </td>--%>
            <td>
                <table align="left" border="0" style="width:100%; padding-right:20px;">
                    <tr>
                        <td style="width: 100px;">Key:</td>
                        <td colspan="3">
                            <input type="text" value="" id="txtKey" class="form-control" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px;">Serial No:</td>
                        <td align="left" style="width: 150px;" id="tdSerial"></td>
                       <%-- <td align="left" style="width: 100px;">Certification:</td>
                        <td align="left" id="tdCertification"></td>--%>
                    </tr>
                    <tr>
                       <%-- <td align="left">Make:</td>
                        <td align="left" id="tdMake"></td>
                        <td align="left">Model:</td>
                        <td align="left" id="tdModel"></td>--%>
                    </tr>
                    <tr>
                       <%-- <td align="left">Width:</td>
                        <td align="left" id="tdWidth"></td>
                        <td align="left">Height:</td>
                        <td align="left" id="tdHeight"></td>--%>
                    </tr>
                    <tr>
                        <td align="left">Local IP</td>
                        <td align="left" id="tdLocalIP"></td>
                        <td align="left">Local MAC:</td>
                        <td align="left" id="tdLocalMac"></td>
                    </tr>
                    <tr>
                        <td align="left">Public IP</td>
                        <td align="left" id="tdPublicIP"></td>
                        <td align="left">System ID</td>
                        <td align="left" id="tdSystemID"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div class="">
        <table style="display:none;">
            <!--<tr>
                <td>
                    NFIQ:
                </td>
                <td>
                    <input type="text" value="" id="txtNFIQ" class="form-control" />
                </td>
            </tr>-->
            <tr>
                <td class="style1">
                    Base64Encoded ISO Template
                </td>
                <td>
                    &nbsp;<textarea id="txtIsoTemplate" style="width: 100%; height:50px; margin-left: 0px;" 
                        class="form-control" cols="20" name="S1" rows="1"> </textarea></td>
            </tr>
            </table>
    </div>

            
<div align="center" style="padding:60px 200px 100px 200px;">

<form id="Form1" runat="server">


    <asp:Table ID="Table1" runat="server" style="border:2px solid white; padding:40px; width:550px; background-color:#3a4f63; color:White;">
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell ID="TableCell1" runat="server" style="padding:15px;">
            <h2>Employee Id</h2>
            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server" style="padding:15px;">
            <asp:TextBox ID="empid" runat="server" ValidationGroup="usrLogin" Width="150px" Height="20px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell ID="TableCell3" runat="server" style="padding:15px;">
            <h2>  <asp:Label ID="txtError" runat="server" Text="*" ToolTip="Employee Id is mandatory"></asp:Label> </h2>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow2" runat="server">
            <asp:TableCell ID="TableCell4" runat="server">
            
            </asp:TableCell>
            <asp:TableCell ID="TableCell5" runat="server">
            
            </asp:TableCell>
            <asp:TableCell ID="TableCell6" runat="server"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow3" runat="server">
            <asp:TableCell ID="TableCell7" runat="server" align="right">
              <asp:Button ID="Button1" runat="server" Text="Cancel" style="background-color:orange; color:White; width:80px; height:30px; font-size:16px;"  />

            </asp:TableCell>
            <asp:TableCell ID="TableCell8" runat="server" style="padding:15px;">

                <asp:Button ID="Submit1" runat="server" Text="Login" ValidationGroup="usrLogin" style="background-color:orange; color:White; width:80px; height:30px; font-size:16px;" OnClientClick="return Capture();" OnClick="Button_Login"  />

           </asp:TableCell>
            <asp:TableCell ID="TableCell9" runat="server">
             
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow ID="TableRow4" runat="server">
            <asp:TableCell ID="TableCell10" runat="server"></asp:TableCell>
           
            <asp:TableCell ID="TableCell11" runat="server">

                <asp:TextBox ID="txtFingTemp" Visible="false" runat="server"></asp:TextBox>
               <%-- <asp:HiddenField ID="txtFingTemp" runat="server" />--%>
            
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>



    </form>

        </div>






</body>
</html>
