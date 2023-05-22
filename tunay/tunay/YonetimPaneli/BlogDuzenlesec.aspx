<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenlesec.aspx.cs" Inherits="tunay.YonetimPaneli.BlogDuzenlesec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog  Düzenleme Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <form class="forms-sample" runat="server">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TunayMeenConnectionString %>" SelectCommand="SELECT * FROM [tblBKategori]"></asp:SqlDataSource>
                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Özet</label>
                      <asp:TextBox ID="txtOzet" runat="server" CssClass="form-control" placeholder="Blog Ozet"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Kategori</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="id"></asp:DropDownList>
                    </div>
                    
                    <div class="form-group">
                      <label>Blog Resim</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                    </div>
                     <div class="form-group">
                         <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                     </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Blog Detay </label>
                      <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                      <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div>
                       <asp:Button ID="Button3" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary me-2" OnClick="Button3_Click" />
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click" />

                     

                  </form>
                </div>
              </div>
        </div>
</asp:Content>
