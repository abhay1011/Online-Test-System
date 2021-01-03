<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="PagesAdmin_AdminPanel" %>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminHeadTagPlaceholder" runat="Server">
    <style>
       .adminPanel li{
            padding:20px;
            margin:10px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-weight:bold;
        }
          .adminPanel li:hover{
              background-color:bisque;
               color:orangered;
               transform: scale(1.05);
          }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeaderPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContentPlaceholder" runat="Server">
    <div class="card coverPic">
        <div class="card-header">
            <h3>System Information</h3>
        </div>
        <div class="card-body">
            <ul class="adminPanel">
                <li style="background-color:bisque;">Total Registerd User : 
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </li>
                <li style="background-color: cadetblue"">Total Active Question Paper :
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </li>
                <li style="background-color:aliceblue">Total Test Submitted :
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>

