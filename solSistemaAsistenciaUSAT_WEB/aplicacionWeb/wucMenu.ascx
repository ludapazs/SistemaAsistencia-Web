<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="wucMenu.ascx.vb" Inherits="aplicacionWeb.wucMenu" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 50px;
    }
    .auto-style2 {
        height: 31px;
    }
</style>

<table align="center" cellpadding="0" cellspacing="0" class="auto-style1">
    <tr>
        <td class="auto-style2" style="text-align: center; background-color: #77DD77;">
            <asp:Button ID="Button1" runat="server" BackColor="#FF822F" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Inicio" Width="100px" />
        </td>
        <td class="auto-style2" style="text-align: center; background-color: #77DD77;">
            <asp:Button ID="Button2" runat="server" BackColor="#FF822F" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Maestros" Width="100px" />
        </td>
        <td class="auto-style2" style="text-align: center; background-color: #77DD77;">
            <asp:Button ID="Button3" runat="server" BackColor="#FF822F" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Empleado" Width="100px" />
        </td>
        <td class="auto-style2" style="text-align: center; background-color: #77DD77;">
            <asp:Button ID="Button4" runat="server" BackColor="#FF822F" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Operaciones" Width="100px" />
        </td>
        <td class="auto-style2" style="text-align: center; background-color: #77DD77;">
            <asp:Button ID="Button5" runat="server" BackColor="#FF822F" BorderStyle="None" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Consultas" Width="100px" />
        </td>
    </tr>
</table>

