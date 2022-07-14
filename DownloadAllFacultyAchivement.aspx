<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="DownloadAllFacultyAchivement.aspx.cs" EnableEventValidation = "false" Inherits="EnquiryStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <style type="text/css">
        .style134
        {
            font-size: xx-large;
            color: #3366FF;
        }
        .style135
        {
            font-size: x-large;
            color: #0033CC;
        }
        .style136
        {
            font-size: x-large;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; width:1000px; margin-left:150px;  background-color:bisque  ">
         
         
         
         <table style="width: 100%; height: 383px;">
             <tr>
                 <td class="style134" colspan="3">
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Export To Excel" />
                 </td>
             </tr>
             <tr>
                 <td class="style135" colspan="3" style="text-align: left">
                     All Faculty Achivement Document&nbsp; Detail Info:</td>
             </tr>
             <tr>
                 <td colspan="3">
                     <asp:Panel runat="server"  ScrollBars="Both"
  Width="1000px" >      
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
                         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                         <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                         <RowStyle BackColor="White" ForeColor="#330099" />
                         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                         <SortedAscendingCellStyle BackColor="#FEFCEB" />
                         <SortedAscendingHeaderStyle BackColor="#AF0101" />
                         <SortedDescendingCellStyle BackColor="#F6F0C0" />
                         <SortedDescendingHeaderStyle BackColor="#7E0000" />
                     </asp:GridView>
                         </asp:Panel>
                 </td>
             </tr>
             <tr>
                 <td class="style136" colspan="3" style="text-align: left">
                     &nbsp;</td>
             </tr>
             <tr>
                   <td style="color: #FF0000; text-align: left">
                       &nbsp;</td>
                 <td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
         
         
         
         </div>
</asp:Content>

