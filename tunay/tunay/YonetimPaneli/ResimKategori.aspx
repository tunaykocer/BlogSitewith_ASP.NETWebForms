<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="ResimKategori.aspx.cs" Inherits="tunay.YonetimPaneli.ResimKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h3 class="page-title">Resim Kategori İşlemleri Sayfası</h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" >
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>                    
                      <asp:Button ID="Button1" runat="server" Text="Kategori Ekle" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click"/>
                      </div>
                </div>
              </div>
        </div>
</asp:Content>
