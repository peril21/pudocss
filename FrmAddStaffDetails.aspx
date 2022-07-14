<%@ Page Title="Student Registration Form" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="FrmAddStaffDetails.aspx.cs" Inherits="PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
   
        .auto-style3 {
            text-align: right;
        }
   
        .auto-style4 {
            font-size: x-large;
        }
   .alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
   .alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
        .auto-style5 {
            font-size: large;
            width: 361px;
        }
        .auto-style6 {
            font-size: large;
            height: 74px;
        }
        .auto-style7 {
            font-size: large;
            height: 31px;
            color: #3366FF;
        }
        .auto-style8 {
            color: #3366FF;
        }
        .auto-style9 {
            height: 64px;
        }
        .auto-style10 {
            height: 71px;
        }
        .auto-style11 {
            width: 361px;
        }
        .auto-style12 {
            height: 71px;
            width: 361px;
        }
        .auto-style13 {
            height: 64px;
            width: 361px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; margin-left:150px ; background-color:White  ;  border:solid; margin-top:7px;
         width:1000px">

    <table style="width:1000px; height: 445px;">
        <tr>
            <td colspan="4" class="auto-style4">
 
          <div class="alert alert-warning">
               New Faculty Registration Form
     </div>

            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="auto-style7">
              
                <strong>
                <br class="auto-style8" />
                <span class="auto-style8">Mandatory Field Details</span><br class="auto-style8" />
                </strong></td>
            <td rowspan="14" class="auto-style3">
                <asp:Image ID="Image2" runat="server" Height="400px" 
                    ImageUrl="~/image/EmpReg.png" Width="400px" CssClass="auto-style8" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
        Faculty ID:</td>
            <td class="auto-style5">
                             <asp:TextBox ID="txtEid" runat="server" CssClass="text" BorderColor="#405572" 
                    BorderStyle="Solid" Height="33px" Width="365px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="Faculty Id **" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style6">
         Faculty FullName:</td>
            <td class="auto-style5">
                               <asp:TextBox ID="txtFname" runat="server" CssClass="text" BorderColor="#405572" 
                    BorderStyle="Solid" Height="33px" Width="365px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFname" ErrorMessage="Faculty Name **" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                Date Of Birth:</td>
            <td class="auto-style5">
                                <asp:TextBox ID="txtDob" runat="server" CssClass="text" BorderColor="#405572" 
                    BorderStyle="Solid" Height="33px" Width="365px" TextMode="Date"></asp:TextBox>
               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDob" ErrorMessage="DOB **" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
               Gender:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="31px" Width="370px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style11">
              MobileNo:</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtMobileno" runat="server" CssClass="text" BorderColor="#405572" 
                    BorderStyle="Solid" Height="33px" Width="365px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobileno" ErrorMessage="MobileNo **" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
College :</td>
            <td class="auto-style12">
               <asp:DropDownList ID="colleage" runat="server"  
                    Height="50px" Width="370px">
                    <asp:ListItem>PARUL INSTITUTE OF ENGINEERING & TECHNOLOGY</asp:ListItem>
                    <asp:ListItem>PARUL INSTITUTE OF MANAGEMENT AND RESEARCH</asp:ListItem>
                    <asp:ListItem>PARUL INSTITUTE OF PHARMACY</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                </td>
        </tr>
       <tr>
            <td class="auto-style9">
Department(Branch) :</td>
            <td class="auto-style13">
               <asp:DropDownList ID="deprt" runat="server" 
                    Height="20px" Width="370px">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                   <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                     <asp:ListItem>PHARMACY</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9">
                </td>
        </tr>
          <tr>
            <td class="auto-style9">
Designation :</td>
            <td class="auto-style13">
               <asp:DropDownList ID="des" runat="server" 
                    Height="20px" Width="370px">
                    <asp:ListItem>Principal</asp:ListItem>
                    <asp:ListItem>HOD</asp:ListItem>
                    <asp:ListItem>AssistantProfessor</asp:ListItem>
                   <asp:ListItem>Lecture</asp:ListItem>
                 
                </asp:DropDownList>
            </td>
            <td class="auto-style9">
                </td>
        </tr>
        <tr>
            <td class="style11">
             Image:</td>
            <td class="auto-style11">
                <asp:FileUpload ID="newaddressUpload1" runat="server" CssClass="text" BorderColor="#405572" 
                    BorderStyle="Solid" Height="33px" Width="365px"/>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="newaddressUpload1" ErrorMessage="Upload **" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="auto-style11">
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
                    title: " ERROR",
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

