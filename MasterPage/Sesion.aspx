<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="Sesion.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mx-auto" style="width: 50%;padding:175px">
        

            <div style="text-align:center;padding-bottom:60px;">
         <h3 class="text-primary">
         INICIAR SESIÓN <br /><small class="text-muted" style="padding-top:5px">Ingresa tus datos</small>
        </h3>
          

        </div>
        <div class="row">

                    <asp:TextBox ID="txt_usuario" runat="server" CssClass="form-control" placeholder="Usuario"></asp:TextBox>

        </div>
        <div class="row">

                        <asp:RequiredFieldValidator ID="valusuario" Font-Size="Small" runat="server" ControlToValidate="txt_usuario"
                            ErrorMessage="Ingresa tu usuario" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="row">

                    <asp:TextBox ID="txt_contraseña" runat="server" CssClass="form-control" placeholder="Contraseña" TextMode="Password"></asp:TextBox>

        </div>
         <div class="row">

                        <asp:RequiredFieldValidator ID="valcontraseña" Font-Size="Small" runat="server" ControlToValidate="txt_contraseña"
                            ErrorMessage="Ingresa tu contraseña" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="row">
            <small class="text-muted" style="padding-top:5px">¿No tienes una cuenta?</small>
            <asp:HyperLink ID="Link_registro" runat="server" NavigateUrl="~/MasterPage/Registro.aspx" class="text-primary">¡Registrate!</asp:HyperLink>
        </div>
        <div class="row">
            
            <asp:Label ID="lbl_error" runat="server" ForeColor="Red" Text=""></asp:Label>
        </div>
        <div class="row" style="margin:auto;padding-top:40px;">
            
            
            <div class="mx-auto">
            <asp:Button ID="btn_ingresar" runat="server" Text="Ingresar" class="btn btn-primary" style="margin:auto;" OnClick="btn_ingresar_Click"/>
            <asp:Button ID="Btn_cancelar" runat="server" Text="Cancelar" class="btn btn-primary" style="margin: auto;" OnClientClick="cancelar()"/> 
                <script> function cancelar() {
                            window.location = "Home.aspx";
                    }
                </script>
                
            </div>
        </div>
    </div>
    
</asp:Content>

