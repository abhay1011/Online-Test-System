<%@ Page Title="" Language="C#" MasterPageFile="~/PagesUser/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="PagesUser_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="UserHeadPlaceholder" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="UserPageContentPlaceholder" runat="Server">
    <div class="container-fluid p-3">
        <div class="row">
            <div class="col-5">
                <div class="card border-0">
                    <div class="card-header">
                        <h2>Important Instructions</h2>
                    </div>
                    <div class="card-body">
                        <div class="card-subtitle">1. Select the respective question paper</div>
                           <div class="card-subtitle">1. Select the respective question paper</div>
                           <div class="card-subtitle">1. Select the respective question paper</div>
                           <div class="card-subtitle">1. Select the respective question paper</div>
                    </div>
                </div>
            </div>
            <div class="col-7">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <h2>Select Test Paper
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT DISTINCT subject FROM QuestionPaper"></asp:SqlDataSource>
                            </h2>
                        </div>
                    </div>
                    <div class="card-body">
                        <asp:DropDownList ID="DD_SelectQp" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject">
                        </asp:DropDownList>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="BTN_TestPaperSelect" runat="server" Text="Submit" OnClick="BTN_TestPaperSelect_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

