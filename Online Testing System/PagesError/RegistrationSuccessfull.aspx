<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooterMaster.master" AutoEventWireup="true" CodeFile="RegistrationSuccessfull.aspx.cs" Inherits="PagesError_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderPlaceHolder" Runat="Server">
    <h1>Online Test App</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" Runat="Server">
    <h1>Registration Successfull</h1>
    <asp:Button ID="BTN_GoLogin" runat="server" Text="Go Back To Login" OnClick="BTN_GoLogin_Click" />
</asp:Content>

