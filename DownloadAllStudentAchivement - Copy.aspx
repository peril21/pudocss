<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="DownloadAllStudentAchivement - Copy.aspx.cs" Inherits="EnquiryStatus" %>

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
                     Student Achivement Document Download Detail Info:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td colspan="3">
                      <asp:Panel runat="server"  ScrollBars="Both"
  Width="1000px" >      
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                         <AlternatingRowStyle BackColor="White" />
                         <FooterStyle BackColor="#CCCC99" />
                         <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                         <RowStyle BackColor="#F7F7DE" />
                         <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#FBFBF2" />
                         <SortedAscendingHeaderStyle BackColor="#848384" />
                         <SortedDescendingCellStyle BackColor="#EAEAD3" />
                         <SortedDescendingHeaderStyle BackColor="#575357" />
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

