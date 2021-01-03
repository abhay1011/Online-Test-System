<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="PagesAdmin_AddQuestions" %>
<asp:Content ID="Content0" ContentPlaceHolderID="AdminHeadTagPlaceholder" runat="Server">
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
                <asp:TextBox ID="TB_Question" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pleas enter a question!" ControlToValidate="TB_Question"></asp:RequiredFieldValidator>
            </div>
            <div>
                <div class="container">
                    <ol>
                        <li>
                            <div class="row">
                                <div class="col-10">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please fill this option" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="RB_Ans" />
                  
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-10">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="RB_Ans" />
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-10">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-2 pt-3">
                                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="RB_Ans" />
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-10">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
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
            <asp:Button ID="Btn_AddQuestion" runat="server" Text="Add" OnClick="Btn_AddQuestion_Click"  />
        </div>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="option1" HeaderText="option1" SortExpression="option1" />
                <asp:BoundField DataField="option2" HeaderText="option2" SortExpression="option2" />
                <asp:BoundField DataField="option3" HeaderText="option3" SortExpression="option3" />
                <asp:BoundField DataField="option4" HeaderText="option4" SortExpression="option4" />
                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
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

