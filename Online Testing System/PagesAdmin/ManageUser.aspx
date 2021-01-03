<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="PagesAdmin_ManageUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminHeaderPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminContentPlaceholder" runat="Server">
    <div class="card">
        <div class="card-header">
            <h3>Manage user</h3>
        </div>
        <div class="card-body">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [UserData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserData] ([Name], [RollNo], [Email], [Course], [Semester], [Password]) VALUES (@Name, @RollNo, @Email, @Course, @Semester, @Password)" SelectCommand="SELECT * FROM [UserData]" UpdateCommand="UPDATE [UserData] SET [Name] = @Name, [RollNo] = @RollNo, [Email] = @Email, [Course] = @Course, [Semester] = @Semester, [Password] = @Password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="RollNo" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Course" Type="String" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="RollNo" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Course" Type="String" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <EditRowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

