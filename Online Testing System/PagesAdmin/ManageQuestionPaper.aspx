<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageQuestionPaper.aspx.cs" Inherits="PagesAdmin_ManageQuestionPaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeadTagPlaceholder" runat="Server">
    <style type="text/css">
    .auto-style2 {
        color: #CC0000;
    }
    .noBorder{
        border:none;
        border-style:none;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminHeaderPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AdminContentPlaceholder" runat="Server">
    <div>
        <div class="card coverPic noBorder">
            <div class="card-header">
                <h3>Manage Question Paper</h3>
            </div>
            <div class="card-body">
                <div class="p-3">
                    <asp:DropDownList CssClass="drop-down" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject" AutoPostBack="true">
                        <asp:ListItem Selected="True">Select Subject</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT DISTINCT subject FROM QuestionPaper"></asp:SqlDataSource>
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete This Paper" OnClick="DeleteButton_Click" />
                </div>
                <div>
                    <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                            <asp:BoundField DataField="option1" HeaderText="option1" SortExpression="option1" />
                            <asp:BoundField DataField="option2" HeaderText="option2" SortExpression="option2" />
                            <asp:BoundField DataField="option3" HeaderText="option3" SortExpression="option3" />
                            <asp:BoundField DataField="option4" HeaderText="option4" SortExpression="option4" />
                            <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        </Columns>
                        <EmptyDataTemplate>
                            <h3 class="auto-style2"><strong>No Question Paper Exist In the Database</strong></h3>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
             
            </div>
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [QuestionPaper] WHERE [Id] = @Id" InsertCommand="INSERT INTO [QuestionPaper] ([Question], [option1], [option2], [option3], [option4], [answer], [subject]) VALUES (@Question, @option1, @option2, @option3, @option4, @answer, @subject)" SelectCommand="SELECT [Id], [Question], [option1], [option2], [option3], [option4], [answer], [subject] FROM [QuestionPaper] WHERE ([subject] = @subject)" UpdateCommand="UPDATE [QuestionPaper] SET [Question] = @Question, [option1] = @option1, [option2] = @option2, [option3] = @option3, [option4] = @option4, [answer] = @answer, [subject] = @subject WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Question" Type="String" />
                        <asp:Parameter Name="option1" Type="String" />
                        <asp:Parameter Name="option2" Type="String" />
                        <asp:Parameter Name="option3" Type="String" />
                        <asp:Parameter Name="option4" Type="String" />
                        <asp:Parameter Name="answer" Type="Int32" />
                        <asp:Parameter Name="subject" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="none" Name="subject" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Question" Type="String" />
                        <asp:Parameter Name="option1" Type="String" />
                        <asp:Parameter Name="option2" Type="String" />
                        <asp:Parameter Name="option3" Type="String" />
                        <asp:Parameter Name="option4" Type="String" />
                        <asp:Parameter Name="answer" Type="Int32" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>
        </div>
    </div>
</asp:Content>

