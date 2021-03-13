<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="AgregarProducto.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class= "mx-auto" style="width: 65%; height: 70%; padding-top: 6%; padding-bottom: 30px;">
       <div style="text-align:center">
         <h3 class="text-primary">
         VENDER  <br /><small class="text-muted" style="padding-top:5px">Agrega tu producto en este apartado</small>
        </h3>
          
       </div>
       <div class="badge badge-primary text-wrap" style="width: auto; margin:5px; ">
               <h5> Escoge el producto a vender </h5>
       </div>
       <div class="row" style="padding-top:10px;">

            <div class="col-xs-1 col-sm-6 col-md-6">
                
                <div class="form-group">
                    <div>
                        <asp:DropDownList ID="DD_TipoProducto" CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem Value="NULL">Tipo de producto...</asp:ListItem>
                        <asp:ListItem Value="CH">Chasis</asp:ListItem>
                        <asp:ListItem Value="RAM">Ram</asp:ListItem>
                        <asp:ListItem Value="HDD">Disco Duro</asp:ListItem>
                        <asp:ListItem Value="CPU">Procesador</asp:ListItem>
                        <asp:ListItem Value="MOM">MotherBoard</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator InitialValue="NULL" Font-Size="Small" ID="valTipo" Display="Dynamic" ControlToValidate="DD_TipoProducto" runat="server" ErrorMessage="Seleccione un tipo de usuario" ForeColor="Red"></asp:RequiredFieldValidator>                    </div>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <div>
                        <asp:DropDownList ID="DD_ProductoEspecifico" CssClass="form-control" runat="server" DataSourceID="PRODUCTOS" DataTextField="NOMBRE" DataValueField="NOMBRE">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="PRODUCTOS" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [NOMBRE] FROM [PRODUCTO] WHERE ([TIPO] = @TIPO)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DD_TipoProducto" Name="TIPO" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="ValProducto" runat="server" ErrorMessage="Escoja un producto" ControlToValidate="DD_ProductoEspecifico" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    

            
                </div>
            </div>
        </div>
       <div class="badge badge-primary text-wrap" style="width: auto; margin:5px;">
                <h5>Datos del producto</h5>
       </div>
        <div class="form-group" style="padding-top:10px" > 
            <textarea id="txtdescripcion" runat="server" placeholder="Descripción breve de tu producto" class="form-control"></textarea>
            <div>
                <small class="form-text text-muted">Máximo 280 caracteres</small>
                <asp:RegularExpressionValidator ID="ValDescripcion" runat="server" ErrorMessage="Solo se permiten 280 caracteres" Font-Size="Small" ForeColor="Red" ValidationExpression="[a-zA-Z0-9\s]{1,280}" ControlToValidate="txtdescripcion"></asp:RegularExpressionValidator>
            </div>
            <div>
                <asp:RequiredFieldValidator ID="valDescripcion1" runat="server" ErrorMessage="Ingresa una breve descripción" Font-Size="Small" ForeColor="Red" ControlToValidate="txtdescripcion"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                    <asp:DropDownList ID="DD_cantidad" runat="server" CssClass="form-control">
                        <asp:ListItem Value="NULL">Cantidad</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                        <asp:ListItem Value="11">11</asp:ListItem>
                        <asp:ListItem Value="12">12</asp:ListItem>
                        <asp:ListItem Value="13">13</asp:ListItem>
                        <asp:ListItem Value="14">14</asp:ListItem>
                        <asp:ListItem Value="15">15</asp:ListItem>
                        <asp:ListItem Value="16">16</asp:ListItem>
                        <asp:ListItem Value="17">17</asp:ListItem>
                        <asp:ListItem Value="18">18</asp:ListItem>
                        <asp:ListItem Value="19">19</asp:ListItem>
                        <asp:ListItem Value="20">20</asp:ListItem>
                    </asp:DropDownList>
                    
                    <div>
                        <small class="form-text text-muted">Ingresa la cantidad de productos que quieres vender.</small>
                       </div>
                    <div>
                     <asp:RequiredFieldValidator InitialValue="NULL" Font-Size="Small" ID="ValCantidad" Display="Dynamic" ControlToValidate="DD_cantidad" runat="server" ErrorMessage="Seleccione una cantidad" ForeColor="Red"></asp:RequiredFieldValidator>                    
                    </div>
                    </div>
                </div>
            
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                    <asp:TextBox ID="txtprecio" runat="server" CssClass="form-control"  placeholder="Precio"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="valprecio1" runat="server" ErrorMessage="El campo de precio es necesario" Font-Size="Small" ForeColor="Red" ControlToValidate="txtprecio"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Valprecio" runat="server" ErrorMessage="Ingresa un precio correcto" Font-Size="Small" ForeColor="Red" ControlToValidate="txtprecio" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
        </div>
       

        <div class="row">
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    <asp:TextBox ID="txturl" runat="server" CssClass="form-control"  placeholder="Url de la imagen (https://ejemplo.com)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valurl" runat="server" ErrorMessage="Ingresa una url para la imagen " Font-Size="Small" ForeColor="Red" ControlToValidate="txturl"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valurl1" runat="server" ErrorMessage="Ingresa una url válida" Font-Size="Small" ForeColor="Red" ControlToValidate="txturl" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
            
        <div class="row" style="text-align:center">
            <div class="col-xs-1 col-sm-6 col-md-6" >
                
                <asp:Button ID="btn_publicar" runat="server" Text="Publicar" class="btn btn-primary" OnClick="btn_Publicar_Click"/>
                <asp:Button ID="Btn_cancelar" runat="server" Text="Cancelar" class="btn btn-primary" OnClientClick="cancelar()"/> 
                <script> function cancelar() {
                        window.location = "Home.aspx";
                    }
                </script>
                    
                
            </div>
        </div>
   
  </div>

</asp:Content>

