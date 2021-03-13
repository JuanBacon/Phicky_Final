<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="Usuario.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:0px;">
    
    <table class=" container-fluid" style="text-align:center; margin-top:5%; height:auto;">

        <tr>
            <td style="height:auto;padding: 0px;">
                <asp:Image ID="Img_Usuario" CssClass="img-fluid" src="../Img/User.png" runat="server" style="height:60%;" />
                <br/>
                <asp:Label ID="lbl_NomUsuario" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="margin-left:1%;padding:0px;">
                <asp:Label ID="lbl_Direccion" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="lbl_Correo" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="lbl_Tipo" runat="server" Text="" Font-Size="0"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding: 0px">
                <div style="text-align:center;" >
                
                <asp:Button ID="Btn_reporteDeVentas" runat="server" Text="Reportes" class="btn btn-primary"/>
                <asp:Button ID="Btn_IngresarProducto" runat="server" Text="Ingresar Producto" class="btn btn-primary" OnClick="Btn_IngresarProducto_Click"/>                   
                
            </div>
                <div style="text-align:center">
                    <asp:Button ID="Btn_Salir" runat="server" Text="Salir" class="btn btn-danger" OnClick="Btn_Salir_Click" Width="90px"/>
                </div>
                <asp:Image ID="Image1" src="../Img/Fon_User.jpg" runat="server" CssClass="img-fluid" />

            </td>
        </tr>
    </table>
</div>






</asp:Content>

