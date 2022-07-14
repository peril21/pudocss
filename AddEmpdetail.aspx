<%@ Page Title="User Registration Form" Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="AddEmpdetail.aspx.cs" Inherits="PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <style type="text/css">
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
    <div   style="height:auto; width:auto; margin-left:150px ; background-color:White  ; background-image:url();
         width:1000px">

    <table style="width:1000px; height: 445px;">
        <tr>
            <td colspan="4" class="style14">
                Add New Employee Detail Form</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style20">
                <span class="style19" 
                    
                    style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 100; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Mandatory Field Details</span></td>
            <td rowspan="15">
                <asp:Image ID="Image2" runat="server" Height="504px" 
                    ImageUrl="~/UserHomeImage/card_employ.png" Width="486px" />
            </td>
        </tr>
        <tr>
            <td class="style17">
                Emp ID:</td>
            <td class="style21">
                <asp:TextBox ID="eid" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px" 
                    MaxLength="8"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
            <tr>
            <td class="style17">
                Emp&nbsp; FullName:</td>
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
          Emp Password:</td>
            <td class="style21">
                <asp:TextBox ID="password" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
           <tr>
            <td class="style17">
           Emp Designation:</td>
            <td class="style21">
                <asp:DropDownList ID="des" runat="server" AutoPostBack="True" 
                    Height="31px" Width="156px">
                    <asp:ListItem>Principal</asp:ListItem>
                    <asp:ListItem>Clerk</asp:ListItem>
                    <asp:ListItem>HOD</asp:ListItem>
                    <asp:ListItem>Lecturer</asp:ListItem>
                    <asp:ListItem>Assistant Professor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
           <tr>
            <td class="style17">
                Emp Department Name;</td>
            <td class="style21">
                <span class="style2">
                <asp:DropDownList ID="dept" runat="server" AutoPostBack="True" 
                    Height="31px" Width="156px">
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>It</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
           <tr>
            <td class="style17">
                Emp Contanct No:</td>
            <td class="style21">
                <span class="style2">
                <asp:TextBox ID="cno" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
       Emp Image:</td>
            <td class="style12">
                <asp:FileUpload ID="addimage" runat="server" style="text-align: left" />
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
                    title: " SYSTEM ",
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

