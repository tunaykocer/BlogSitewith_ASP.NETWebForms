<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="tunay.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Bize Ulaşın</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="contact-section">
            <div class="container">
                <div class="d-none d-sm-block mb-5 pb-4">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d192740.71574261962!2d28.961746772715035!3d40.990815088611775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab728fc42dd33%3A0x17d213078fb809f4!2zTmnFn2FudGHFn8SxIMOcbml2ZXJzaXRlc2k!5e0!3m2!1str!2str!4v1679310369091!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                    <div class="col-12">
                        <h2 class="contact-title">İletinizi girin</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" runat="server" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtMesaj" Height="100px" TextMode="MultiLine" CssClass="form-control w-100" placeholder="Mesaj" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtAdSoyad" CssClass="form-control valid" placeholder="Adınızı giriniz" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtEmail" CssClass="form-control valid" placeholder="Email" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtKonuGir" CssClass="form-control valid" placeholder="KonuGir" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <asp:Button ID="Button1" runat="server" CssClass="button button-contactForm boxed-btn" Text="Gönder" />
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>İstanbul,Nisantasi.</h3>
                                <p>MASLAK 1453</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>0216 000 0000</h3>
                                <p>08.00-18.00 arası müsait</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>destek@tunaymeen.com</h3>
                                <p>İsteğinizi lütfen bana iletin</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
