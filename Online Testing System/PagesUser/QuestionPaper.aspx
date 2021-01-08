<%@ Page Title="" Language="C#" MasterPageFile="~/PagesUser/UserMasterPage.master" AutoEventWireup="true" CodeFile="QuestionPaper.aspx.cs" Inherits="PagesUser_QuestionPaper" %>



<asp:Content ID="Content3" ContentPlaceHolderID="UserHeadTagPlaceholder" runat="Server">
    <style>
        .myCard {
            background-color: beige;
            padding: 10px;
            font-weight: bold;
            margin: 20px;
            border-radius: 5px;
        }
        .timerstyle{
            font-weight:bold;
        }

    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="UserHeadPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserPageContentPlaceholder" runat="Server">

    <div class="card align-items-center">
        <div class="myCard">
            <h2>
                <asp:Label ID="Label_QP_Name" runat="server" Text=""></asp:Label>
            </h2>


        </div>
        <div class="card-body">
               <div class="timerstyle">
                Time Left:<div id="countdown" style="margin-left:10px;color:orangered;"></div>
            </div>
            <asp:GridView ID="GridView_Questions" AutoGenerateColumns="false" runat="server" EnableTheming="False" BorderStyle="None">
                <columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="card mt-3">
                                <div class="card-header rounded-1">
                                    <asp:Label ID="Label_Qid" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
                                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                                </div>
                                <div class="card-body container">
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label1" runat="server" Text='<%# "i. "+Eval("option1") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option1" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label2" runat="server" Text='<%#"ii. "+ Eval("option2") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option2" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label3" runat="server" Text='<%#"iii. "+ Eval("option3") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option3" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row m-1">
                                        <div class="col-10">
                                            <asp:Label ID="Label4" runat="server" Text='<%#"iv. "+ Eval("option4") %>'></asp:Label>
                                        </div>
                                        <div class="col-2">
                                            <asp:RadioButton GroupName="a" ID="option4" runat="server" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </columns>
            </asp:GridView>
            <asp:Label ID="Label_Msg" runat="server" Text=""></asp:Label>
            <br />
        </div>
        <div class="pb-3">
            <asp:Button ClientIDMode="Static" CssClass="btn-blue p-2" ID="BTN_QP_Submit" runat="server" Text="Submit" OnClick="BTN_QP_Submit_Click" />
        </div>
    </div>
    <script type="text/javascript">

        var myDuration = "<%= MyProperty %>";
        var min = 0;
        var sec;
        setInterval(runTimer, 1000);
        function runTimer() {
            if (myDuration < 1) {
                var button = document.getElementById('BTN_QP_Submit');
                button.click();
            }
            else {
                min = myDuration / 60;
                sec = myDuration % 60;
                document.getElementById("countdown").innerHTML = Math.floor(min) + " : " + sec;
            }
            myDuration = myDuration - 1;
            if (document.hasFocus()) {

            } else {
                var button = document.getElementById('BTN_QP_Submit');
                button.click();
            }
        }

    </script>
</asp:Content>

