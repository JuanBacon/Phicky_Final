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
        lbl_error.Text = "";
    }

    protected void btn_ingresar_Click(object sender, EventArgs e)
    {
        try
        {
            var sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);
            var strSQL = "SELECT USUARIO, CONTRASEÑA, TIPO, ID_USUARIO, CORREO, DIRECCION FROM USUARIO WHERE USUARIO= '" + txt_usuario.Text + "' and CONTRASEÑA= '" + txt_contraseña.Text + "'";
            var cmd = new SqlCommand(strSQL, sqlConn);


            DataTable dt = new DataTable();
            var da = new SqlDataAdapter(cmd);
            sqlConn.Open();

            da.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                Session["usuario"] = dt.Rows[0][0].ToString();
                Session["tipo"] = dt.Rows[0][2].ToString();
                Session["id_usuario"] = dt.Rows[0][3].ToString();
                Session["Correo"] = dt.Rows[0][4].ToString();
                Session["Direccion"] = dt.Rows[0][5].ToString();


                Response.Redirect("Home.aspx");
            }
            else
            {
                lbl_error.Text = "Datos incorrectos, verificalos e intentalo de nuevo";
            }
            sqlConn.Close();
        }catch
        {
            lbl_error.Text = "Excepción no controlada, revisa la base de datos y  vuelve a intentarlo";
        }
    }
}