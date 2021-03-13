using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            validarusuario.Text = Session["usuario"].ToString();
            

        }
        catch
        {
            validarusuario.Text = "invitado";

        }

        if(validarusuario.Text == "invitado")
        {
            ln_Perfil.Visible = false;
            ln_sesion.Visible = true;
        }
        else
        {
            ln_Perfil.Visible = true;
            ln_sesion.Visible = false;
        }
    }


    protected void imgb_buscar_Click(object sender, ImageClickEventArgs e)
    {
        if (txt_Search.Text != "")
        {
            Session["FiltradoProduc"] = txt_Search.Text;
            Response.Redirect("Filtrado.aspx");
        }
    }
}
