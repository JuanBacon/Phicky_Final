<%@ Page Title="" Language="C#" MasterPageFile="Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="MasterPage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <style>
    </style>

    <div>
        <div id="myCarousel" class="carousel slide" data-ride="carousel"  >
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" style=" width: 100%; height: 280px;">
                <div class="carousel-item active">
                    <asp:Image ID="Image1" src="../Img/Banner-01.png" runat="server" style="width: 100%; height: 280px;"  />
                </div>

                <div class="carousel-item">
                    <asp:Image ID="Image2" src="../Img/Banner-02.png" runat="server" style="width: 100%;"  />
                </div>

                <div class="carousel-item">
                    <asp:Image ID="Image3" src="../Img/Banner-03.png" runat="server" style="width: 100%;"  />
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

     <!-- NavBar -->
    <div style="align-items: center; padding-left:20%; padding-right:20%">
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ADB4BA; margin: 20px; border-radius: 20px 20px 20px 20px; ">
                    <ul class="navbar-nav" style="margin-left: 8%;">
                        <li class="nav-item">
                            <a class="nav-link" href="#"><asp:Button ID="Fil_CH" class="btn btn-primary-outline" runat="server" Text="Chasis" OnClick="Fil_CH_Click" /></a>
                        </li>
                        <li class="nav-item" style="margin-left: 16%;">
                            <a class="nav-link" href="#"><asp:Button ID="Fil_RAM" class="btn btn-primary-outline" runat="server" Text="Ram" OnClick="Fil_RAM_Click" /></a>
                        </li>
                        <li class="nav-item" style="margin-left: 16%;">
                            <a class="nav-link" href="#"><asp:Button ID="Fil_CPU" class="btn btn-primary-outline" runat="server" Text="Procesador" OnClick="Fil_CPU_Click" /></a>
                        </li>
                        <li class="nav-item" style="margin-left: 16%;">
                            <a class="nav-link" href="#"><asp:Button ID="Fil_HDD" class="btn btn-primary-outline" runat="server" Text="Hdd" OnClick="Fil_HDD_Click" /></a>
                        </li>
                        <li class="nav-item" style="margin-left: 16%;">
                            <a class="nav-link" href="#"><asp:Button ID="Fil_MOM" class="btn btn-primary-outline" runat="server" Text="MotherBoard" OnClick="Fil_MOM_Click" /></a>
                        </li>                       
                    </ul>
            </nav>
        </div>
    <!--<nav> tag end-->
    <!--Inverted Navbar End Here--> <!---->
    <!--Contents Start Here--> 
    <div class="container">
         <asp:DataList ID="StockHome" runat="server" OnItemCommand="Stock_ItemCommand" RepeatColumns="4" DataSourceID="DatalistStock" >
        <ItemTemplate>
                    <div class="card" style="width: 18rem;">
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
      
    <asp:SqlDataSource ID="DataListStock" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK]"></asp:SqlDataSource>
        
    
         <asp:DataList ID="Ch_Stock" runat="server" OnItemCommand="Ch_Stock_ItemCommand" RepeatColumns="4" DataSourceID="Ch_fill" >
        <ItemTemplate>
                    <div class="card" style="width: 18rem;">
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
    <asp:SqlDataSource ID="Ch_fill" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK] WHERE IDPRODUCTO ='81169058-67B7-4326-83F9-09E25E59A9AA' OR IDPRODUCTO= 'EE0362F6-B961-4089-8DB3-3A87A3A970F7' OR IDPRODUCTO= '8D556E8B-A290-4A7E-819C-B995BF943786'"></asp:SqlDataSource>
            <asp:DataList ID="Ram_Stock" runat="server" OnItemCommand="Ram_Stock_ItemCommand" RepeatColumns="4" DataSourceID="ram_fill" >
        <ItemTemplate>
                    <div class="card" style="width: 18rem;">
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
    <asp:SqlDataSource ID="ram_fill" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK] WHERE IDPRODUCTO ='25824908-8095-4244-98B1-3667F1B1BAAD' OR IDPRODUCTO= '24A7CD1F-0B85-46D6-B372-E6ACD575AC8A' OR IDPRODUCTO= '94432073-E69B-4E55-87E3-9039B3E3D127'"></asp:SqlDataSource>
             <asp:DataList ID="Cpu_Stock" runat="server" OnItemCommand="Cpu_Stock_ItemCommand" RepeatColumns="4" DataSourceID="cpu_fill" >
        <ItemTemplate>
                    <div class="card" style="width: 18rem;">
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
    <asp:SqlDataSource ID="cpu_fill" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK] WHERE IDPRODUCTO ='7D89B589-86FC-4ED0-AB3C-3E1722F451BB' OR IDPRODUCTO= '9869EFCD-155D-4C2A-B9B9-D57C13A766FA' OR IDPRODUCTO= '0C1846C2-68D0-4D4E-982E-799DB6D14B75'"></asp:SqlDataSource>
    
             <asp:DataList ID="HDD_Stock" runat="server" OnItemCommand="HDD_Strock_ItemCommand" RepeatColumns="4" DataSourceID="HDD_fill" >
        <ItemTemplate>
                    <div class="card" style="width: 18rem;">
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
    <asp:SqlDataSource ID="HDD_fill" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK] WHERE IDPRODUCTO ='08E524B2-AF67-4ABC-8A43-5F4F5A87B826' OR IDPRODUCTO= '2D4D0950-9D6B-4910-9BAF-858A90C85A60' OR IDPRODUCTO= '89E44BA4-A9CD-40F4-9037-E3F9FD02DC74'"></asp:SqlDataSource>
         <asp:DataList ID="MOM_Stock" runat="server" RepeatColumns="4" DataSourceID="MOM_fill" >
        <ItemTemplate>
                    <div class="card" style="width: 18rem;">
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
    <asp:SqlDataSource ID="MOM_fill" runat="server" ConnectionString="<%$ ConnectionStrings:Conexion %>" ProviderName="<%$ ConnectionStrings:Conexion.ProviderName %>" SelectCommand="SELECT [PRECIO], [URL], [NOMBRE_STOCK], [ID_STOCK] FROM [STOCK] WHERE IDPRODUCTO ='B6067BA0-680F-4313-A483-139907F201B7' OR IDPRODUCTO= '2EDAB5D9-4EBA-4519-8864-3A6BF5F504F4' OR IDPRODUCTO= '0F25DD0A-BA38-4614-B43E-667D21D98AE0'"></asp:SqlDataSource>
     
    </div>
</asp:Content>

