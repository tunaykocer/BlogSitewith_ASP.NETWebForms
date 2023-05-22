<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="ResimEkleSil.aspx.cs" Inherits="tunay.YonetimPaneli.ResimEkleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h3 class="page-title">Resim İşlemleri Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  
                  <div class="forms-sample" >
                    
                      <h3>Resim Yükleme Yeri</h3>
                       <div class="form-group">
                      <label for="exampleInputName1">Resim Adı</label>
                           <asp:TextBox ID="txtResimAd" CssClass="form-control" runat="server" placeholder="Resim Adı"></asp:TextBox>
                    </div> 
                       <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>
                           <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div> 
                       <div class="form-group">
                      <label>Galeri Resim</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click"/>
                    </div>
                      <div class="form-group">
                          <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                      </div>
                       <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click"/>
                    </div>
                  </div>
                </div>
              </div>
        </div>
</asp:Content>
