<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="CreateQuestionPaper.aspx.cs" Inherits="PagesAdmin_CreateQuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeaderPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContentPlaceholder" Runat="Server">
        <div class="card">
            <div class="card-header"><h3>Create Question Paper</h3></div>
            <div class="card-body">
                <div>
                    <asp:Label runat="server" Text="Select Subject"></asp:Label>
                    <asp:DropDownList CssClass="drop-down" ID="QP_DropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [subject] FROM [SubjectData]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="card-footer">
                <asp:Button runat="server" Text="Continue" OnClick="AddQuestions_Click" />
            </div>
        </div>
</asp:Content>

