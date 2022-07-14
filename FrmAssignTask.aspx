<%@ Page Title="Assign Task To Faculty" Language="C#" MasterPageFile="~/Hod.master" AutoEventWireup="true" CodeFile="FrmAssignTask.aspx.cs" Inherits="PatientRegistration" %>

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
              Assign Task To Faculty Form
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
                    ImageUrl="~/image/Task1.png" Width="400px" CssClass="auto-style8" />
            </td>
        </tr>
      
        <tr>
            <td class="auto-style6">
             SelectTask:</td>
            <td class="auto-style5">
              
                     <asp:DropDownList ID="ddlTask" runat="server" 
                    Height="31px" Width="370px">
                    
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style11">
          Select Faculty:</td>
            <td class="auto-style11">
              
                  <asp:DropDownList ID="ddlFaculty" runat="server" 
                    Height="31px" Width="370px">
                   
                </asp:DropDownList>
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
                <asp:Button ID="Button1" runat="server" CssClass="text" Text="Assign Task" 
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
                    title: " SYSTEM ERROR",
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

