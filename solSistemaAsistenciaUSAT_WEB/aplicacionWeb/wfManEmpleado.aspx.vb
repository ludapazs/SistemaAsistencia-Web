Imports capaNegocio
Public Class Formulario_web12
    Inherits System.Web.UI.Page
    Dim objEmp As New clsEmpleado
    Dim dtEmp As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        listarEmpleados()
    End Sub

    Private Sub listarEmpleados()
        Try
            grvEmpleados.DataSource = objEmp.listarWeb
            grvEmpleados.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Try
            dtEmp = objEmp.buscar(txtDni.Text)
            If dtEmp.Rows.Count > 0 Then
                txtNombres.Text = dtEmp.Rows(0).Item(1)
                txtApellidos.Text = dtEmp.Rows(0).Item(2)
                ddlSexo.Text = IIf(dtEmp.Rows(0).Item(3), "Masculino", "Femenino")
                txtDireccion.Text = dtEmp.Rows(0).Item(4)
                txtTelefono.Text = dtEmp.Rows(0).Item(5)
                txtCorreo.Text = dtEmp.Rows(0).Item(6)
                chkEstado.Checked = dtEmp.Rows(0).Item(7)
            Else
                lblMensaje.Text = "DNI no está registrado!"
            End If
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Try
            objEmp.registrar(txtDni.Text, txtNombres.Text, txtApellidos.Text, IIf(ddlSexo.Text = "Masculino", True, False), txtDireccion.Text, txtTelefono.Text, txtCorreo.Text, chkEstado.Checked)
            limpiarControles()
            listarEmpleados()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Private Sub limpiarControles()
        txtDni.Text = ""
        txtNombres.Text = ""
        txtApellidos.Text = ""
        txtDireccion.Text = ""
        txtCorreo.Text = ""
        ddlSexo.Text = ""
        txtTelefono.Text = ""
        txtDni.Focus()
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Try
            objEmp.eliminar(txtDni.Text)
            limpiarControles()
            listarEmpleados()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        Try
            objEmp.modificar(txtDni.Text, txtNombres.Text, txtApellidos.Text, IIf(ddlSexo.Text = "Masculino", True, False), txtDireccion.Text, txtTelefono.Text, txtCorreo.Text, chkEstado.Checked)
            limpiarControles()
            listarEmpleados()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnDarBaja_Click(sender As Object, e As EventArgs) Handles btnDarBaja.Click
        Try
            objEmp.darBaja(txtDni.Text)
            limpiarControles()
            listarEmpleados()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

End Class