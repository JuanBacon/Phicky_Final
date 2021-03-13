using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Btn_registrar_Click(object sender, EventArgs e)
    {
        if (txtcontra.Text == txtConfirmContraseña.Text)
        {
            if (txtcontra.Text == txtConfirmContraseña.Text)
            {
                string nombre = txtNombre.Text + " " + txtApellido.Text;
                Guid Idusuario = Guid.NewGuid();

                var sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);
                var strSQL = "INSERT INTO USUARIO VALUES('" + Idusuario + "','" + nombre + "','" + txtusuario.Text + "','" + txtcontra.Text + "','" + txtcorreo.Text + "','" + txtDir.Text + "','" + DDL_tipo.SelectedValue.ToString() + "')";
                var cmd = new SqlCommand(strSQL, sqlConn);

                sqlConn.Open();
                cmd.ExecuteNonQuery();
                sqlConn.Close();



                txtNombre.Text = "";
                txtApellido.Text = "";
                DDL_tipo.SelectedItem.Value = null;
                txtDir.Text = "";
                txtcorreo.Text = "";
                txtConfirmCorreo.Text = "";
                txtusuario.Text = "";
                txtcontra.Text = "";
                txtConfirmContraseña.Text = "";

                Response.Redirect("Sesion.aspx");
            }
            else
            {
                txtcontra.Text = "";
                txtConfirmContraseña.Text = "";
            }

        }
        else
        {
            txtcorreo.Text = "";
            txtConfirmCorreo.Text = "";
        }
    }




   
}