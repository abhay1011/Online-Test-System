<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooterMaster.master" AutoEventWireup="true" CodeFile="Accessdenied.aspx.cs" Inherits="PagesError_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderPlaceHolder" Runat="Server">
    <h1>Online Test System</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" Runat="Server">
    <h2 class="bg-danger">Access Denied!</h2>
    <asp:Button ID="BTN_Login" runat="server" Text="Login" OnClick="BTN_Login_Click" />
</asp:Content>

