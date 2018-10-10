<%@ Page Title="MusicShop: Online Store Demo" Language="C#" MasterPageFile="~/MusicShop.master" %>

<%@ Register src="UserControls/ProductsList.ascx" tagname="ProductsList" tagprefix="uc1" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    <span class="CatalogTitle">Добре дошли в MusicShop!</span>
  </h1>
  <h2>
    <span class="CatalogDescription"> </span>
  </h2>
  &nbsp;<uc1:ProductsList ID="ProductsList1" runat="server" />

</asp:Content>

