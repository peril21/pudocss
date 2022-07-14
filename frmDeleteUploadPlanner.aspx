<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.master" AutoEventWireup="true" CodeFile="frmDeleteUploadPlanner.aspx.cs" Inherits="VehicleMaster_VehicleDoc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
        .style14
        {
            text-align: left;
        }
   
        </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:9px; width:1050px; margin-left:130px; background-color:Transparent"></div>
   <div style="height: auto; width:1050px;  margin-left:130px; background-color: White">
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
                                        <strong>Delete  My Old schedule planner:</strong></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="border-style: groove; border-width: 1px; width:100%;">
                                            <tr>
                                                <td class="style14">
                                                    <asp:GridView ID="GridView1" runat="server" BackColor="White"  AutoGenerateSelectButton="true"
                                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                                        onrowdatabound="GridView1_RowDataBound" 
                                                        onselectedindexchanged="GridView1_SelectedIndexChanged" EmptyDataText="No Record Found" Font-Size="6pt">
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
    </div>
</asp:Content>

