<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="tunay.YonetimPaneli.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni Tur Paketi Ekleme Sayfası.</h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Tur Adı</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Tur Fiyat</label>
                      <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Tur Fiyat"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Tur Süresi</label>
                      <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleSelectGender">Konum</label>
                      <asp:TextBox ID="txtKonum" runat="server" CssClass="form-control" placeholder="Konum"></asp:TextBox>
                      </div>
                    <div class="form-group">
                      <label>Tur Resim</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                         <asp:Button ID="Button2" runat="server" Text="Resim Yükle" onClick="Button2_Click1"/>
                        <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleTextarea1">Tur Detay </label>
                      <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click1"/>
                  </div>
                </div>
              </div>
        </div>
</asp:Content>
