<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class= "mx-auto" style="width: 65%; height: 70%; padding-top: 6%; padding-bottom: 30px;">
       <div style="text-align:center">
         <h3 class="text-primary">
         REGISTRO  <br /><small class="text-muted" style="padding-top:5px">Ingresa tu información</small>
        </h3>
          
       </div>
       <div class="badge badge-primary text-wrap" style="width: auto; margin:5px; ">
               <h5> Datos personales </h5>
       </div>
       <div class="row" style="padding-top:10px;">

            <div class="col-xs-1 col-sm-6 col-md-6">
                
                <div class="form-group">
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="valNombre" Font-Size="Small" runat="server" ControlToValidate="txtNombre"
                            ErrorMessage="Necesitamos tu nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Introduce un nombre válido" ForeColor="Red" ValidationExpression="[a-zA-Z\s]*" ControlToValidate="txtNombre" Font-Size="Small"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                   
                    <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Apellido"></asp:TextBox>
                    <div>
                        <asp:RequiredFieldValidator ID="valApellido" Font-Size="Small" runat="server" ControlToValidate="txtApellido"
                            ErrorMessage="Necesitamos tu apellido" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Introduce un apellido válido" ForeColor="Red" ValidationExpression="[a-zA-Z\s]*" ControlToValidate="txtApellido" Font-Size="Small"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                    <asp:DropDownList ID="DDL_tipo" CssClass="form-control" runat="server">
                        <asp:ListItem Value="NULL">Tipo de usuario...</asp:ListItem>
                        <asp:ListItem Value="CL">Comprador</asp:ListItem>
                        <asp:ListItem Value="VD">Vendedor</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:RequiredFieldValidator InitialValue="NULL" Font-Size="Small" ID="valDDL" Display="Dynamic"
                        ControlToValidate="DDL_tipo" runat="server" ErrorMessage="Seleccione un tipo de usuario"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                   
                    <asp:TextBox ID="txtDir" runat="server" CssClass="form-control" placeholder="Dirección"></asp:TextBox>
                    <div>
                        
                        <asp:RequiredFieldValidator ID="valDir" Font-Size="Small" runat="server" ControlToValidate="txtDir"
                            ErrorMessage="Introduce tu dirección" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                   
                    <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control" placeHolder=" Correo electrónico: ejemplo@phicky.com"></asp:TextBox>
                    <div>
                        <asp:RegularExpressionValidator ID="valCorreo" Font-Size="Small" runat="server"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtcorreo"
                            ErrorMessage="Necesitamos un correo eléctronico valido" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="valCorreo2" Font-Size="Small" runat="server" ControlToValidate="txtcorreo"
                            ErrorMessage="El correo electrónico es obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                    <asp:TextBox ID="txtConfirmCorreo" runat="server" CssClass="form-control" placeHolder="Confirma el correo electrónico: ejemplo@phicky.com"></asp:TextBox>
                    <div>
                        <asp:CompareValidator ID="valConfirmCorreo" Font-Size="Small" runat="server" ControlToValidate="txtConfirmCorreo"
                        ControlToCompare="txtcorreo" ErrorMessage="Los correos deben ser iguales"
                        ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
            </div>
        </div>
       <div class="badge badge-primary text-wrap" style="width: auto; margin:5px;">
                <h5>Datos de la cuenta</h5>
       </div>
        <div class="form-group" style="padding-top:10px" > 
            <asp:TextBox ID="txtusuario" runat="server" PlaceHolder="Usuario" CssClass="form-control"></asp:TextBox>
            <div>
                <small class="form-text text-muted">Con este nombre accederás a Phicky.com</small>
                <asp:RequiredFieldValidator ID="valUsuario" Font-Size="Small" runat="server" ControlToValidate="txtusuario"
                    ErrorMessage="El usuario es obigatorio" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                    <asp:TextBox ID="txtcontra" runat="server" CssClass="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    <div>
                        <small class="form-text text-muted">Combina caracteres entre letras y números.</small>
                        <asp:RequiredFieldValidator ID="valContra" Font-Size="Small" runat="server" ControlToValidate="txtcontra"
                            ErrorMessage="La contraseña es obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="ValContraseñaLargo" Font-Size="Small" runat="server" ErrorMessage="La contraseña debe tener entre 8 y 15 caracteres." ForeColor="Red" ControlToValidate="txtcontra" ValidationExpression="[a-zA-Z0-9]{8,15}"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 col-sm-6 col-md-6">
                <div class="form-group">
                    
                    <asp:TextBox ID="txtConfirmContraseña" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirma tu contraseña"></asp:TextBox>
                    <div>
                        <asp:CompareValidator ID="valContraIguales" Font-Size="Small" runat="server" ControlToValidate="txtcontra"
                        ControlToCompare="txtConfirmContraseña" ErrorMessage="Las contraseñas deben ser iguales"
                        ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="row" style="text-align:center">
            <div class="col-xs-1 col-sm-6 col-md-6" >
                
                <asp:Button ID="Btn_registrar" runat="server" Text="Registrarse" class="btn btn-primary" OnClick="Btn_registrar_Click"/>
                <asp:Button ID="Btn_cancelar" runat="server" Text="Cancelar" class="btn btn-primary" OnClientClick="cancelar()"/> 
                <script> function cancelar() {
                            window.location = "Sesion.aspx";
                    }
                </script>
                    
                
            </div>
        </div>
   </div>

</asp:Content>

