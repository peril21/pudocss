<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script type="text/javascript">
      <!--
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return true;

            return false;
        }
      
      //-->
    </script>
   
    
   
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
   
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height:auto; width:1000px; margin-left:150px ; background-color:antiquewhite">
        <div >
            <table style="color:black">
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="Label1" runat="server" Text="Edit Your Profile" Font-Bold="True"
                            Font-Size="14pt" CssClass="style34" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="style34">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" >
                        StudentID :
                    </td>
                    <td >
                        <asp:TextBox ID="txtId" runat="server" 
                            Style="text-transform: uppercase; " onkeypress="return isNumberKey(event)"
                            CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" >
                        Student Name:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtName" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="right" >
                      Old  PassWord:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtStyle" style="margin-bottom: 0px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" >
                        Set
                        New Password:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCnfrmPwd" runat="server" CssClass="txtStyle" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <br />
                    </td>
                </tr>
                
               
                <tr>
                    <td align="right" class="auto-style6">
                        Contact No:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                            ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                
               
                <tr>
                    <td align="right" class="auto-style1">
                        Address:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtAdd" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*"
                            ControlToValidate="txtAdd" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style6">
                        City:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style6">
                        State:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtState" runat="server" CssClass="txtStyle" Height="45px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                            ControlToValidate="txtState" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                    <br class="style34" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" class="style34">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Text="Update Now" 
                             ForeColor="#003366" Height="31px" Width="122px" 
                            BorderStyle="Solid" BorderWidth="1px" onclick="btnSubmit_Click" />
                        <span class="style34">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="btnClear" runat="server" Text="Clear"  CausesValidation="False"
                            CssClass="btnStyle" ForeColor="#404037" Height="31px" Width="74px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="lblMessage" runat="server" CssClass="style2" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                    </td>
                </tr>
            </table>
            
        </div>
         <script type="text/javascript">
             function ShowPopup(message) {
                 $(function () {
                     $("#dialog").html(message);
                     $("#dialog").dialog({
                         title: "Sahajanand Laser Technology",
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

