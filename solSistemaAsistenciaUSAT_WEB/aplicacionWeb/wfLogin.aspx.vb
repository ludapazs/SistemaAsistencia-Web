Imports capaNegocio

Public Class wfLogin
    Inherits System.Web.UI.Page
    Dim objUsuario As New clsUsuario

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Try
            If objUsuario.login(txtUsuario.Text, txtContraseña.Text) Then
                'lblMensaje.Text = "Bienvenido al Sistema " & objUsuario.obtenerrUsuario(txtUsuario.Text, txtContraseña.Text)
                Response.Redirect("wfInicioNuevo.aspx")
            Else
                lblMensaje.Text = "Error de acceso!"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class