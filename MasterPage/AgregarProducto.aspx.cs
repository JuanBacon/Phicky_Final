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

    protected void btn_Publicar_Click(object sender, EventArgs e)
    {
        var sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);
        var strSQL = "SELECT ID_PRODUCTO FROM PRODUCTO WHERE NOMBRE= '" + DD_ProductoEspecifico.SelectedValue.ToString() + "'";
        var cmd = new SqlCommand(strSQL, sqlConn);

        DataTable dt = new DataTable();
        var da = new SqlDataAdapter(cmd);
        sqlConn.Open();

        da.Fill(dt);
        SqlDataReader dr = cmd.ExecuteReader();
        sqlConn.Close();

        Guid ID_Producto = Guid.Parse(dt.Rows[0][0].ToString());
        Guid ID_STOCK = Guid.NewGuid();

        Guid ID_USUARIO = Guid.Parse(Session["id_usuario"].ToString());

        var sqlConn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);
        var strSQL2 = "INSERT INTO STOCK VALUES('" + ID_STOCK + "','" + ID_Producto + "','" + ID_USUARIO + "','" + txtdescripcion.Value.ToString() + "','" + txtprecio.Text + "','" + DD_cantidad.SelectedValue.ToString() + "','" + txturl.Text + "','" + DD_ProductoEspecifico.SelectedValue.ToString() + "')";
        var cmd2 = new SqlCommand(strSQL2, sqlConn2);

        sqlConn2.Open();
        cmd2.ExecuteNonQuery();
        sqlConn2.Close();


        DD_TipoProducto.ClearSelection();
        DD_ProductoEspecifico.ClearSelection();
        DD_cantidad.ClearSelection();
        txtdescripcion.Value = "";
        txtprecio.Text = "";
        txturl.Text = "";

    }

}