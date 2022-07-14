<%@ Page Title="" Language="C#" MasterPageFile="~/PrincipalMasterPage.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style135
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: 14px;
        }
        .style136
        {
        color: #000000;
        font-weight: bold;
        font-size: 14px;
        text-align: left;
        background-color: #C0C0C0;
    }
        .style137
        {
        font-size: 14px;
        background-color: #C0C0C0;
    }
        .style138
        {
        width: 133px;
        background-color: #C0C0C0;
    }
        .style139
        {
            font-weight: normal;
            font-size: 14px;
        }
        .style140
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: 14px;
            text-align: left;
        }
        .style141
        {
        color: #FFFFFF;
        font-weight: normal;
        font-size: 14px;
        text-align: left;
        background-color: #C0C0C0;
    }
        .style142
        {
            font-size: 14px;
            height: 68px;
        background-color: #C0C0C0;
    }
        .style143
        {
            color: #FFFFFF;
            font-weight: normal;
            font-size: 14px;
            text-align: left;
            height: 68px;
        background-color: #C0C0C0;
    }
        .style144
        {
            color: #FFFFFF;
            font-weight: normal;
            font-size: 14px;
            text-align: left;
            height: 68px;
        }
    .style145
    {
        font-weight: normal;
        font-size: 14px;
        background-color: #C0C0C0;
    }
    .style146
    {
        background-color: #C0C0C0;
    }
    .style147
    {
        color: #FFFFFF;
        font-weight: normal;
        font-size: 14px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:9px; width:1000px; background-color:Transparent"></div>
   <div style="height: auto; width:1010px; margin-left:150px ; background-color: Silver">
   
                   
    
       <table style="width: 1010px; height: auto; background-color:#ACDBF9">
           <tr>
               <td class="style135">
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" 
                       Width="1000px" ImageUrl="~/image/postResumebg.png" 
                      />
               </td>
           </tr>

           
          
          
       </table>
   
            <table style="width: 100%; height: 445px; color:Black">
        <tr>
            <td colspan="4" class="style146">
                <img alt="" src="image/online_enquiry.png" 
                    style="height: 35px; width: 37px" />Guest Post Resume&nbsp; Form</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style146">
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    Mandatory Field Details*</h2>
            </td>
            <td rowspan="28" class="style139">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                RequestId:</td>
            <td class="style141">
                <asp:Label ID="Eid" runat="server" style="text-align: left; color: #000000"></asp:Label>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                <br />
                Send Date Time:</td>
            <td class="style141">
                <asp:Label ID="datetime" runat="server" 
                    style="text-align: left; color: #000000"></asp:Label>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="2" class="style145" style="text-align: left">
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</h2>
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    Your Personal Details</h2>
                <p class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</p>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                FullName:</td>
            <td class="style136">
                <asp:TextBox ID="fullname" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Email:</td>
            <td class="style141">
                <asp:TextBox ID="Email" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Gender:</td>
            <td class="style141">
                       
                        <span class="style2">
                <asp:TextBox ID="gender" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                D.O.B:</td>
            <td class="style136">
                <asp:TextBox ID="dob" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Contact No:</td>
            <td class="style141">
                <asp:TextBox ID="cno" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Address:</td>
            <td class="style141">
                <asp:TextBox ID="address" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                City:</td>
            <td class="style136">
                <asp:TextBox ID="city" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Pincode</td>
            <td class="style136">
                <asp:TextBox ID="pincode" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style147">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                State:</td>
            <td class="style136">
                <span class="style2">
                <asp:TextBox ID="state" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style138">
                Country:</td>
            <td class="style136">
                <span class="style2">
                <asp:TextBox ID="country" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137" colspan="2">
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</h2>
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    Current Professional Details</h2>
                <p class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</p>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <span class="style2">
            <td class="style138">
                Industry:</td>
            <td class="style136">
                <span class="style2">
                <asp:TextBox ID="Industry" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            </span>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <span class="style2">
            <td class="style138">
                Functional Area:</td>
            <td class="style136">
                <span class="style2">
                <asp:TextBox ID="funarea" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            </span>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style142">
                KeySkills:</td>
            <td class="style143">
                <asp:TextBox ID="keyskill" runat="server" CssClass="text" Height="45px" 
                    Width="178px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style144">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Total Work Experience:</td>
            <td class="style141">
                <span class="style2">
                <asp:TextBox ID="work" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Current Annual Salary:</td>
            <td class="style141">
                <span class="style2">
                <asp:TextBox ID="salary" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137" colspan="2">
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192);">
                    &nbsp;</h2>
                <h2 class="b hig xxlarge db" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px; padding: 0px; display: block; font-size: 1.4em; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(0, 102, 204); font-variant: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192); height: 34px;">
&nbsp;Education Details</h2>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Basic Graduation:</td>
            <td class="style141">
                <span class="style2">
                <asp:TextBox ID="bg" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                GraduationWith:</td>
            <td class="style141">
                <asp:TextBox ID="gpercentage" runat="server" CssClass="text" Height="28px" 
                    Width="178px" ToolTip="Enter Percentage"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Post Graduation:</td>
            <td class="style141">
                <span class="style2">
                <asp:TextBox ID="pg" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style145">
                Post GraduationWith:</td>
            <td class="style141">
                <asp:TextBox ID="postpercentage" runat="server" CssClass="text" Height="28px" 
                    Width="178px" ToolTip="Enter Percentage"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Doctorate/Phd:</td>
            <td class="style141">
                <span class="style2">
                <asp:TextBox ID="phd" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Any Certificate Course:</td>
            <td class="style141">
                <asp:TextBox ID="anycerti" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style140">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
          
            <td class="style136">
                <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#FF6600" 
                    BorderColor="#FF6600" BorderStyle="Solid">Download Resume</asp:HyperLink>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
    </table>  
          
    
    </div>
  

   
</asp:Content>

