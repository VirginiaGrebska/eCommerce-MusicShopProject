<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoriesList.ascx.cs" Inherits="UserControl_CategoriesList" %>
<asp:DataList ID="list" runat="server" Width="200px" CssClass="CategoriesList">
    <AlternatingItemStyle CssClass="CategoriesList" Width="200px" />
    <EditItemStyle CssClass="CategoriesList" Width="200px" />
    <FooterStyle CssClass="CategoriesList" Width="200px" />
    <HeaderStyle CssClass="CategoriesListHead" Width="200px" />
    <HeaderTemplate>
        Изберете жанр<br />
    </HeaderTemplate>
    <ItemStyle CssClass="CategoriesList" Width="200px" />
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%# Link.ToCategory(Request.QueryString["DepartmentID"],Eval("CategoryID").ToString()) %>'
             Text='<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>' ToolTip='<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>'
             CssClass='<%# Eval("CategoryID").ToString() == Request.QueryString["CategoryID"] ? "CategorySelected" : "CategoryUnselected" %>'>></asp:HyperLink>
    </ItemTemplate>
    <SelectedItemStyle CssClass="CategoriesList" Width="200px" />
    <SeparatorStyle CssClass="CategoriesList" Width="200px" />
</asp:DataList>

