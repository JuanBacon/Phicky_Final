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
      
      
    }



    protected void Stock_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        if (((Label)Master.FindControl("validarusuario")).Text == "invitado")
        {
            Response.Redirect("Sesion.aspx");
        }
        else
        {
            if (e.CommandName == "comprar")
            {
                Stock.SelectedIndex = e.Item.ItemIndex;
                
                Session["productoselec"] = ((Label)Stock.SelectedItem.FindControl("IDSTOCK")).Text;
               
                Response.Redirect("Articulo.aspx");


            }
        }
    }


}