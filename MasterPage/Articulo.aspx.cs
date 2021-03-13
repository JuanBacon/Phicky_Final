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
        var sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);
        var strSQL = "SELECT IDUSUARIO, DETALLE, PRECIO, URL, NOMBRE_STOCK FROM STOCK WHERE ID_STOCK= '" + Session["productoselec"].ToString() + "'";

        var cmd = new SqlCommand(strSQL, sqlConn);

        DataTable dt = new DataTable();

        var da = new SqlDataAdapter(cmd);

        sqlConn.Open();

        da.Fill(dt);
        SqlDataReader dr = cmd.ExecuteReader();
        sqlConn.Close();

        var Vendedor = dt.Rows[0][0].ToString();
        

        var Detalle = dt.Rows[0][1].ToString();
        lbl_descripcion.Text = Detalle;
        var Precio = dt.Rows[0][2].ToString();
        lbl_Precio.Text = Precio;
        var Url = dt.Rows[0][3].ToString();
        Image1.ImageUrl = Url;
        var NomStock = dt.Rows[0][4].ToString();
        lbl_NomProducto.Text = NomStock;



        var strSQL2 = "SELECT NOMBRE, CORREO, DIRECCION FROM USUARIO WHERE ID_USUARIO= '" + Vendedor + "'";
        var cmd2 = new SqlCommand(strSQL2, sqlConn);
        var da2 = new SqlDataAdapter(cmd2);
        DataTable dt2 = new DataTable();

        sqlConn.Open();

        da2.Fill(dt2);
        SqlDataReader dr2 = cmd2.ExecuteReader();

        sqlConn.Close();

        da2.Fill(dt2);

        var NomVendedor = dt2.Rows[0][0].ToString();
        lbl_vendedor.Text = NomVendedor;
        var Correo = dt2.Rows[0][1].ToString();
        lbl_Correo.Text = Correo;
        var Direccion = dt2.Rows[0][2].ToString();
        lbl_direccion.Text = Direccion;






    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        PanelArticulo.Visible = false;
        PanelVenta.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Guid Idcompra = Guid.NewGuid();
        Guid ID_Usuario = Guid.Parse(Session["id_usuario"].ToString());
        Guid ID_Stock = Guid.Parse(Session["productoselec"].ToString());
        

        var sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString);
        var strSQL = "INSERT INTO COMPRAS VALUES('" + Idcompra + "','" + ID_Usuario + "','" + ID_Stock + "','" + lbl_Precio.Text + "')";
        var cmd = new SqlCommand(strSQL, sqlConn);

        sqlConn.Open();
        cmd.ExecuteNonQuery();
        sqlConn.Close();


        Response.Write("<script>alert('Compra Realizada Exitosamente')</script>");
        Response.Redirect("Home.aspx");


    }
}