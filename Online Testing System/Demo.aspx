<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                    <asp:BoundField DataField="UserRollNo" HeaderText="UserRollNo" SortExpression="UserRollNo" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:BoundField DataField="TotalQuestions" HeaderText="TotalQuestions" SortExpression="TotalQuestions" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [ExamData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ExamData] ([UserName], [UserEmail], [UserRollNo], [Course], [Semester], [TotalQuestions], [Subject]) VALUES (@UserName, @UserEmail, @UserRollNo, @Course, @Semester, @TotalQuestions, @Subject)" SelectCommand="SELECT [UserName], [UserEmail], [UserRollNo], [Course], [Semester], [TotalQuestions], [Subject], [Id] FROM [ExamData]" UpdateCommand="UPDATE [ExamData] SET [UserName] = @UserName, [UserEmail] = @UserEmail, [UserRollNo] = @UserRollNo, [Course] = @Course, [Semester] = @Semester, [TotalQuestions] = @TotalQuestions, [Subject] = @Subject WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserRollNo" Type="String" />
                    <asp:Parameter Name="Course" Type="String" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="TotalQuestions" Type="Int32" />
                    <asp:Parameter Name="Subject" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserRollNo" Type="String" />
                    <asp:Parameter Name="Course" Type="String" />
                    <asp:Parameter Name="Semester" Type="String" />
                    <asp:Parameter Name="TotalQuestions" Type="Int32" />
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
