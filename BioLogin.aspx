<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BioLogin.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="EharnaBioapp.BioLogin" %>

<%@ Import Namespace="System.Web.Script.Serialization" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">


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
                <table align="left" border="0" style="padding-right:20px;">
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
                    &nbsp;<textarea id="txtIsoTemplate" style=" height:50px; margin-left: 0px;" 
                        class="form-control" cols="20" name="S1" rows="1"> </textarea></td>
            </tr>
            </table>
    </div>

            
<div align="center" style="color:White;">


    <asp:Table ID="Table1" runat="server" style="border:2px solid white; padding:30px; margin-top:80px; width:500px; background-color:#3a4f63; color:White;">
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell ID="TableCell1" runat="server" style="padding:15px;">
            <h2 style="color:White;">Employee Id</h2>
            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server" style="padding:15px;">
            <asp:TextBox ID="empid" runat="server" Width="150px" Height="20px"></asp:TextBox> &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" SetFocusOnError="True" ToolTip="Employee id mandatory" ControlToValidate="empid" Font-Size="20" ForeColor="#FFCC00"></asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell ID="TableCell3" runat="server" style="">
            
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
            <asp:TableCell ID="TableCell8" runat="server" style="padding-left:50px;">
            <asp:Button ID="btnLogin" runat="server" Text="Login" style="background-color:orange; color:White; width:80px; height:30px; font-size:16px;" OnClick="btnLogin_Click"  />
                <%--<asp:Button ID="Submit1" runat="server" Text="Login" ValidationGroup="usrLogin" style="background-color:orange; color:White; width:80px; height:30px; font-size:16px;" OnClientClick="return Capture()"  />--%>

           </asp:TableCell>
            <asp:TableCell ID="TableCell9" runat="server">
             
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow ID="TableRow4" runat="server">
            <asp:TableCell ID="TableCell10" runat="server"></asp:TableCell>
           
            <asp:TableCell ID="TableCell11" runat="server">


                <asp:HiddenField ID="txtFingTemp" runat="server" />
            
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>

</div>


</asp:Content>


