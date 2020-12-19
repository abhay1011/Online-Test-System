<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooterMaster.master" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderPlaceHolder" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>Online Test System</h1>
            </div>
            <div class="col">
                <asp:Label ID="Email_Label" runat="server" Text=""></asp:Label>
            </div>
            <div class="col">
                <asp:Button ID="BTN_Logout" runat="server" Text="Logout" OnClick="BTN_Logout_Click" />
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="Server">
    Hellow
</asp:Content>

