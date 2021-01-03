<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageSubjects.aspx.cs" Inherits="PagesAdmin_ManageSubjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeadTagPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminHeaderPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AdminContentPlaceholder" runat="Server">
    <div class="card">
        <div class="card-body">
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <asp:Label ID="Label1" runat="server" Text="Subject Name:"></asp:Label>
                        <asp:TextBox ID="TB_AddSubject" runat="server" placeholder="Enter subject name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter subject name" ControlToValidate="TB_AddSubject" CssClass="auto-style1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-5">
                        <asp:Label ID="Label2" runat="server" Text="Test Duration"></asp:Label>
                        <asp:TextBox ID="TB_AddDuration" runat="server" TextMode="Number" placeholder="Minutes"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter test duration" ControlToValidate="TB_AddDuration" CssClass="auto-style1"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <button type="button" class="btn  btn-primary" onserverclick="BTN_addSubject_Click" runat="server"
                            id="BTN_Logout">
                            <span class="fas fa-plus"></span>&nbsp;Add
                        </button>
                        <asp:Label ID="Label_Msg" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>


            <div class="justify-content-center">
                <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True" Width="252px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" SortExpression="subject" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
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

