<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="tunay.YonetimPaneli.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Hakkımızda İşlemleri Sayfası</h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="forms-sample" >
                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>              
                    <div class="form-group">
                      <label for="exampleTextarea1">Özet </label>
                      <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Özet"></asp:TextBox>
                      <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div>
                      <div class="form-group">
                      <label for="exampleTextarea1">Detay </label>
                      <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </div>
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                      <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass="btn btn-danger" OnClick="Button2_Click"  />
                      <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
                  </div>
                </div>
              </div>
        </div>
</asp:Content>
