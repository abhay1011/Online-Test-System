﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="ShowTestResult.aspx.cs" Inherits="PagesAdmin_ShowTestResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHeaderPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminContentPlaceholder" Runat="Server">
    <div>
        <asp:GridView runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                <asp:BoundField DataField="UserRollNo" HeaderText="UserRollNo" SortExpression="UserRollNo" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="TotalQuestions" HeaderText="TotalQuestions" SortExpression="TotalQuestions" />
                <asp:BoundField DataField="RightQuestions" HeaderText="RightQuestions" SortExpression="RightQuestions" />
                <asp:BoundField DataField="WrongQuestions" HeaderText="WrongQuestions" SortExpression="WrongQuestions" />
                <asp:BoundField DataField="UnattemptedQuestions" HeaderText="UnattemptedQuestions" SortExpression="UnattemptedQuestions" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [ExamData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ExamData] ([UserName], [UserEmail], [UserRollNo], [Course], [Semester], [Subject], [TotalQuestions], [RightQuestions], [WrongQuestions], [UnattemptedQuestions]) VALUES (@UserName, @UserEmail, @UserRollNo, @Course, @Semester, @Subject, @TotalQuestions, @RightQuestions, @WrongQuestions, @UnattemptedQuestions)" SelectCommand="SELECT [UserName], [UserEmail], [UserRollNo], [Course], [Semester], [Subject], [TotalQuestions], [RightQuestions], [WrongQuestions], [UnattemptedQuestions], [Id] FROM [ExamData]" UpdateCommand="UPDATE [ExamData] SET [UserName] = @UserName, [UserEmail] = @UserEmail, [UserRollNo] = @UserRollNo, [Course] = @Course, [Semester] = @Semester, [Subject] = @Subject, [TotalQuestions] = @TotalQuestions, [RightQuestions] = @RightQuestions, [WrongQuestions] = @WrongQuestions, [UnattemptedQuestions] = @UnattemptedQuestions WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserEmail" Type="String" />
                <asp:Parameter Name="UserRollNo" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="Semester" Type="String" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="TotalQuestions" Type="Int32" />
                <asp:Parameter Name="RightQuestions" Type="Int32" />
                <asp:Parameter Name="WrongQuestions" Type="Int32" />
                <asp:Parameter Name="UnattemptedQuestions" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserEmail" Type="String" />
                <asp:Parameter Name="UserRollNo" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="Semester" Type="String" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="TotalQuestions" Type="Int32" />
                <asp:Parameter Name="RightQuestions" Type="Int32" />
                <asp:Parameter Name="WrongQuestions" Type="Int32" />
                <asp:Parameter Name="UnattemptedQuestions" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
