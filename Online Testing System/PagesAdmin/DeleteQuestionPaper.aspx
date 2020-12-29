<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="DeleteQuestionPaper.aspx.cs" Inherits="PagesAdmin_DeleteQuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeaderPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContentPlaceholder" Runat="Server">
    <div class="card">
        <div class="card-body">
            <div class="card-header">Delete Question Paper</div>
            <div class="card-body">
                <div class="card-title">Choose Question Paper</div>
                <asp:DropDownList ID="DeleteDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT distinct [subject] FROM [QuestionPaper]"></asp:SqlDataSource>
                <h4>
                <asp:Label ID="Label_QeustionDeleted" runat="server" Text="" CssClass="auto-style1"></asp:Label>
                </h4>

            </div>
            <div class="card-footer">
                <asp:Button ID="BTN_Delete" runat="server" Text="Delete" OnClick="BTN_Delete_Click" />
            </div> 
        </div>
    </div>
</asp:Content>

