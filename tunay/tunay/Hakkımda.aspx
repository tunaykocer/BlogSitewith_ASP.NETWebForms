<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Hakkımda.aspx.cs" Inherits="tunay.Hakkımda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Hakkımda</h2>


    <div class="blog-author">
               <div class="media align-items-center">
                   <img src="assets/img/blog/author.png" alt="">
                    <div class="media-body">
                        <a href="#">
                           <h4>Tunay K</h4>
                        </a>
                        <p>Ben dünyaca ünlü yazılımcı Tunay. Bu sitemizde ülkemizdeki ve diğer ülkelerdeki
                            güzel seyehat edilebilecek yerlere yer verdim. Yazı seven insandan kışı seven 
                            insana kadar her mevsime özel arkadaşlarınızla,dostunuzla,ailenizle veya çocuklarınızla
                            gezip tadını çıkartabileceğiniz yerleri web sitemde yer verdim . 
                            Siteyi inceleyip bu güzel yerleri keşfetmek için planlarınızı yapmaya başlayabilirsiniz.
                            İyi keyifler.
                        </p>
                     </div>
                  </div>
               </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="col-lg-8 posts-list">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TunayMeenConnectionString %>" SelectCommand="SELECT * FROM [tblHakkımızda] inner join tblBKategori on tblBKategori.id =tblHakkımızda.KategoriId WHERE (tblHakkımızda.id = @id)"> 
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
       </asp:SqlDataSource>
         <div class="col-lg-8 posts-list">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
 
                        </div>
   
                                  </ItemTemplate>
                        </asp:DataList>
</asp:Content>

