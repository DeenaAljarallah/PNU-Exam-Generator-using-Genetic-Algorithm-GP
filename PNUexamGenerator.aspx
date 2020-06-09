<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PNUexamGenerator.aspx.cs" Inherits="PNUExamGenerator.Sources.images.PNUexamGenerator" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>welcome to PNU exam generator</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="Sources/styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="Sources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="Sources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="Sources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="Sources/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="Sources/styles/about.css">
    <link rel="stylesheet" type="text/css" href="Sources/styles/about_responsive.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="super_container">

                <!-- Header -->

                <header class="header">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                                    <div class="logo">
                                        <img src="Sources/images/logo.png" width="130" height="130"></div>
                                    <nav class="main_nav">
                                        <ul class="d-flex flex-row align-items-center justify-content-start">
                                            <li class="active"><a href="#home">Home</a></li>
                                            <li><a href="#contact">Contact</a></li>
                                        </ul>
                                    </nav>
                 
                                    <div class="social header_social">
                                        <ul class="d-flex flex-row align-items-center justify-content-start">
                                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>

                <!-- Menu -->

                <div class="menu">
                    <div class="menu_content d-flex flex-column align-items-center justify-content-center">
                        <ul class="menu_nav_list text-center">
                            <li><a href="#home">Home</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                        <div class="menu_join"><a href="#">logout</a></div>
                        <div class="menu_social social">
                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Home -->

                <!-- Intro -->

                <!-- Call to action -->

                <div class="cta_2">
                    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="Sources/images/bg.jpg" data-speed="0.8"></div>
                    <div class="footer_overlay"></div>
                    <div class="container">
                        <div class="row">

                            <div class="col-md-2 text-right"><i class="fa fa-file-text fa-4x" aria-hidden="true"></i></i></div>
                            <div class="col-md-10 text-left">
                                <h1>Welcome to PNU Exam Generator</h1>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Boxes -->

                <!-- Team -->

                <!-- FAQ -->

                <section id="home" class="register text-center">
                    <div class="special-panel" style="margin: auto auto; width: 50%">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                            </div>
                            <div class="panel-body">
                                </div>
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                            <form role="form">

                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <br />
                                            <asp:TextBox ID="txtID" runat="server" class="form-control" placeholder="Enter your email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="Your ID is required!" Text="*" ControlToValidate="txtID">
                                        </asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group col-md-12">
                                            <asp:TextBox ID="txtPwd" runat="server" class="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                            ErrorMessage="Your Password is required!" Text="*" ControlToValidate="txtPwd">
                                        </asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group col-md-12">
                                            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-info" OnClick="lgnBtn_Click"/>
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                        </div>
                                        <div class="form-group col-md-12">
                                            <a href="ForgetPassword.aspx" style="color: #333;">Forgot Password</a>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <a href="ResetPassword.aspx" style="color: #333;">Reset Password</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Footer -->

                <footer id="contact" class="footer">
                    <div class="footer_overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="footer_content text-center d-flex flex-column align-items-center justify-content-center">
                                    <div class="footer_contact">
                                        <ul>
                                            <li>
                                                <div class="footer_contact_title">Phone:</div>
                                                <div class="footer_contact_text">0556228443</div>
                                            </li>
                                            <li>
                                                <div class="footer_contact_title">Email:</div>
                                                <div class="footer_contact_text">PNUExamGenerator@gmail.com</div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="social footer_social">
                                        <ul class="d-flex flex-row align-items-center justify-content-start">
                                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>

                                </div>
                                <div class="copyright d-flex flex-row align-items-center justify-content-center">
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>

            <script src="Sources/js/jquery-3.2.1.min.js"></script>
            <script src="Sources/styles/bootstrap-4.1.2/popper.js"></script>
            <script src="Sources/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
            <script src="Sources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
            <script src="Sources/plugins/easing/easing.js"></script>
            <script src="Sources/plugins/parallax-js-master/parallax.min.js"></script>
            <script src="Sources/js/about.js"></script>
        </div>
    </form>
</body>
</html>
