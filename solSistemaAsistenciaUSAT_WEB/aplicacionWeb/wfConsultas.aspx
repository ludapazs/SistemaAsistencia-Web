<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PlantillaWEB.Master" CodeBehind="wfConsultas.aspx.vb" Inherits="aplicacionWeb.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100px;
            height: 100px;
        }
        .auto-style15 {
            width: 461px;
            height: 100px;
        }
        .auto-style16 {
            width: 100px;
            height: 300px;
        }
        .auto-style17 {
            width: 461px;
            height: 300px;
        }
        .auto-style18 {
            width: 100px;
            height: 50px;
        }
        .auto-style19 {
            width: 461px;
            height: 50px;
        }
        .auto-style20 {
            width: 100px;
            height: 30px;
        }
        .auto-style21 {
            width: 461px;
            height: 30px;
        }
        .auto-style22 {
            width: 67px;
            height: 100px;
        }
        .auto-style23 {
            width: 50px;
            height: 300px;
        }
        .auto-style24 {
            width: 50px;
            height: 50px;
        }
        .auto-style25 {
            width: 50px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style15" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Consultar información de la Tabla Maestra:
                <asp:DropDownList ID="ddlTablas" runat="server">
                    <asp:ListItem>Empleado</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:Button ID="btnMostrar" runat="server" Text="Mostrar" />
            </td>
           <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style17" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; text-align: left;">
                <asp:GridView ID="grvTabla" runat="server">
                </asp:GridView>
            </td>
           <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style19" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
            </td>
          <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style21" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">
                <asp:Calendar ID="cldFecha" runat="server"></asp:Calendar>
                <br />
                <asp:Button ID="btnFecha" runat="server" Text="Seleccionar Fecha" Width="136px" />
&nbsp;<asp:Button ID="btnCambiar" runat="server" Text="Cambiar Fecha" Width="136px" />
                <br />
                <br />
                Fecha: <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
            </td>
          <td class="auto-style20"></td>
        </tr>
    </table>
</asp:Content>
