<%@ Page Title="Assign Task To Faculty" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="FrmFacultyUploadInfoView.aspx.cs" Inherits="PatientRegistration" %>

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
        .auto-style7 {
            font-size: large;
            height: 31px;
            color: #3366FF;
        }
        .auto-style8 {
            color: #3366FF;
        }
        
        .form
        {
             width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; margin-left:150px ; background-color:White  ;  border:solid; margin-top:7px;
         width:1000px">
        
          <div class="alert alert-warning">
              Upload Task To Faculty Info</div>
    <table style="width:1000px; height: auto;">
        <tr>
            <td colspan="2" class="auto-style4">
 

                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="text" Text="Export To Excel" 
                    BorderColor="#405572" BorderStyle="Solid" Width="155px" 
                    onclick="Button1_Click" />
                </strong>
 

            </td>
        </tr>
        <tr>
            <td style="text-align: left" class="auto-style7">
              
                <strong>
                <br class="auto-style8" />
                <span class="auto-style8">Faculty Upload Task Details</span><br class="auto-style8" />
                </strong></td>
            <td rowspan="10" class="auto-style3">
                &nbsp;</td>
        </tr>
      
        <tr>
            <td style="text-align: left" class="auto-style7">
              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="EventId" HeaderText="EventId" SortExpression="EventId" />
                        <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                        <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
                        <asp:BoundField DataField="EventUnderTask" HeaderText="EventUnderTask" SortExpression="EventUnderTask" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                        <asp:BoundField DataField="EventTopic" HeaderText="EventTopic" SortExpression="EventTopic" />
                        <asp:BoundField DataField="EventDetails" HeaderText="EventDetails" SortExpression="EventDetails" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [EventId], [EventDate], [EventName], [EventUnderTask], [Department], [Semester], [EventTopic], [EventDetails] FROM [EventInfo] WHERE ([FacultyId] = @FacultyId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="FacultyId" SessionField="EId" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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

