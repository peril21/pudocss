<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        Login - Parul University
    </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <script src="LoginJs/app.min.js"></script>
    <script src="LoginJs/bootstrap-datepicker.min.js"></script>
    <link href="LoginJs/bootstrap-datepicker3.min.css" rel="stylesheet" />
    <link href="LoginJs/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <script src="LoginJs/bootstrap-datetimepicker.min.js"></script>
    <link href="LoginJs/bootstrap-switch.min.css" rel="stylesheet" />
    <script src="LoginJs/bootstrap-switch.min.js"></script>
    <link href="LoginJs/bootstrap-timepicker.min.css" rel="stylesheet" />
    <script src="LoginJs/bootstrap-timepicker.min.js"></script>
    <link href="LoginJs/bootstrap.min.css" rel="stylesheet" />
    <link href="LoginJs/components-rounded.min.css" rel="stylesheet" />
    <link href="LoginJs/custom.min.css" rel="stylesheet" />
    <link href="LoginJs/darkblue.min.css" rel="stylesheet" />
    <link href="LoginJs/daterangepicker.min.css" rel="stylesheet" />
    <link href="LoginJs/font-awesome.min.css" rel="stylesheet" />
    <link href="LoginJs/gn-globals.css" rel="stylesheet" />
    <link href="LoginJs/gnmis.css" rel="stylesheet" />
    <link href="LoginJs/layout.min.css" rel="stylesheet" />

    <link href="LoginJs/simple-line-icons.min.css" rel="stylesheet" />
    <link href="LoginJs/select2.min.css" rel="stylesheet" />
    <link href="LoginJs/select2-bootstrap.min.css" rel="stylesheet" />
    <link href="LoginJs/login.min.css" rel="stylesheet" />
    <link href="LoginJs/plugins.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="login">
    <form id="form1" runat="server">



        <h1 class="g-color-white g-mt-70 text-center h1 g-mb-0">
            <span id="lblUniversityName">PU-DOCS</span>
        </h1>
        <h3 class="g-color-white text-center g-mt-10">Staff Control Panel</h3>


        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content g-mt-20 g-brd-3 g-brd-top g-brd-teal">
            <!-- BEGIN FORGOT PASSWORD FORM -->
            <div class="forget-form" novalidate="novalidate" style="display: block;">
                <h3>Forgot Password ?</h3>
                <p>
                    Enter your MobileNo below to reset your password.
                </p>
                <div class="form-group">
                    <div class="input-icon">
                        <i class="fa fa-envelope"></i>

                        <asp:TextBox id="txtForgotpwd" class="form-control placeholder-no-fix" autocomplete="off" placeholder="MobileNo" runat="server"></asp:TextBox>
                        

                    </div>
                    <span id="rfvForgotpwd" style="color:Red;display:none;">Enter Email</span>
                    <span id="revForgotpwd" style="color:Red;display:none;">Please Enter Valid Email ID</span>
                </div>
                <div class="row">

                    <div class="col-md-6 ">
                        <a id="hlLogin" class="btn blue-soft " href="StaffLogin.aspx"> Login <i class="m-icon-swapright m-icon-white"></i> </a>

                    </div>
                    <div class="col-md-6 text-right">

                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn green-haze " OnClick="Button1_Click"/>
                        

                    </div>
                </div>

                <hr />



                <div class="row">
                    <div class="col-md-12" style="text-align: -webkit-center;">
                        <img id="imgFooterLogo" class="img-responsive" src="images/Parul-University-Logo.jpg" style="border-width:0px;">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">

                    </div>
                </div>
            </div>
            <!-- END LOGIN FORM -->
        </div>
        <!-- END LOGIN -->
        <!-- BEGIN COPYRIGHT -->
        <div class="copyright">
        </div>
        <!-- END COPYRIGHT -->
        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <!--[if lt IE 9]>
    <script src="Default/assets/global/plugins/respond.min.js"></script>
    <script src="Default/assets/global/plugins/excanvas.min.js"></script>
    <script src="Default/assets/global/plugins/ie8.fix.min.js"></script>
    <![endif]-->
        <!-- BEGIN CORE PLUGINS -->
       

        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="./Login - Parul University_files/layout.min.js.download" type="text/javascript"></script>
        <script src="./Login - Parul University_files/demo.min.js.download" type="text/javascript"></script>
        <script src="./Login - Parul University_files/quick-sidebar.min.js.download" type="text/javascript"></script>
        <script src="./Login - Parul University_files/quick-nav.min.js.download" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->


        <script>
            jQuery(document).ready(function () {
                $("#hfWidth").val($(window).width());
                $("#hfHeight").val($(window).height());

            });

            localStorage.clear();

        </script>
        <!-- END JAVASCRIPTS -->

        <script type="text/javascript">
            //<![CDATA[
            var Page_Validators = new Array(document.getElementById("rvtxtUsername"), document.getElementById("rvtxtPassword"));
            //]]>
        </script>

        <script type="text/javascript">
            //<![CDATA[
            var rvtxtUsername = document.all ? document.all["rvtxtUsername"] : document.getElementById("rvtxtUsername");
            rvtxtUsername.controltovalidate = "txtUsername";
            rvtxtUsername.focusOnError = "t";
            rvtxtUsername.errormessage = "Enter Email";
            rvtxtUsername.display = "Dynamic";
            rvtxtUsername.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            rvtxtUsername.initialvalue = "";
            var rvtxtPassword = document.all ? document.all["rvtxtPassword"] : document.getElementById("rvtxtPassword");
            rvtxtPassword.controltovalidate = "txtPassword";
            rvtxtPassword.focusOnError = "t";
            rvtxtPassword.errormessage = "Enter Password";
            rvtxtPassword.display = "Dynamic";
            rvtxtPassword.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            rvtxtPassword.initialvalue = "";
            //]]>
        </script>


        <script type="text/javascript">
            //<![CDATA[
            sessionStorage.clear();
            var Page_ValidationActive = false;
            if (typeof (ValidatorOnLoad) == "function") {
                ValidatorOnLoad();
            }

            function ValidatorOnSubmit() {
                if (Page_ValidationActive) {
                    return ValidatorCommonOnSubmit();
                }
                else {
                    return true;
                }
            }
            WebForm_AutoFocus('txtUsername');//]]>
        </script>
    </form>



</body></html>
