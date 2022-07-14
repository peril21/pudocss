<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style134
        {
            height: auto;
            width: 1000px;
            text-align: left;
            color: #FFFFFF;
            font-weight: normal;
            font-size: 14px;
            margin-left: 150px;
            margin-top: 15px;
        }
        .style135
        {
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .style136
        {
            font-size: medium;
            color: rgb(0, 0, 0);
            background-color: #FFFFFF;
        }
        .style137
        {
            color: rgb(0, 0, 0);
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto;width:1000px; " >
 <div class="style134">
     
         
     <span style="font-family: 'Noticia Text', serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(238, 238, 238);" 
         class="style137">
     					<h2 class="style135">
                            About Us</h2>
						</span>
     
         
     <span style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; " 
         class="style136">
						Vadodara Institute of Engineering. was established in 2009 with the aim of helping 
     Student realize their dreams and provide organizations with the right kind of 
     manpower.It is one of the most competent recruitment consultants with roots 
     based  Gujarat serving Engineering &amp; Manufacturing,  etc.</span><br 
         
         style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; " 
         class="style136" />
     <br style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; " 
         class="style136" />
     <span style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; " 
         class="style136">
     We strive to be of assistance in recruitment of candidates through our 
     widespread databank of candidates from all disciplines like Engineering, 
     Commercial, Technical, Management, Finance, etc. Our processes and services act 
     as a catalyst to provide the most suitable environment for the organization such 
     that we leave an impact which works from the whole organization to an individual 
     and from an individual to the whole organization.</span><br 
         
         style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; " 
         class="style136" />
     <br style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; " 
         class="style136" />
    
         
     <br style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; " 
         class="style136" />
     <span style="font-family: 'Noticia Text', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; " 
         class="style136">
     We are committed to delivering professional services on both sides. At Here., we 
     realize the value of hiring professionals who understand your company&#39;s business 
     and are able to understand with your model, culture and process. We spend time 
     studying, hiring decisions that make leading firms in the respective industry 
     successful and we guarantee, our candidates will meet the standards your company 
     is searching for.</span></div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [StudentMisInfo]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="StudentEno" HeaderText="StudentEno" SortExpression="StudentEno" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                <asp:BoundField DataField="StudentDob" HeaderText="StudentDob" SortExpression="StudentDob" />
                <asp:BoundField DataField="StudentGender" HeaderText="StudentGender" SortExpression="StudentGender" />
                <asp:BoundField DataField="StudentCollege" HeaderText="StudentCollege" SortExpression="StudentCollege" />
                <asp:BoundField DataField="StudentBranch" HeaderText="StudentBranch" SortExpression="StudentBranch" />
                <asp:BoundField DataField="StudentMobileNo" HeaderText="StudentMobileNo" SortExpression="StudentMobileNo" />
                <asp:BoundField DataField="StudentPass" HeaderText="StudentPass" SortExpression="StudentPass" />
                <asp:BoundField DataField="StudentImage" HeaderText="StudentImage" SortExpression="StudentImage" />
                <asp:BoundField DataField="StudentSem" HeaderText="StudentSem" SortExpression="StudentSem" />
            </Columns>
        </asp:GridView>


    </div>
</asp:Content>

