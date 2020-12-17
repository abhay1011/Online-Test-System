<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/BootStrap.css" rel="stylesheet" runat="server" />
    <link href="CSS/Default.css" rel="stylesheet" runat="server" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container-fluid px-1 px-md-5 px-lg-1  mx-auto">
            <div class="bg-primary py-3">
                <div class="row px-3">
                    <h1>Online Test System</h1>
                </div>
            </div>
            <div class="card card0 border-0">
                <div class="row d-flex">

                    <div class="col-lg-6">
                        <div class="card1 pb-5">
                            <div class="row">
                                <img src="Asset/onlineTesting.png" class="logo" />
                            </div>
                            <div class="row px-1 justify-content-center mt-1 mb-5 border-line">
                                <img src="Asset/gummy-desktop.svg" class="image" />
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card2 card border-0 px-4 py-5">
                            <h1>System Login</h1>
                            <div class="row px-3 mb-4">

                                <div class="line"></div>
                                <div class="line"></div>
                            </div>
                            <div class="row px-3">
                                <label class="mb-1">
                                    <h6 class="text-sm">Email Address</h6>
                                </label>
                                <asp:TextBox ID="TB_Email" type="email" runat="server" placeholder="Enter a valid email address" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator class="pb-3 m-lg-3" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Email Address" ControlToValidate="TB_Email" CssClass="auto-style1"></asp:RequiredFieldValidator>
                            </div>
                            <div class="row px-3">
                                <label class="mb-1">
                                    <h6 class="mt-3 text-sm">Password</h6>
                                </label>
                                <asp:TextBox ID="TB_Password" type="email" runat="server" class="userEmail" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator class="mb-3" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Password" ControlToValidate="TB_Password" CssClass="auto-style1"></asp:RequiredFieldValidator>
                            </div>

                            <div class="row mb-3 px-3 my-3">
                                <asp:Button ID="Button1" runat="server" class="btn btn-blue text-center" Text="Login" />
                            </div>
                            <div class="row mb-4 px-3"><small class="font-weight-bold">Don't have an account? <a class="text-danger " href="UserRegistration.aspx">Register</a></small> </div>
                        </div>
                    </div>
                </div>
                <div class="bg-primary py-3">
                    <div class="row px-3">
                        <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2020.</small>
                        <div class="social-contact ml-4 ml-sm-auto"><span class="fa fa-facebook mr-4 text-sm"></span><span class="fa fa-google-plus mr-4 text-sm"></span><span class="fa fa-linkedin mr-4 text-sm"></span><span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="JavaScript/BootStrap5.js"></script>
</body>
</html>
