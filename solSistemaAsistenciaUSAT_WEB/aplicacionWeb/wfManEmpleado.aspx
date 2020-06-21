<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PlantillaWEB.Master" CodeBehind="wfManEmpleado.aspx.vb" Inherits="aplicacionWeb.Formulario_web12" %>
<%@ Register src="wucMenuVertical.ascx" tagname="wucMenuVertical" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 98px;
        }
        .auto-style13 {
            width: 100px;
        }
        .auto-style14 {
            width: 100px;
            height: 27px;
        }
        .auto-style15 {
            height: 27px;
        }
        .auto-style16 {
            width: 98px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">&nbsp;</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                &nbsp;</td>
           <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">DNI:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:TextBox ID="txtDni" runat="server" Width="90px"></asp:TextBox>
&nbsp;<asp:Button ID="btnBuscar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Height="25px" Text="Buscar" Width="70px" />
            </td>
           <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Nombres:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;" class="auto-style15">
                <asp:TextBox ID="txtNombres" runat="server" Width="220px"></asp:TextBox>
            </td>
           <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style14" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Apellidos:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;" class="auto-style15">
                <asp:TextBox ID="txtApellidos" runat="server" Width="220px"></asp:TextBox>
            </td>
           <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Sexo:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:DropDownList ID="ddlSexo" runat="server">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Dirección:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:TextBox ID="txtDireccion" runat="server" Width="220px"></asp:TextBox>
            </td>
           <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Teléfono:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:TextBox ID="txtTelefono" runat="server" Width="90px"></asp:TextBox>
            </td>
           <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Correo:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:TextBox ID="txtCorreo" runat="server" Width="220px"></asp:TextBox>
            </td>
           <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: right;">Estado:</td>
            <td style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:CheckBox ID="chkEstado" runat="server" Text="(Vigente)" />
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td colspan="2" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: left;">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="btnRegistrar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Registrar" Width="80px" />
&nbsp;<asp:Button ID="btnModificar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Modificar" Width="80px" />
&nbsp;<asp:Button ID="btnEliminar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Eliminar" Width="80px" />
&nbsp;<asp:Button ID="btnDarBaja" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Dar Baja" Width="80px" />
                <br />
            </td>
           <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td colspan="2" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium; text-align: center;">
                <asp:GridView ID="grvEmpleados" runat="server">
                </asp:GridView>
            </td>
          <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <uc1:wucMenuVertical ID="wucMenuVertical1" runat="server" />
</asp:Content>

