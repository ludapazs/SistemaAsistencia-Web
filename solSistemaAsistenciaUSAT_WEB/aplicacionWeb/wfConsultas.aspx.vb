Imports capaNegocio
Public Class Formulario_web13
    Inherits System.Web.UI.Page
    Dim objEmp As New clsEmpleado
    Dim objUsu As New clsUsuario

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnMostrar_Click(sender As Object, e As EventArgs) Handles btnMostrar.Click
        If ddlTablas.Text = "Empleado" Then
            listarEmpleado()
        ElseIf ddlTablas.Text = "Usuario" Then
            listarUsuario()
        End If
    End Sub

    Private Sub listarEmpleado()
        Try
            grvTabla.DataSource = objEmp.listarWeb
            grvTabla.DataBind()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Private Sub listarUsuario()
        Try
            grvTabla.DataSource = objUsu.listar
            grvTabla.DataBind()
        Catch ex As Exception
            lblMensaje.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnFecha_Click(sender As Object, e As EventArgs) Handles btnFecha.Click
        txtFecha.Text = cldFecha.SelectedDate
    End Sub

    Protected Sub btnCambiar_Click(sender As Object, e As EventArgs) Handles btnCambiar.Click
        cldFecha.SelectedDate = Format(txtFecha.Text, "dd/MM/yyyy")
        'Fecha Ingles: MM/dd/yyyy
        'Fecha Español: dd/MM/yyyy
    End Sub
End Class