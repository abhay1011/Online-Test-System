<%@ Page Title="" Language="C#" MasterPageFile="~/PagesUser/UserMasterPage.master" AutoEventWireup="true" CodeFile="RegistrationSuccessful.aspx.cs" Inherits="PagesUser_ResposeSubmitted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserHeadTagPlaceholder" Runat="Server">
<style>
    .coverPic{
        text-align:center;
    }
    .headStyle{
        margin:30px;
        font-size:30px;
        font-weight:bold;
        color:indigo;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserHeadPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UserPageContentPlaceholder" Runat="Server">
    <div class="card coverPic">
        <div class="card-body">
            <div class="headStyle">Registration Successful!</div>
            <div>
                <asp:Button CssClass="btn btn-blue" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>

