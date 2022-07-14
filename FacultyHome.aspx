<%@ Page Language="C#" MasterPageFile="~/Faculty.master" AutoEventWireup="true" CodeFile="FacultyHome.aspx.cs" Inherits="home1" Title=": PUDOCS :Faculty :" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style65
        {
            text-align: left;
            height: 62px;
        }
        .style67
        {
            width: 130px;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style76
        {
            width: 254px;
            text-align: left;
        }
        .style79
        {
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style81
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style82
        {
            width: 254px;
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style83
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
        }
        .style85
        {
            width: 226px;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style86
        {
            width: 254px;
            text-align: left;
            height: 62px;
        }
        .style87
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
            height: 62px;
        }
        .style88
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
            height: 48px;
        }
        .style89
        {
            height: 48px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   

<div style="height: auto; width:1000px; margin-left:150px; margin-top:5px">
    <table style="border-style: solid; border-width: 3px; padding: 1px 4px; width: 100%; height: auto; background-color:#F1F4F7; color:Black">

      
      
          <tr >
            <td class="style61">
                &nbsp;
                </td>
            <td class="style62">
               
                <table style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 100%; height:auto; ">
                    <tr>
                        <td class="style79" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="4" class="style76">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="photo" runat="server" Height="202px" Width="165px" 
                                CssClass="style79" />
                        </td>
                        <td class="style88">
                      Faculty Id:</td>
                        <td style="text-align: left" class="style89">
                            <asp:Label ID="enid" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83">
                    Faculty Name:</td>
                        <td style="text-align: left">
                            <asp:Label ID="sname" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83" style="text-align: left">
             Gender:</td>
                        <td class="style81">
                            <asp:Label ID="gender" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83" style="text-align: left">
                Faculty ContactNo:</td>
                        <td style="text-align: left">
                            <asp:Label ID="cno" runat="server" CssClass="style81" Font-Size="14pt" 
                                style="text-align: left" Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style86">
                            </td>
                        <td class="style87">
              Department:</td>
                        <td class="style65">
                            <asp:Label ID="department" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" style="text-align: left" class="style82">
                            &nbsp;</td>
                        <td class="style85" style="text-align: left">
                 Designation:</td>
                        <td style="text-align: left">
                            <asp:Label ID="des" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
             
                          
                    <tr>
                        <td class="style79">
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;</td>
        </tr>

          <tr >
            <td class="style6">
                &nbsp;
                </td>
            <td class="style60">
               
               

                &nbsp;&nbsp;</td>
        </tr>


        </table>
     <div class="alert alert-success">
    <strong>New Request!</strong> Total Pending Request : <asp:Label ID="lblPendingRequest" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnPendingRequest" runat="server" Text="View"  />
  </div>
        <div class="alert alert-info">
    <strong>Notification Alert !</strong> New Document Upload : <asp:Label ID="lblDoc" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnDoc" runat="server" Text="View" OnClick="btnDoc_Click"   />
  </div>
          <div class="alert alert-warning">
    <strong>Notification Alert !</strong> New Event Upload : <asp:Label ID="lblNewEvent" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnEvent" runat="server" Text="View"  />
  </div>

         <div style="height:auto;width:1050px; background-color:white ;  margin-top:15px">
    
</div>


</div>


</asp:Content>

