using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class MasterPage_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StockHome.Visible = true;
        Ch_Stock.Visible = false;
        Ram_Stock.Visible = false;
        HDD_Stock.Visible = false;
        Cpu_Stock.Visible = false;
        MOM_Stock.Visible = false;
        
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
                StockHome.SelectedIndex = e.Item.ItemIndex;

                Session["productoselec"] = ((Label)StockHome.SelectedItem.FindControl("IDSTOCK")).Text;
                Response.Redirect("Articulo.aspx");


            }
        }
    }

    protected void Fil_CH_Click(object sender, EventArgs e)
    {
        StockHome.Visible = false;
        Ch_Stock.Visible = true;
        Ram_Stock.Visible = false;
        HDD_Stock.Visible = false;
        Cpu_Stock.Visible = false;
        MOM_Stock.Visible = false;



    }

    protected void Fil_RAM_Click(object sender, EventArgs e)
    {
        StockHome.Visible = false;
        Ch_Stock.Visible = false;
        Ram_Stock.Visible = true;
        HDD_Stock.Visible = false;
        Cpu_Stock.Visible = false;
        MOM_Stock.Visible = false;
    }

    protected void Fil_HDD_Click(object sender, EventArgs e)
    {
        StockHome.Visible = false;
        Ch_Stock.Visible = false;
        Ram_Stock.Visible = false;
        HDD_Stock.Visible = true;
        Cpu_Stock.Visible = false;
        MOM_Stock.Visible = false;
    }

    protected void Fil_CPU_Click(object sender, EventArgs e)
    {
        StockHome.Visible = false;
        Ch_Stock.Visible = false;
        Ram_Stock.Visible = false;
        HDD_Stock.Visible = false;
        Cpu_Stock.Visible = true;
        MOM_Stock.Visible = false;
    }

    protected void Fil_MOM_Click(object sender, EventArgs e)
    {
        StockHome.Visible = false;
        Ch_Stock.Visible = false;
        Ram_Stock.Visible = false;
        HDD_Stock.Visible = false;
        Cpu_Stock.Visible = false;
        MOM_Stock.Visible = true;
    }

    protected void Ch_Stock_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (((Label)Master.FindControl("validarusuario")).Text == "invitado")
        {
            Response.Redirect("Sesion.aspx");
        }
        else
        {
            if (e.CommandName == "comprar")
            {
                Ch_Stock.SelectedIndex = e.Item.ItemIndex;

                Session["productoselec"] = ((Label)Ch_Stock.SelectedItem.FindControl("IDSTOCK")).Text;
                Response.Redirect("Articulo.aspx");


            }
        }
    }

    protected void Ram_Stock_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (((Label)Master.FindControl("validarusuario")).Text == "invitado")
        {
            Response.Redirect("Sesion.aspx");
        }
        else
        {
            if (e.CommandName == "comprar")
            {
                Ram_Stock.SelectedIndex = e.Item.ItemIndex;

                Session["productoselec"] = ((Label)Ram_Stock.SelectedItem.FindControl("IDSTOCK")).Text;
                Response.Redirect("Articulo.aspx");


            }
        }
    }

    protected void Cpu_Stock_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (((Label)Master.FindControl("validarusuario")).Text == "invitado")
        {
            Response.Redirect("Sesion.aspx");
        }
        else
        {
            if (e.CommandName == "comprar")
            {
                Cpu_Stock.SelectedIndex = e.Item.ItemIndex;

                Session["productoselec"] = ((Label)Cpu_Stock.SelectedItem.FindControl("IDSTOCK")).Text;
                Response.Redirect("Articulo.aspx");


            }
        }
    }

    protected void HDD_Strock_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (((Label)Master.FindControl("validarusuario")).Text == "invitado")
        {
            Response.Redirect("Sesion.aspx");
        }
        else
        {
            if (e.CommandName == "comprar")
            {
                HDD_Stock.SelectedIndex = e.Item.ItemIndex;

                Session["productoselec"] = ((Label)HDD_Stock.SelectedItem.FindControl("IDSTOCK")).Text;
                Response.Redirect("Articulo.aspx");


            }
        }
    }

    protected void MOM_Stock_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (((Label)Master.FindControl("validarusuario")).Text == "invitado")
        {
            Response.Redirect("Sesion.aspx");
        }
        else
        {
            if (e.CommandName == "comprar")
            {
                MOM_Stock.SelectedIndex = e.Item.ItemIndex;

                Session["productoselec"] = ((Label)MOM_Stock.SelectedItem.FindControl("IDSTOCK")).Text;
                Response.Redirect("Articulo.aspx");


            }
        }
    }
}