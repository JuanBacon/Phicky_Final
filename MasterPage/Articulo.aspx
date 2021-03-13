<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="Articulo.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <asp:Panel ID="PanelArticulo" runat="server">
                    <div class="container" style="margin-left: 16%; margin-top: 8%;margin-bottom:8%; border: groove;">
                        <div class="row" style="margin-top: 5%; margin-bottom: 5%">
                            <div class="col" style="margin-top: 5%; margin-left:5%; ">
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("URL") %>' runat="server" Style="height: 85%; width: 85%;" />
                            </div>

                            <div class="auto-style1" style="padding-right: 3%; padding-left: 2%; border-left: groove;">
                                <div class="row">
                                    <asp:Label ID="lbl_NomProducto" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label>
                                </div>
                                <div class="row" style="">
                                    <h3 class="text-primary">$<asp:Label ID="lbl_Precio" runat="server" Text="Label"></asp:Label></h3>
                                </div>
                                <div class="row">
                                    <p>
                                        Descripción del producto:
                                        <br />
                                        <br />
                                        <asp:Label ID="lbl_descripcion" runat="server" Text="Label"></asp:Label>
                                    </p>
                                </div>
                                <div class="row">
                                    <h3 class="text-primary">
                                        <asp:Label ID="lbl_vendedor" runat="server" Text="Label"></asp:Label></h3>
                                </div>
                                <div class="row">
                                    <h4>Datos del vendedor:</h4>
                                </div>
                                <div class="row">
                                    <p>
                                        Dirección: 
                                        <br />
                                    </p>
                                    <p class="text-primary">
                                            <asp:Label ID="lbl_direccion" runat="server" Text="Label"></asp:Label>                    </p>
                                    </div>
                                    <div class="row">
                                        <p>
                                        Correo eletrónico:
                                        <br />
                                            
                                    </p>
                                    <p class="text-primary">
                                        <asp:Label ID="lbl_Correo" runat="server" Text="Label"></asp:Label>
                                        <br />
                                    </p>
                                </div>
                                <div class="row">
                                    <asp:Button ID="Button1" CssClass="btn btn-primary shadow btn-block rounded" runat="server" Text="Comprar" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelVenta" runat="server">

                        <div class="card"  style=" margin-left:25%; margin-top:5%; width: 50%;">

                            <div class="badge  text-wrap" style="width: auto; margin:5px; ">
                                    <h5> Datos de la Tarjeta </h5>
                            </div>

                        <div class="form-group inside"> <!-- Nombre Completo -->
                            <label for="nom_Tarjeta" class="control-label">Nombre Completo</label>
                            <input type="text" class="form-control" id="nom_Tarjeta" name="nom_Tarjeta" placeholder="Pepito Perez"/>
                        </div>    

                        <div class="form-group inside"> <!-- Numero de La Tarjeta -->
                            <label for="numTarjeta" class="control-label">Numero de la tarjeta</label>
                            <input type="text" class="form-control" id="numTarjeta" name="numTarjeta" placeholder="XXXX-XXXX-XXXX-XXXX"/>
                        </div>                    
                            
                        <div class="form-group inside"> <!-- Fecha de Caducidad -->
                            <label for="fecha_Vence" class="control-label">Fecha de Caducidad</label>
                            <input type="text" class="form-control" id="fecha_Vence" name="fecha_Vence" placeholder="01/01/2000"/>
                        </div>    

                        <div class="form-group inside"> <!-- cvv-->
                            <label for="cvv" class="control-label">CVV</label>
                            <input type="text" class="form-control" id="cvv" name="cvv" placeholder="XXX"/>
                        </div>                                    
                             
    
                        <div class="form-group inside" style="text-align:center;"> <!-- Enviar Datos -->
                            <asp:Button ID="Button2" CssClass="btn btn-primary shadow btn-block rounded" runat="server" Text="Comprar" OnClick="Button2_Click" />                        </div>     
                    </div>

                </asp:Panel>


</asp:Content>

