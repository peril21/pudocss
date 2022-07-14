<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>
        :: PU DOC
    </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/simple-line-icons.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link href="css/components-rounded.css" rel="stylesheet" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
        body {
            background-image: url('images/LoginPageBackground.jpg');
            background-color: #FAFBFD;
            background-size: cover;
            background-position:;
            background-repeat: no-repeat;
        }

        .margin-set {
            margin-top: 10px;
            margin-left: 120px;
        }

        .preheader {
            margin-top: 10px;
            margin-right: 20px;
            z-index: -1;
        }

        .header-text {
            margin-bottom: 30px;
        }

        .gn-mb-10 {
            margin-bottom: 10px !important;
        }


        .gn-mb-15 {
            margin-bottom: 15px !important;
        }

        .btn {
            border-radius: 30px !important;
        }

        .row {
            margin-left: 0px !important;
            margin-right: 0px !important;
        }

        .active {
            background-color: black !important;
            color: white !important;
        }

        .socialmedia_icon {
            display: inline-block;
            width: 2em;
            height: 2em;
            background-color: #808080;
            margin-right: 0.3em;
            text-align: center;
            border-radius: 50%;
        }

            .socialmedia_icon:before {
                content: '';
                display: inline-block;
                height: 100%;
                vertical-align: middle;
                margin-right: -0.25em; /* Adjusts for spacing */
            }

            .socialmedia_icon a {
                color: white;
                margin: auto;
                text-align: center;
                vertical-align: middle;
            }

        .container div:last-child {
            margin-right: 0;
        }
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 33.33333%;
            font-size: xx-large;
            color: #0F7292;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>

</head>
<body>
     <form id="form1" runat="server">
      
        <div class="body">
            <div class="preheader">
                <div class="row">
                    <div class="col-md-12">
                        <span class="pull-right">
                            <h5>
                                <a id="hlParulUniversity" title="Parul University" class="bold" href="http://www.paruluniversity.ac.in/" target="_blank">
                            <i class="fa fa-globe"></i> &nbsp; www.paruluniversity.ac.in
                                </a>
                                <span>|</span>
                                <a id="HyperLink1" title="Tech Support" class="bold" href="http://10.0.0.5:8080/index.html" target="_blank">
                            <i class="fa fa-mobile"></i> &nbsp; Tech Support
                                </a>
                            </h5>
                        </span>
                    </div>
                </div>
            </div>
            <div class="margin-set">
                <div class="row">
                    <div class="col-md-5">
                        <img id="imgLogo" class="img-responsive" src="./images/LoginPage_Logo.png" style="border-width:0px;">
                    </div>
                </div>
                <div class="row headertext">
                    <div class="col-md-4" style="margin-top: 20px;">
                        
                        <img src="./images/LoginPage_Header1.png">
                    </div>
                </div>
                <div class="row headertext">
                    <div class="auto-style1" style="margin-top: 20px">
                       Document System
                    </div>
                </div>
                <div class="row headertext">
                    <div class="col-md-4" style="margin-top: 0px">
                        <img src="./images/LoginPage_Border.png">
                    </div>
                </div>
            </div>
            <div class="margin-set login-options">
                <div class="row hide">
                    <div class="btn-toolbar" style="margin-left: 2px !important">
                        <div class="btn-group btn-group-md btn-group-solid margin-bottom-10 text-uppercase bold">
                            <a id="lbtnFromCampus" class="btn btn-default active" href="javascript:__doPostBack(&#39;lbtnFromCampus&#39;,&#39;&#39;)" style="border-top-right-radius: 0px !important; border-bottom-right-radius: 0px !important;">From Campus</a>
                            <a id="lbtnOutsideCampus" class="btn btn-default" href="javascript:__doPostBack(&#39;lbtnOutsideCampus&#39;,&#39;&#39;)" style="border-top-left-radius: 0px !important; border-bottom-left-radius: 0px !important">Outside Campus</a>
                        </div>
                    </div>
                </div>
                <div class="row gn-mb-10">
                    <a id="hlStaffLogin" class="btn btn-md col-md-3 bg-blue-madison btn-default text-uppercase font-lg font-white" href="StaffLogin.aspx">Staff Panel</a>
                </div>
                   <div class="row gn-mb-10">
                    <a id="hlStaffLogin1" class="btn btn-md col-md-3 bg-blue-madison btn-default text-uppercase font-lg font-white" href="HodLogin.aspx">HOD</a>
                </div>
                   <div class="row gn-mb-10">
                    <a id="hlStaffLogi2n" class="btn btn-md col-md-3 bg-blue-madison btn-default text-uppercase font-lg font-white" href="PrincipalLogin.aspx">Principal</a>
                </div>
                <div class="row gn-mb-10">
                    <a id="hlStudentLogin" class="btn btn-md col-md-3 bg-green-meadow btn-default text-uppercase font-lg  font-white" href="StudentLogin.aspx">Student Panel</a>
                </div>
                <div class="row gn-mb-10">
                    <a id="hlOtherStudentLogin" class="btn btn-md col-md-3 bg-red-sunglo btn-default text-uppercase font-lg  font-white" href="Admin.aspx">Admin Panel</a>
                </div>
               
            </div>
            <div class="margin-set">
                <span id="lblMISMessage"></span>
            </div>
            <div class="margin-set downloadapp">
                <div class="row gn-mb-10">
                    <div class="col-md-3 text-center">
                        <img id="imgDownLoadAppText" src="./images/LoginPage_DownloadApp.png" style="border-width:0px;">
                    </div>
                </div>
                <div class="row ">
                    <div class="col-md-3 text-center">
                        <img id="Image2" src="./images/LoginPageDownloadAppLine.png" align="texttop" style="border-width:0px;margin-right: 10px">
                        <a id="hlPlayStore" title="PlayStore" href="https://play.google.com/store/apps/details?id=com.pumis.Design&amp;hl=en_IN" target="_blank"><img id="ImageButton1" src="./images/LoginPagePlayStore.png" style="border-width:0px;"></a>
                        <a id="HyperLink2" title="AppStore" href="https://apps.apple.com/in/app/pumis/id1259306985" target="_blank"><img id="Image1" src="./images/LoginPageAppStore.png" style="border-width:0px;"></a>
                        <img id="Image3" src="./images/LoginPageDownloadAppLine.png" align="texttop" style="border-width:0px;margin-left: 10px">
                    </div>
                  
                </div>
            </div>
        </div>
    </form>

    <script src="css/bootstrap.min.js"></script>
                                               <script src="css/jquery-migrate.min.js"></script>
                                               <script src="css/jquery.blockui.min.js"></script>
                                               <script src="css/jquery.min.js"></script>

            <script>
                                                   jQuery(document).ready(function () {

                                                       $(function () {
                                                           $('[data-toggle="tooltip"]').tooltip()
                                                       });

                                                       localStorage.clear();
                                                   });
                                               </script>

</body>
</html>
