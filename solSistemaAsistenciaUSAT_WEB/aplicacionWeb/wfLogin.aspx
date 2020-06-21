<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="wfLogin.aspx.vb" Inherits="aplicacionWeb.wfLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            background-color: #CFCFCF;
        }
        .auto-style2 {
            height: 88px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            height: 50px;
        }
        .auto-style6 {
            width: 280px;
            height: 101px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style8 {
            width: 196px;
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p style="text-align: center">
        &nbsp;</p>
    <table align="center" class="auto-style1" style="font-family: Arial, Helvetica, sans-serif; height: 301px;">
        <tr>
            <td class="auto-style2" colspan="2">
                <img alt="" class="auto-style6" src="login1.png" /></td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2" style="color: #FFFFFF; font-weight: bold; background-color: #4127B6; text-align: center; font-size: large;">INICIO DE SISTEMA</td>
        </tr>
        <tr>
            <td class="auto-style8" style="border-color: #E5E5E5; text-align: right; font-size: small; font-weight: bold;">Usuario:</td>
            <td class="auto-style9" style="border-color: #E5E5E5;"><asp:TextBox ID="txtUsuario" runat="server" Width="80px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" style="border-color: #E5E5E5; text-align: right; font-size: small; font-weight: bold;">Contraseña:</td>
            <td class="auto-style9" style="border-color: #E5E5E5;">
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" Width="80px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2" style="color: #FFFFFF; font-weight: bold; background-color: #4127B6; text-align: center; font-size: large;">
                <asp:Button ID="btnLogin" runat="server" Font-Size="Medium" Text="Ingresar al sistema" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2" style="text-align: center">
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2" style="font-size: small; font-weight: bold; color: #000066;">Derechos Reservados USAT - 2020</td>
        </tr>
    </table>
    </form>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>
