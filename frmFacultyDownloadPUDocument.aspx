<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="frmFacultyDownloadPUDocument.aspx.cs" Inherits="VehicleMaster_VehicleDoc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
        .style14
        {
            text-align: left;
        }
   
        </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:9px; width:1000px; margin-left:150px; background-color:Transparent"></div>
   <div style="height: auto; width:1000px;  margin-left:150px; background-color: White">
       <asp:Panel  runat="server" ScrollBars="Horizontal">
    <table width="100%"  frame="box">
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td >
                            <table>
                                <tr>
                                    <td >
                                        <strong>Download&nbsp; Necessary Document:</strong></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="border-style: groove; border-width: 1px; width:100%;">
                                            <tr>
                                                <td class="style14" colspan="3">
                                                    <asp:GridView ID="GridView1" runat="server" BackColor="White"  AutoGenerateSelectButton="true"
                                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                                        onrowdatabound="GridView1_RowDataBound" 
                                                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                        <RowStyle ForeColor="#000066" />
                                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                                    </asp:GridView>
                                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7">
                                                    &nbsp;</td>
                                                <td class="style5">
                                                    <strong></strong></td>
                                                <td class="style12">
                                                    <strong></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="style7">
                                                    &nbsp;</td>
                                                <td class="style5">
                                                    <strong></strong></td>
                                                <td class="style12">
                                                    <strong></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                </td>
                                                <td class="style6">
                                                </td>
                                                <td class="style13">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7">
                                                    <strong></strong></td>
                                                <td class="style5">
                                                    <strong></strong></td>
                                                <td class="style12">
                                                    <strong></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="style7">
                                                    <strong></strong></td>
                                                <td class="style5">
                                                    <strong></strong></td>
                                                <td class="style12">
                                                    <strong></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="style7" colspan="3">
                                                    <asp:Image ID="Image1" runat="server" Height="265px" Width="600px" 
                                                        Visible="False" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7" colspan="3">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="textbox"  Target="_blank"
                                                        Font-Size="16pt" ForeColor="#0066FF">DownLoad Image</asp:HyperLink>
                                                </td>
                                            </tr>
                                            </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <strong></strong></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
           </asp:Panel>
    </div>
</asp:Content>

