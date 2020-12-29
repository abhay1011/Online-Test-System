<%@ Page Title="" Language="C#" MasterPageFile="~/PagesAdmin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="PagesAdmin_AddQuestions" %>

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
            </div>
            <div>
                <div class="container">
                    <ol>
                        <li>
                            <div class="row">
                                <div class="col-10">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
            <asp:Button ID="Btn_AddQuestion" runat="server" Text="Add" OnClick="Btn_AddQuestion_Click" />
        </div>
    </div>
</asp:Content>

