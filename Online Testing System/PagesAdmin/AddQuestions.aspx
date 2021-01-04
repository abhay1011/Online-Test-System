<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="PagesAdmin_AddQuestions" %>

<asp:Content ID="Content0" ContentPlaceHolderID="AdminHeadTagPlaceholder" runat="Server">
    <style type="text/css">
        input {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeaderPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContentPlaceholder" runat="Server">
    <div class="card">
        <div class="container card-header">
            <div class="row">
                <div class="col-10">
                    <h3>
                        <asp:Label ID="LabelCardHeader" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="col-2">
                    <asp:Label ID="Label_totalQuestions" runat="server" Text=""></asp:Label>
                </div>
            </div>

        </div>
        <div class="card-body">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
                <asp:TextBox ID="TB_Question" placeholder="Enter question here..." runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pleas enter a question!" ControlToValidate="TB_Question" CssClass="auto-style1"></asp:RequiredFieldValidator>
            </div>
            <div>
                <div class="container">
                    <ol>
                        <li>
                            <div class="row p-3">
                                <div class="col-10">
                                    <asp:Label ID="Label2" runat="server" Text="Option 1 :"></asp:Label>
                                    <asp:TextBox ID="TextBox1" placeholder="Enter first choice here..." runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill this option" ControlToValidate="TextBox1" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="RB_Ans" />

                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row p-3">
                                <div class="col-10">
                                    <asp:Label ID="Label3" runat="server" Text="Option 2 :"></asp:Label>
                                    <asp:TextBox ID="TextBox2" placeholder="Enter second choice here..." runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill this option" ControlToValidate="TextBox2" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="RB_Ans" />
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row  p-3">
                                <div class="col-10">
                                    <asp:Label ID="Label4" runat="server" Text="Option 3 :"></asp:Label>
                                    <asp:TextBox ID="TextBox3" placeholder="Enter third choice here..." runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please fill this option" ControlToValidate="TextBox3" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="RB_Ans" />
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row  p-3">
                                <div class="col-10">
                                    <asp:Label ID="Label5" runat="server" Text="Option 4 :"></asp:Label>
                                    <asp:TextBox ID="TextBox4" placeholder="Enter third choice here..." runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please fill this option" ControlToValidate="TextBox4" CssClass="auto-style1"></asp:RequiredFieldValidator>
                                    <br />

                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="RB_Ans" />
                                    <br />
                                </div>
                            </div>
                        </li>
                    </ol>
                    <asp:Label ID="Label_QuestionsAdded" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>




        <div class="card-footer">
            <button type="button" class="btn  btn-primary"  onserverclick="Btn_AddQuestion_Click"  runat="server"
                id="BTN_Logout">
                Add&nbsp;
               <span class="fas fa-plus"></span>
            </button>
        </div>
    </div>
    <div>
        <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="option1" HeaderText="option1" SortExpression="option1" />
                <asp:BoundField DataField="option2" HeaderText="option2" SortExpression="option2" />
                <asp:BoundField DataField="option3" HeaderText="option3" SortExpression="option3" />
                <asp:BoundField DataField="option4" HeaderText="option4" SortExpression="option4" />
                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                <h3 class="auto-style1">No Questions added yet!</h3>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [QuestionPaper] WHERE [Id] = @Id" InsertCommand="INSERT INTO [QuestionPaper] ([Question], [option1], [option2], [option3], [option4], [answer]) VALUES (@Question, @option1, @option2, @option3, @option4, @answer)" UpdateCommand="UPDATE [QuestionPaper] SET [Question] = @Question, [option1] = @option1, [option2] = @option2, [option3] = @option3, [option4] = @option4, [answer] = @answer WHERE [Id] = @Id">
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
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="option1" Type="String" />
                <asp:Parameter Name="option2" Type="String" />
                <asp:Parameter Name="option3" Type="String" />
                <asp:Parameter Name="option4" Type="String" />
                <asp:Parameter Name="answer" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

