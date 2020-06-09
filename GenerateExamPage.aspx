<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateExamPage.aspx.cs" Inherits="PNUExamGenerator.GenerateExamPage" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate exam Paper</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="project" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="Sources/styles/bootstrap-4.1.2/bootstrap.min.css" />
    <link href="Sources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="Sources/plugins/OwlCarousel2-2.2.1/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="Sources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css" />
    <link rel="stylesheet" type="text/css" href="Sources/plugins/OwlCarousel2-2.2.1/animate.css" />
    <link rel="stylesheet" type="text/css" href="Sources/styles/about.css" />
    <link rel="stylesheet" type="text/css" href="Sources/styles/about_responsive.css" />
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
                                            <li class="active"><a href="InstructorHomePage.aspx">Home</a></li>
                                            <li><a href="ResetPassword.aspx">Reset Password</a></li>
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
                            <li><a href="ResetPassword.aspx">Reset Password</a></li>
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

                            <div class="col-md-3 text-right"><i class="fa fa-file-text fa-4x" aria-hidden="true"></i></i></div>
                            <div class="col-md-9 text-left">
                                <h1>Generate Exam Paper</h1>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Boxes -->

                <!-- Team -->

                <!-- FAQ -->

                <section id="home" class="register" style="min-height: 100px; padding-bottom: 60px;">
                    <div class="special-panel" style="margin: auto auto; width: 80%">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                            </div>
                            <div class="panel-body">
                                <form role="form">

                                    <div class="row">
                                        <div class="row col-md-12">
                                            <div class="form-group col-md-3">
                                                <asp:DropDownList
                                                    ID="CrsNmDDL" runat="server"
                                                    class="custom-select form-control"
                                                    placeholder="Select Course">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <asp:DropDownList ID="CLoDDL" runat="server" class="custom-select form-control" placeholder="Select CLO">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-3">
                                                <asp:TextBox ID="ChapFromTxt" runat="server" class="form-control" placeholder="From Chapter"></asp:TextBox>
                                                
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="From Chapter No. is required!" Text="*" ControlToValidate="ChapFromTxt">
                                        </asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="ChapFromTxt"
                                            ErrorMessage="Please, Enter Chapter No. in Numric Mode Only !"
                                            ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>

                                                <asp:TextBox ID="ChapToTxt" runat="server" class="form-control" placeholder="To Chapter"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ErrorMessage="To Chapter No. is required!" Text="*" ControlToValidate="ChapToTxt">
                                        </asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="ChapToTxt"
                                            ErrorMessage="Please, Enter Chapter No. in Numric Mode Only !"
                                            ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="services" style="padding-bottom: 180px;">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-12">

                                <table class="table table-hover margintop">
                                    <thead>
                                        <tr>
                                            <th scope="col">Question Type</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Prepare</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">
                                                <form>
                                                    <div class="checkbox">
                                                        <asp:Label ID="Label1" runat="server" Style="margin-right: 10px;" Text=" T/F"></asp:Label>
                                                    </div>
                                                </form>
                                            </th>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                                                    <asp:TextBox ID="TF_quanText" runat="server" class="quantity" min="0" name="quantity" value="0" type="number"></asp:TextBox>
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                            ControlToValidate="TF_quanText"
                                            ErrorMessage="Please, Enter Question Quantity in Numric Mode Only !"
                                            ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <asp:Button ID="TF_PrepButton" runat="server" Text="Prepare" class="btn btn-danger" Style="margin-top: 0; width: 80%;" OnClick="TF_PrepButton_Click"/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <form>
                                                    <div class="checkbox">
                                                        <asp:Label ID="Label2" runat="server" Style="margin-right: 10px;" Text=" Multiple Choice"></asp:Label>
                                                    </div>
                                                </form>
                                            </th>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                                                    <asp:TextBox ID="MCQ_QuanText" runat="server" class="quantity" min="0" name="quantity" value="0" type="number"></asp:TextBox>
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                            ControlToValidate="MCQ_QuanText"
                                            ErrorMessage="Please, Enter Question Quantity in Numric Mode Only !"
                                            ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <asp:Button ID="MCQ_Button" runat="server" Text="Prepare" class="btn btn-danger" Style="margin-top: 0; width: 80%;" OnClick="MCQ_Button_Click"/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">
                                                <form>
                                                    <div class="checkbox">
                                                        <asp:Label ID="Label3" runat="server" Style="margin-right: 10px;" Text=" Matching Question"></asp:Label>

                                                    </div>
                                                </form>
                                            </th>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                                                    <asp:TextBox ID="Mat_QuanText" runat="server" class="quantity" min="0" name="quantity" value="0" type="number"></asp:TextBox>
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                                            ControlToValidate="Mat_QuanText"
                                            ErrorMessage="Please, Enter Question Quantity in Numric Mode Only !"
                                            ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                                                </div>
                                            </td>

                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <asp:Button ID="Mat_Button" runat="server" Text="Prepare" class="btn btn-danger" Style="margin-top: 0; width: 80%;" OnClick="Mat_Button_Click"/>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row">
                                                <form>
                                                    <div class="checkbox">
                                                        <asp:Label ID="Label4" runat="server" Style="margin-right: 10px;" Text=" Essay Question"></asp:Label>
                                                    </div>
                                                </form>
                                            </th>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                                                    <asp:TextBox ID="Essay_QuanText" runat="server" class="quantity" min="0" name="quantity" value="0" type="number"></asp:TextBox>
                                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                                            ControlToValidate="Essay_QuanText"
                                            ErrorMessage="Please, Enter Question Quantity in Numric Mode Only !"
                                            ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="def-number-input number-input safari_only">
                                                    <asp:Button ID="Essay_Button" runat="server" Text="Prepare" class="btn btn-danger" Style="margin-top: 0; width: 80%;" OnClick="Essay_Button_Click"/>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>

                                <div class="form-group col-md-12">
                                    <asp:Button ID="GenerateExamButton" runat="server" Text="Generate Exam Paper" class="btn btn-danger" Style="margin-top: 0; width: 30%;" OnClick="GenerateExamButton_Click" />
                                </div>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
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


            <!--    input quantiy button plus and minus-->

            <style>
                .number-input input[type="number"] {
                    -webkit-appearance: textfield;
                    -moz-appearance: textfield;
                    appearance: textfield;
                }

                .number-input input[type=number]::-webkit-inner-spin-button,
                .number-input input[type=number]::-webkit-outer-spin-button {
                    -webkit-appearance: none;
                }

                .number-input {
                    margin-bottom: 0;
                }

                    .number-input button {
                        -webkit-appearance: none;
                        background-color: transparent;
                        border: none;
                        align-items: center;
                        justify-content: center;
                        cursor: pointer;
                        margin: 0;
                        position: relative;
                    }

                        .number-input button:before,
                        .number-input button:after {
                            display: inline-block;
                            position: absolute;
                            content: '';
                            height: 2px;
                            transform: translate(-50%, -50%);
                        }

                        .number-input button.plus:after {
                            transform: translate(-50%, -50%) rotate(90deg);
                        }

                    .number-input input[type=number] {
                        text-align: center;
                    }

                    .number-input.number-input {
                        border: 1px solid #ced4da;
                        width: 10rem;
                        border-radius: .25rem;
                    }

                        .number-input.number-input button {
                            width: 2.6rem;
                            height: .7rem;
                        }

                            .number-input.number-input button.minus {
                                padding-left: 10px;
                            }

                            .number-input.number-input button:before,
                            .number-input.number-input button:after {
                                width: .7rem;
                                background-color: #495057;
                            }

                        .number-input.number-input input[type=number] {
                            max-width: 4rem;
                            padding: .5rem;
                            border: 1px solid #ced4da;
                            border-width: 0 1px;
                            font-size: 1rem;
                            height: 2rem;
                            color: #495057;
                        }

                @media not all and (min-resolution:.001dpcm) {
                    @supports (-webkit-appearance: none) and (stroke-color:transparent) {

                        .number-input.def-number-input.safari_only button:before,
                        .number-input.def-number-input.safari_only button:after {
                            margin-top: -.3rem;
                        }
                    }
                }
            </style>

            <!--    input quantiy button plus and minus-->




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
