<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageSubjects.aspx.cs" Inherits="PagesAdmin_ManageSubjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeadTagPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminHeaderPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AdminContentPlaceholder" runat="Server">
    <div class="card coverPic">
        <div class=" card-header"><h3>Manage Subjects</h3></div>
        <div class="card-body ">
            <div class="containe pb-3">
                <div class="row">
                    <div class="col-5">
                        <asp:Label ID="Label1" runat="server" Text="Subject Name:"></asp:Label>
                        <asp:TextBox ID="TB_AddSubject" runat="server" placeholder="Enter subject name"></asp:TextBox>
                        <br/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter subject name" ControlToValidate="TB_AddSubject" CssClass="auto-style1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="Label2" runat="server" Text="Test Duration"></asp:Label>
                        <asp:TextBox ID="TB_AddDuration" runat="server" TextMode="Number" placeholder="Minutes"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter test duration" ControlToValidate="TB_AddDuration" CssClass="auto-style1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-2">
                        <button type="button" class="btn  btn-primary" onserverclick="BTN_addSubject_Click" runat="server"
                            id="BTN_Logout">Add&nbsp;
                            <span class="fas fa-plus"></span>
                        </button>
                       
                    </div>
                     <asp:Label ID="Label_Msg" runat="server" Text=""></asp:Label>
                </div>
            </div>


            <div class="justify-content-center align-items-center">
                <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="subject" DataSourceID="SqlDataSource1" Width="252px">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
            
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" SortExpression="subject" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [SubjectData] WHERE [subject] = @subject" InsertCommand="INSERT INTO [SubjectData] ([subject], [Duration]) VALUES (@subject, @Duration)" SelectCommand="SELECT [Id], [subject], [Duration] FROM [SubjectData]" UpdateCommand="UPDATE [SubjectData] SET [Id] = @Id, [Duration] = @Duration WHERE [subject] = @subject">
                    <DeleteParameters>
                        <asp:Parameter Name="subject" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="Duration" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="Duration" Type="Int32" />
                        <asp:Parameter Name="subject" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>

        </div>
    </div>

</asp:Content>

