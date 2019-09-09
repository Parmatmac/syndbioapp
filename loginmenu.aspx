<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginmenu.aspx.cs" MasterPageFile="~/Site.Master" Inherits="EharnaBioapp.loginmenu" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">



<div align="center">

    <asp:Table ID="Table1" runat="server" CellPadding="20">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
            <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 6.3</div>
            <div style="color:White; padding:2px; font-size:15px;">Supervisor</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456S</div>
            <div style="padding-top:10px;"><asp:Button ID="btnSubmit" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" OnClick="btnSubmit_Click" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            
            </asp:TableCell>
            <asp:TableCell runat="server">
              <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 6.3</div>
            <div style="color:White; padding:2px; font-size:15px;">Teller</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456T</div>
            <div style="padding-top:10px;"><asp:Button ID="Button1" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            
            </asp:TableCell>
            <asp:TableCell runat="server">
              <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 6.3</div>
            <div style="color:White; padding:2px; font-size:15px;">Vault</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">000479T</div>
            <div style="padding-top:10px;"><asp:Button ID="Button2" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            
            </asp:TableCell>
            <asp:TableCell runat="server">
              <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 6.3</div>
            <div style="color:White; padding:2px; font-size:15px;">Vault</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">000479T</div>
            <div style="padding-top:10px;"><asp:Button ID="Button12" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>

            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 11.X</div>
            <div style="color:White; padding:2px; font-size:15px;">Tellor</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button4" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 11.X</div>
            <div style="color:White; padding:2px; font-size:15px;">Vault</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button5" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 11.X</div>
            <div style="color:White; padding:2px; font-size:15px;">Supervisor</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button3" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 6.3</div>
            <div style="color:White; padding:2px; font-size:15px;">Vault</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">000479T</div>
            <div style="padding-top:10px;"><asp:Button ID="Button13" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell ID="TableCell1" runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">Pigmy</div>
            <div style="color:White; padding:2px; font-size:15px;">Pigmy1</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button6" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">Tresiory</div>
            <div style="color:White; padding:2px; font-size:15px;">Traisory</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button7" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell ID="TableCell3" runat="server">
            
            </asp:TableCell>
            <asp:TableCell ID="TableCell4" runat="server">
            
            </asp:TableCell>
        </asp:TableRow>
       <%-- <asp:TableRow ID="TableRow2" runat="server">
            <asp:TableCell ID="TableCell5" runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 11.X</div>
            <div style="color:White; padding:2px; font-size:15px;">Tellor</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button9" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell ID="TableCell6" runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 11.X</div>
            <div style="color:White; padding:2px; font-size:15px;">Vault</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button10" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell ID="TableCell7" runat="server">
             <div style="background-color:#ffa500; color:#3a4f63; padding:15px 15px 10px 15px;" align="center">
            <div style="font-style:oblique; font-size:25px; font-family:Arial Rounded MT Bold; padding:2px;">OFCR 11.X</div>
            <div style="color:White; padding:2px; font-size:15px;">Supervisor</div>
            <div style="color:#3a4f63; padding:2px; font-size:20px;font-family:Arial Rounded MT Bold;">123456</div>
            <div style="padding-top:10px;"><asp:Button ID="Button11" runat="server" Text="Continue" ForeColor="White" OnClientClick="myFunction()" BackColor="#3A4F63" Width="110" Height="30" /></div>
            </div>
            </asp:TableCell>
            <asp:TableCell ID="TableCell8" runat="server"></asp:TableCell>
        </asp:TableRow>--%>
    </asp:Table>
</div>




</asp:Content>


