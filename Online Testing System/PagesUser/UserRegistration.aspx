<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="~/CSS/BootStrap.css" rel="stylesheet" />
    <link href="~/CSS/Colors.css" rel="stylesheet" type="text/css" runat="server" />
    <link href="~/CSS/Default.css" rel="stylesheet" type="text/css" runat="server" />
    <link href="~/CSS/UserMaster.css" rel="stylesheet" type="text/css" runat="server" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&family=Jura:wght@700&family=Russo+One&display=swap" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        .gotoLogin{
            padding:20px;
            font-size:large;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color:orangered;
            font-weight:bold;
        }
        a{
            text-decoration:none;
        }
    </style>
</head>
<body class="">
    <form id="form1" runat="server">
        <div class="container-fluid px-1 px-md-5 px-lg-1  mx-auto">
            <div class="bg-header py-3">
                <div class="row px-3 ">
                    <h1 class="headWhite fontSanSerif">Online Test System</h1>
                    <div class="social-contact ml-4 ml-sm-auto"><span class="fa fa-facebook mr-4 text-sm"></span><span class="fa fa-google-plus mr-4 text-sm"></span><span class="fa fa-linkedin mr-4 text-sm"></span><span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span></div>
                </div>
            </div>
            <div class="card border-0 align-items-center bg-white">
                <div class="card-body bg-light my-3 pictureShadow">
                    <div class="card-title">
                        <h2 class=" fontSanSerif">Online Test Registration</h2>
                        <div class="line"></div>
                    </div>
                    <div class="mb-3">
                        <asp:Label class="" ID="L_Name" runat="server" Text="Full Name"></asp:Label>
                        <asp:TextBox class="" placeholder="Enter your full name" ID="TB_Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ErrorMessage="Please Enter Your Name" CssClass="auto-style1" ControlToValidate="TB_Name"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Label class="" ID="L_RollNo" runat="server" Text="Roll Number"></asp:Label>
                        <asp:TextBox class="" placeholder="Enter your roll number" ID="TB_RollNo" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Roll Number" CssClass="auto-style1" ControlToValidate="TB_RollNo"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Label class="" ID="L_Email" runat="server" Text="Email Address"></asp:Label>
                        <asp:TextBox class="" ID="TB_Email" runat="server" TextMode="Email" placeholder="Enter a valid email address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Email_Validator" runat="server" ErrorMessage="Please Enter Your Email Address" ControlToValidate="TB_Email" CssClass="auto-style1"></asp:RequiredFieldValidator>
                        <br />
                        <strong>
                            <asp:Label ID="User_Exist_Label" runat="server" CssClass="auto-style1" Text=""></asp:Label>
                        </strong>
                    </div>
                    <div class="mb-3 container">
                        <div class="row">
                            <div class="col">
                                <asp:Label class="" ID="L_SelectCourse" runat="server" Text="Select Course"></asp:Label>
                                <asp:DropDownList class="drop-down" ID="CourseDropDown" runat="server">
                                    <asp:ListItem>Select Course</asp:ListItem>
                                    <asp:ListItem>M.C.A</asp:ListItem>
                                    <asp:ListItem>M.Sc</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:Label class="" ID="DD_Semester" runat="server" Text="Select Semester"></asp:Label>
                                <asp:DropDownList class="drop-down" ID="SemesterDropDown" runat="server">
                                    <asp:ListItem>Select Semester</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label class="" ID="L_Password" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox class="" ID="TB_Password" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Password_Validator" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TB_Password" CssClass="auto-style1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <asp:Label class="" ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                        <asp:TextBox class="" ID="TB_ConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Confirm_Password_Required" runat="server" ErrorMessage="Please Confirm Your Password" ClientIDMode="AutoID" ControlToValidate="TB_ConfirmPassword" CssClass="auto-style1"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="Password_Compare" runat="server" ErrorMessage="Password does not match" ControlToCompare="TB_Password" ControlToValidate="TB_ConfirmPassword" CssClass="auto-style1"></asp:CompareValidator>
                        <br />
                    </div>
                    <div class="align-items-center">
                        <asp:Button class="btn btn-blue" ID="BTN_Register" runat="server" Text="Register" OnClick="BTN_Register_Click" />
                    </div>
                </div>
                <div class="gotoLogin">
                    <a href="../Default.aspx">Go Back To Login</a>
                </div>

            </div>
            <div class="bg-header py-3">
                <div class="row px-3">
                    <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2020.</small>
                    <div class="social-contact ml-4 ml-sm-auto"><span class="fa fa-facebook mr-4 text-sm"></span><span class="fa fa-google-plus mr-4 text-sm"></span><span class="fa fa-linkedin mr-4 text-sm"></span><span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span></div>
                </div>
            </div>
        </div>
    </form>
    <script src="~/JavaScript/BootStrap5.js"></script>
</body>
</html>
