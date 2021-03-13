<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="Filtrado.aspx.cs" Inherits="MasterPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center;padding-bottom:5%;padding-top:8%;">
         <h3 class="text-primary">
         COMPRAR PARTES <br /><small class="text-muted" style="padding-top:5px">Selecione un elemento</small>
        </h3>
          

        </div>
    <div class="mx-auto" style="text-align:center;padding-left:25%;">
    <asp:DataList ID="Stock" runat="server" DataSourceID="DataList" OnItemCommand="Stock_ItemCommand" RepeatColumns="4">
        <ItemTemplate>
                    <div class="card" style="width: 200px">
                      <img class="card-img-top" src="<%# Eval("URL") %>" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title"><%# Eval("NOMBRE_STOCK") %>
                            <asp:Label ID="IDSTOCK" runat="server" Text='<%# Eval("ID_STOCK") %>' Font-Size="0"></asp:Label>
                          </h5>
                        <p class="card-text">$<%# Eval("PRECIO") %>COP</p>
                        <asp:Button ID="btn_Sel_compra" runat="server" Text="Comprar" CssClass="btn btn-primary" CommandName="comprar" />
                      </div>
                    </div>

                </ItemTemplate>
    </asp:DataList>
      
    <asp:SqlDataSource ID="DataList" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK]"></asp:SqlDataSource>
</div>
</asp:Content>

