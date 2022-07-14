<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:400px; width:1000px; margin-left:150px;">

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
         GridLines="None" Width="990px">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="EventName" HeaderText="EventName" 
                 SortExpression="EventName" />
             <asp:BoundField DataField="EventDate" HeaderText="EventDate" 
                 SortExpression="EventDate" />
             <asp:BoundField DataField="EventTime" HeaderText="EventTime" 
                 SortExpression="EventTime" />
             <asp:BoundField DataField="EventTopic" HeaderText="EventTopic" 
                 SortExpression="EventTopic" />
             <asp:BoundField DataField="EventFor" HeaderText="EventFor" 
                 SortExpression="EventFor" />
             <asp:BoundField DataField="EventPlace" HeaderText="EventPlace" 
                 SortExpression="EventPlace" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:db %>" 
         SelectCommand="SELECT * FROM [seminarinfo]">
     </asp:SqlDataSource>

</div>


</asp:Content>

