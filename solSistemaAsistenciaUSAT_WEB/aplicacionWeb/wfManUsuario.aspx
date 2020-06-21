<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PlantillaWEB.Master" CodeBehind="wfManUsuario.aspx.vb" Inherits="aplicacionWeb.Formulario_web14" %><%@ Register src="wucMenuVertical.ascx" tagname="wucMenuVertical" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
        }
        .auto-style13 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:wucMenuVertical ID="wucMenuVertical1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: medium">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">Código:</td>
            <td>
                <asp:TextBox ID="txtCodigo" runat="server" Width="60px"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Height="25px" Text="..." Width="50px" />
            </td>
               <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">DNI:</td>
            <td>
                <asp:TextBox ID="txtDNI" runat="server" Width="60px"></asp:TextBox>
                <asp:Button ID="btnBuscarDNI" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Height="25px" Text="..." Width="50px" />
            </td>
               <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">Empleado:</td>
            <td>
                <asp:TextBox ID="txtEmpleado" runat="server" Width="200px"></asp:TextBox>
            </td>
              <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">Nombre:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox>
            </td>
              <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">Contaseña:</td>
            <td>
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
              <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">Confirmar:</td>
            <td>
                <asp:TextBox ID="txtConfirmar" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
              <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13" style="text-align: right">Estado:</td>
            <td>
                <asp:CheckBox ID="chkVig" runat="server" Text="(Vigente)" />
            </td>
             <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="btnRegistrar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Nuevo" Width="80px" />
&nbsp;<asp:Button ID="btnModificar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Modificar" Width="80px" />
&nbsp;<asp:Button ID="btnEliminar" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Eliminar" Width="80px" />
&nbsp;<asp:Button ID="btnDarBaja" runat="server" Font-Bold="True" Font-Names="Gill Sans MT" Font-Size="Medium" Text="Dar Baja" Width="80px" />
                <br />
            </td>
              <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td  colspan="2">
                <asp:GridView ID="grvUsuario" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="codigoUsu" HeaderText="Código" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="dni" HeaderText="DNI" />
                        <asp:CheckBoxField DataField="estado" HeaderText="Estado" />
                    </Columns>
                </asp:GridView>
                <br />
            </td>
             <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
