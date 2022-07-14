<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AHome.aspx.cs" Inherits="ClerkHome" %>

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

               
             
     <div class="alert alert-success">
    <strong>New Request!</strong> Total Pending Request : <asp:Label ID="lblPendingRequest" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnPendingRequest" runat="server" Text="View"  />
  </div>
        <div class="alert alert-info">
    <strong>Notification Alert !</strong> New Document Upload : <asp:Label ID="lblDoc" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnDoc" runat="server" Text="View"   />
  </div>
          <div class="alert alert-warning">
    <strong>Notification Alert !</strong> New Event Upload : <asp:Label ID="lblNewEvent" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnEvent" runat="server" Text="View"  />
  </div>

         <div style="height:auto;width:1050px; background-color:white ;  margin-top:15px">
    
</div>


</div>

</asp:Content>

