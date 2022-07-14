<%@ Page Title="User Registration Form" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AddStudentl.aspx.cs" Inherits="PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <style type="text/css">
    .style9
    {
        text-align: left;
        }
        .style10
        {
            color: rgb(48, 77, 117);
        }
        .style11
        {
            width: 446px;
            text-align: left;
        }
        .style12
        {
            width: 299px;
        }
        .style13
        {
            width: 341px;
            color: #000000;
        }
        .style14
        {
            font-size: x-large;
            color: #368099;
        }
        .text
        {}
        .style17
        {
            width: 446px;
            text-align: left;
            font-family: Lato;
            color: #000000;
        }
        .style18
        {
            width: 299px;
            color: #000000;
        }
        .style19
        {
            color: #000000;
            height: 40px;
        }
        .style20
        {
            color: #000000;
        }
        .style21
        {
            width: 299px;
            text-align: left;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; width:auto; margin-left:150px ; background-color:White  ; background-image:url(Digitalpassport/dpbg.png);
         width:1000px">

        <br />

    <table style="width:1000px; height: 445px;">
        <tr>
            <td colspan="4" class="style14">
                Add New Student Detail Form</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style20">
                <span class="style19" 
                    
                    style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 100; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Mandatory Field Details</span></td>
            <td rowspan="14">
                <asp:Image ID="Image2" runat="server" Height="504px" 
                    ImageUrl="~/UserHomeImage/NewStudents.png" Width="486px" />
            </td>
        </tr>
        <tr>
            <td class="style17">
      Student Enrollment No:</td>
            <td class="style21">
                <asp:TextBox ID="eno" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px" 
                    MaxLength="12"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
            <tr>
            <td class="style17">
       Student FullName:</td>
            <td class="style21">
                <asp:TextBox ID="fname" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style17">
               Gender:</td>
            <td class="style21">
                <asp:DropDownList ID="gender" runat="server" AutoPostBack="True" 
                    Height="31px" Width="156px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
       
       <tr>
            <td class="style17">
           Student Branch:</td>
            <td class="style21">
                <asp:DropDownList ID="branch" runat="server" AutoPostBack="True" 
                    Height="31px" Width="156px">
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>EC</asp:ListItem>
                    <asp:ListItem> Mechanical</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
           <tr>
            <td class="style17">
               Student Semester:</td>
            <td class="style21">
                <asp:DropDownList ID="sem" runat="server" AutoPostBack="True" 
                    Height="31px" Width="156px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
            Student College:</td>
            <td class="style21">
                <asp:DropDownList ID="college" runat="server" AutoPostBack="True" 
                    Height="28px" Width="225px">
                    <asp:ListItem>Parul Institute Of Technology</asp:ListItem>
                    <asp:ListItem>Parul Institute of Architecture and Research</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
         StudentImage:</td>
            <td class="style12">
                <asp:FileUpload ID="addimage" runat="server" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" CssClass="text" Text="Submit" 
                    BorderColor="#405572" BorderStyle="Solid" Width="155px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
    </table>
    <script type="text/javascript">
        function ShowPopup(message) {
            $(function () {
                $("#dialog").html(message);
                $("#dialog").dialog({
                    title: "VIR ATTANDANCE SYSTEM ",
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    },
                    modal: true
                });
            });
        };
    </script>
    <div id="dialog" style="display: none">
    </div>
 </div>
</asp:Content>

