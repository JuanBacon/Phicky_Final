<%@ Page Title="" Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" CodeFile="Armar.aspx.cs" Inherits="Phicky_Final_MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 10px;">
        <div class="mx-auto" style="width: 65%; height: 70%; padding-top: 9%; padding-bottom: 9%;">
            <div style="text-align: center">
                <h3 class="text-primary">Arma tu PC 
                    <br />
                    <small class="text-muted" style="padding-top: 5px">Selecciona el componente que necesitas</small>
                </h3>
            </div>

            <div class="row" style="margin-top: 10px;">
                <div class="col badge badge-primary text-wrap" style="width: auto; margin: 5px;">
                    <h5>Chasis</h5>
                </div>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col">
                    <asp:Image ID="Image1" src="../Img/Chasis.png" runat="server" style="height: 120px; width: 120px; margin-left:20%; margin-top:4%" />
                </div>

                <div class="col">
                    <div class="row">
                        <h5>Selecciona una opción:</h5>
                        <asp:DropDownList ID="DD_chasis" CssClass="form-control" runat="server" DataSourceID="Chasis" DataTextField="NOMBRE" DataValueField="NOMBRE">
                            <asp:ListItem Value="NULL"> </asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Chasis" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT NOMBRE FROM PRODUCTO WHERE TIPO = 'CH'"></asp:SqlDataSource>
                    </div>
                    <div class="row">
                        <p style="font-size: 11px">
                            Las carcasas, torres, gabinetes, cajas o chasis de computadora u 
                            ordenador, son el armazón del equipo que contiene los componentes del computador, 
                            normalmente construidos de acero, plástico o aluminio.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col badge badge-primary text-wrap" style="width: auto; margin: 5px;">
                    <h5>CPU</h5>
                </div>
            </div>

            <div class="row" style="margin-top: 20px;">
                <div class="col">
                    <asp:Image ID="Image2" src="../Img/cpu.png" runat="server" style="height: 120px; width: 120px; margin-left:20%; margin-top:4%" />
                </div>

                <div class="col">
                    <div class="row">
                        <h5>Selecciona una opción:</h5>
                        <asp:DropDownList ID="DD_CPU" CssClass="form-control" runat="server" DataSourceID="CPU" DataTextField="NOMBRE" DataValueField="NOMBRE">
                            <asp:ListItem Value="NULL"> </asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="CPU" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT NOMBRE FROM PRODUCTO WHERE TIPO = 'CPU'
"></asp:SqlDataSource>
                    </div>
                    <div class="row">
                        <p style="font-size: 11px">
                            La unidad central de procesamiento o unidad de procesamiento central 
                            (Central Processing Unit), es el hardware dentro de un ordenador 
                            u otros dispositivos programables, que interpreta las instrucciones de un 
                            programa informático mediante la realización de las operaciones básicas aritméticas, 
                            lógicas y de entrada/salida del sistema.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 10px;">
                <div class="col badge badge-primary text-wrap" style="width: auto; margin: 5px;">
                    <h5>Disco Duro</h5>
                </div>
            </div>
            <div class="row" style="margin-top: 20px;">
                <div class="col">
                    <asp:Image ID="Image3" src="../Img/disco-duro.png" runat="server" style="height: 120px; width: 120px; margin-left:20%; margin-top:4%" />
                </div>

                <div class="col">
                    <div class="row">
                        <h5>Selecciona una opción:</h5>
                        <asp:DropDownList ID="DD_HDD" CssClass="form-control" runat="server" DataSourceID="HDD" DataTextField="NOMBRE" DataValueField="NOMBRE">
                            <asp:ListItem Value="NULL"> </asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="HDD" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT NOMBRE FROM PRODUCTO WHERE TIPO = 'HDD'
"></asp:SqlDataSource>
                    </div>
                    <div class="row">
                        <p style="font-size: 11px">
                            la unidad de disco duro o unidad de disco rígido es el dispositivo de 
                            almacenamiento de datos que emplea un sistema de 
                            grabación magnética para almacenar archivos digitales.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 10px;">
                <div class="col badge badge-primary text-wrap" style="width: auto; margin: 5px;">
                    <h5>Tarjeta Madre</h5>
                </div>
            </div>

            <div class="row" style="margin-top: 20px;">
                <div class="col">
                    <asp:Image ID="Image4" src="../Img/placa-madre.png" runat="server" style="height: 120px; width: 120px; margin-left:20%; margin-top:4%" />
                </div>

                <div class="col">
                    <div class="row">
                        <h5>Selecciona una opción:</h5>
                        <asp:DropDownList ID="DD_MOM" CssClass="form-control" runat="server" DataSourceID="MOM" DataTextField="NOMBRE" DataValueField="NOMBRE">
                            <asp:ListItem Value="NULL"> </asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="MOM" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT NOMBRE FROM PRODUCTO WHERE TIPO = 'MOM'"></asp:SqlDataSource>
                    </div>
                    <div class="row">
                        <p style="font-size: 11px">
                            La memoria de acceso aleatorio se utiliza como memoria de trabajo de 
                            computadoras y otros dispositivos para el sistema operativo, 
                            los programas y la mayor parte del software
                        </p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 10px;">
                <div class="col badge badge-primary text-wrap" style="width: auto; margin: 5px;">
                    <h5>Memoria RAM</h5>
                </div>
            </div>
            <div class="row" style="margin-top: 20px;">
                <div class="col">
                    <asp:Image ID="Image5" src="../Img/Ram.png" runat="server" style="height: 120px; width: 120px; margin-left:20%; margin-top:4%" />
                </div>

                <div class="col">
                    <div class="row">
                        <h5>Selecciona una opción</h5>
                        <asp:DropDownList ID="DD_RAM" CssClass="form-control" runat="server" DataSourceID="RAM" DataTextField="NOMBRE" DataValueField="NOMBRE">
                            <asp:ListItem Value="NULL"> </asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="RAM" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT NOMBRE FROM PRODUCTO WHERE TIPO = 'RAM'"></asp:SqlDataSource>
                    </div>
                    <div class="row">
                        <p style="font-size: 12px">
                            La memoria de acceso aleatorio se utiliza como memoria de trabajo de 
                            computadoras y otros dispositivos para el sistema operativo, 
                            los programas y la mayor parte del software
                        </p>
                    </div>
                </div>
            </div>
            <div class="row" style="padding-left:75%">
            <div class="col">
                <asp:Button ID="Btn_registrar" runat="server" Text="Armar" class="btn btn-primary"/>
            </div>
        </div>
        </div>
        
    </div>
</asp:Content>