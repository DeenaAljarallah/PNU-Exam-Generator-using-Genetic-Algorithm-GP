<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewExamPaperPage.aspx.cs" Inherits="PNUExamGenerator.NewExamPaperPage" EnableEventValidation="false"%>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Exam Paper</title>
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
                                        <img src="Sources/images/logo.png" width="130" height="130">
                                    </div>
                                    <nav class="main_nav">
                                        <ul class="d-flex flex-row align-items-center justify-content-start">
                                            <li class="active"><a href="AdminHomePage.aspx">Home</a></li>
                                            <li><a href="#contact">Contact</a></li>
                                        </ul>
                                    </nav>
                                    <div class="join_button ml-auto"><a href="PNUexamGenerator.aspx">logout</a></div>
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
                            <li><a href="InstructorHomePage.aspx">Home</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                        <div class="menu_join"><a href="PNUexamGenerator.aspx">logout</a></div>
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
                            <div class="col-md-3 text-right"><i class="fa fa-user fa-4x" aria-hidden="true"></i></div>
                            <div class="col-md-9 text-left">
                                <h1>New Exam Questions</h1>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Boxes -->
                <!-- Team -->
                <!-- FAQ -->

                <section id="home" class="register text-center">
                    <div class="special-panel" style="margin: auto auto; width: 80%">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                            </div>
                            <div class="panel-body">
                                </div>
                                    <div class="row">
                                        <div class="row col-md-12">
                                            <!--
                                            <table class="table table-hover margintop">
                                                <asp:GridView ID="GVExamTbl" class="table table-hover margintop" runat="server" AutoGenerateColumns="false">
                                                    <Columns>
                                                        <asp:BoundField DataField="Question_id" HeaderText="ID" HeaderStyle-BackColor="#333333" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="true" />
                                                        <asp:BoundField DataField="Question_type" HeaderText="Instructor ID" HeaderStyle-BackColor="#333333" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="true" />
                                                        <asp:BoundField DataField="Question" HeaderText="Instructor Name" HeaderStyle-BackColor="#333333" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="true" />
                                                        <asp:BoundField DataField="Marks" HeaderText="Course Code" HeaderStyle-BackColor="#333333" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="true" />
                                                    </Columns>
                                                </asp:GridView>
                                            </table>
                                            -->
                                            <div class="form-group col-md-6">
                                                <!--<asp:Button ID="printButton" runat="server" Text="Print Exam Paper" class="btn btn-info" Style="width: 70%;" OnClick="printButton_Click" />-->
                                            </div>
                                            <br />
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                            
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
    </form>
</body>
</html>
