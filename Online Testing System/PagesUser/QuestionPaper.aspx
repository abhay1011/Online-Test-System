﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PagesUser/UserMasterPage.master" AutoEventWireup="true" CodeFile="QuestionPaper.aspx.cs" Inherits="PagesUser_QuestionPaper" %>



<asp:Content ID="Content3" ContentPlaceHolderID="UserHeadTagPlaceholder" runat="Server">
    <style>

    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="UserHeadPlaceholder" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserPageContentPlaceholder" runat="Server">
    <div class="card align-items-center">
        <div class="card-header">
            <h2>
                <asp:Label ID="Label_QP_Name" runat="server" Text=""></asp:Label>
            </h2>

        </div>
        <div class="card-body">
            <asp:GridView ID="GridView_Questions" AutoGenerateColumns="false" runat="server" EnableTheming="False" BorderStyle="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="card">
                                <div class="card-header rounded-1">
                                    <asp:Label ID="Label_Qid" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
                                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                                </div>
                                <div class="card-body container" >
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("option1") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option1" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("option2") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option2" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("option3") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option3" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("option4") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option4" runat="server" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="Label_Msg" runat="server" Text=""></asp:Label>
            <br />
        </div>
        <div>
            <asp:Button UseSubmitBehavior="false" CssClass="btn-blue p-2" ID="BTN_QP_Submit" runat="server" Text="Submit" OnClick="BTN_QP_Submit_Click" />
        </div>
            <script type="text/javascript">

                function submitForm() {
                    document.forms[0].submit();
                }



    </script>
        <button onclick="submitForm()">Click me</button>
</div>
</asp:Content>

