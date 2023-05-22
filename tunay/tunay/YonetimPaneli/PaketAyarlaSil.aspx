<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PaketAyarlaSil.aspx.cs" Inherits="tunay.YonetimPaneli.PaketAyarlaSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 class="page-title"> Tur Paketi Ekle/Sil Sayfası.</h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TunayMeenConnectionString %>" DeleteCommand="DELETE FROM [tblPaket] WHERE [id] = @id" InsertCommand="INSERT INTO [tblPaket] ([Adi], [Fiyat], [sure], [Lokasyon], [Resim], [Detay]) VALUES (@Adi, @Fiyat, @sure, @Lokasyon, @Resim, @Detay)" SelectCommand="SELECT * FROM [tblPaket]" UpdateCommand="UPDATE [tblPaket] SET [Adi] = @Adi, [Fiyat] = @Fiyat, [sure] = @sure, [Lokasyon] = @Lokasyon, [Resim] = @Resim, [Detay] = @Detay WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Adi" Type="String" />
            <asp:Parameter Name="Fiyat" Type="Int32" />
            <asp:Parameter Name="sure" Type="Int32" />
            <asp:Parameter Name="Lokasyon" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Detay" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Adi" Type="String" />
            <asp:Parameter Name="Fiyat" Type="Int32" />
            <asp:Parameter Name="sure" Type="Int32" />
            <asp:Parameter Name="Lokasyon" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Detay" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
            <asp:BoundField DataField="sure" HeaderText="sure" SortExpression="sure" />
            <asp:BoundField DataField="Lokasyon" HeaderText="Lokasyon" SortExpression="Lokasyon" />
            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
            <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
