Imports capaNegocio

Public Class Formulario_web14
    Inherits System.Web.UI.Page
    Dim objUsuario As New clsUsuario
    Dim objEmpleado As New clsEmpleado

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        listarUsuarios()
    End Sub

    Private Sub listarUsuarios()
        Try
            grvUsuario.DataSource = objUsuario.listar
            grvUsuario.DataBind()
            'Ocultar fila
            'grvUsuario.Rows(3).Visible = False
            'Ocultar columnas
            'grvUsuario.Columns(2).Visible = False
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Try
            If btnRegistrar.Text = "Nuevo" Then
                btnRegistrar.Text = "Registrar"
                limpiarControles()
                txtCodigo.Text = objUsuario.generarCodigoUsuario
            Else
                btnRegistrar.Text = "Nuevo"
                If txtContraseña.Text = txtConfirmar.Text Then
                    objUsuario.registrar(CInt(txtCodigo.Text), txtNombre.Text, txtContraseña.Text, txtDNI.Text, chkVig.Checked)
                    limpiarControles()
                    listarUsuarios()
                Else
                    lblMensaje.Text = "Contraseñas no coinciden!"
                End If
            End If
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Private Sub limpiarControles()
        txtCodigo.Text = ""
        txtDNI.Text = ""
        txtNombre.Text = ""
        txtEmpleado.Text = ""
        txtContraseña.Text = ""
        txtConfirmar.Text = ""
    End Sub

    Protected Sub btnBuscarDNI_Click(sender As Object, e As EventArgs) Handles btnBuscarDNI.Click
        Dim dtEmp As New DataTable
        Try
            dtEmp = objEmpleado.buscar(txtDNI.Text)
            If dtEmp.Rows.Count > 0 Then
                txtEmpleado.Text = dtEmp.Rows(0).Item(1) + " " + dtEmp.Rows(0).Item(2)
            End If
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            objUsuario.modificar(CInt(txtCodigo.Text), txtNombre.Text, txtContraseña.Text, txtDNI.Text, chkVig.Checked)
            limpiarControles()
            listarUsuarios()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Try
            objUsuario.eliminar(CInt(txtCodigo.Text))
            limpiarControles()
            listarUsuarios()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnDarBaja_Click(sender As Object, e As EventArgs) Handles btnDarBaja.Click
        Try
            objUsuario.darBaja(CInt(txtCodigo.Text))
            limpiarControles()
            listarUsuarios()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim dtUsua As New DataTable
        Try
            If txtCodigo.Text <> "" Then
                dtUsua = objUsuario.buscar(CInt(txtCodigo.Text))
                If dtUsua.Rows.Count > 0 Then
                    txtNombre.Text = dtUsua.Rows(0).Item(1)
                    txtContraseña.Text = dtUsua.Rows(0).Item(2)
                    txtDNI.Text = dtUsua.Rows(0).Item(3)
                    chkVig.Checked = dtUsua.Rows(0).Item(4)
                Else
                    lblMensaje.Text = "Código de usuario NO EXISTE!"
                End If
            End If
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub
End Class