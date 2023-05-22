<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Resim.aspx.cs" Inherits="tunay.Resim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Resim</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="section-top-border">
				<h3>Image Gallery</h3>
				<div class="row gallery-item">
					<div class="col-md-4">
						<a href="assets/img/elements/g1.jpg" class="img-pop-up">
							<div class="single-gallery-image" style="background: url(assets/img/elements/g1.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="assets/img/elements/g2.jpg" class="img-pop-up">
							<div class="single-gallery-image" style="background: url(assets/img/elements/g2.jpg);"></div>
						</a>
					</div>
					<div class="col-md-4">
						<a href="assets/img/elements/g3.jpg" class="img-pop-up">
							<div class="single-gallery-image" style="background: url(assets/img/elements/g3.jpg);"></div>
						</a>
					</div>
					
				</div>
			</div>
</asp:Content>
