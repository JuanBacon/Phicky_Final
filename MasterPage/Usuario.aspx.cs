using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        var tipo = "";
        try
        {


            lbl_NomUsuario.Text = Session["usuario"].ToString();
            lbl_Direccion.Text = Session["Direccion"].ToString();
            lbl_Correo.Text = Session["Correo"].ToString();
            lbl_Tipo.Text = Session["tipo"].ToString().Trim();
            tipo = lbl_Tipo.Text;
        }
        catch
        {
            lbl_NomUsuario.Text = "Nombre";
            lbl_Direccion.Text = "Dirección";
            lbl_Correo.Text = "Correo";
            lbl_Tipo.Text = "Tipo";
        }

        if (lbl_Tipo.Text == "VD")
        {
            
            Btn_IngresarProducto.Visible = true;
            Btn_reporteDeVentas.Visible = true;
        }
        else
        {
            Btn_IngresarProducto.Visible = false;
            Btn_reporteDeVentas.Visible = false;
        }
    }

    protected void Btn_IngresarProducto_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarProducto.aspx");
    }

    protected void Btn_Salir_Click(object sender, EventArgs e)
    {
        
        Session.Contents.RemoveAll();
        Response.Redirect("Home.aspx");


    }
}