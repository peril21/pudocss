<%@ Page Title="Aadhar Registration Form" Language="C#" MasterPageFile="~/ArtistMasterPage.master" AutoEventWireup="true" CodeFile="frmLockerUploadDocument.aspx.cs" Inherits="PatientRegistration" %>

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
        .style14
        {
            border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
        font-size: x-large;
            color: #368099;
        }
        .text
        {}
        .style17
        {
            width: 1000px;
            height: 445px;
        }
        .style18
        {
            border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
        width: 401px;
        }
        .style24
        {
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
        text-align: left;
    }
        .style25
        {
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div   style="border-style: solid; border-width: 1px; margin-top:20px; height:auto; width: auto; margin-left:130px;  background-color:white ">
    <table class="style17">
        <tr>
            <td colspan="3" class="style14">
                Upload DigiLocker Document Form</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left" class="style25">
                <span class="style10" 
                    style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 100; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Mandatory Field Details</span></td>
            <td rowspan="4" class="style18">
                <asp:Image ID="Image2" runat="server" Height="450px" 
                    ImageUrl="~/Image/download (2).png" Width="349px" />
            </td>
        </tr>
        <tr>
            <td class="style24">
          Aadhar No:</td>
            <td class="style25">
                <asp:TextBox ID="digit" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px" 
                    MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="digit" ErrorMessage="Enter 12 Digit Aadhar No" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style24">
                Select Document Category</td>
            <td class="style25">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>AadharCard</asp:ListItem>
                    <asp:ListItem>ElectionCard</asp:ListItem>
                    <asp:ListItem>PanCard</asp:ListItem>
                    <asp:ListItem>VehicleLicence</asp:ListItem>
                    <asp:ListItem>VehicleRCBook</asp:ListItem>
                    <asp:ListItem>SchoolLc</asp:ListItem>
                    <asp:ListItem>MarkSheet</asp:ListItem>
                    <asp:ListItem>LightBill</asp:ListItem>
                    <asp:ListItem>BankPassBook</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style24">
             Image:</td>
            <td class="style25">
                <asp:FileUpload ID="newaddressUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="newaddressUpload1" 
                    ErrorMessage="Upload Image For Varification" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style24" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="text" Text="UploadDocument" 
                    BorderColor="#405572" BorderStyle="Solid" Width="155px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        function ShowPopup(message) {
            $(function () {
                $("#dialog").html(message);
                $("#dialog").dialog({
                    title: "OPVIS SYSTEM ERROR",
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

