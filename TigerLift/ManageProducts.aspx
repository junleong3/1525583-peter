<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="TigerLift.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="bodywrap">
         <div id="contact">
    <p>Name:</p>
<p>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</p>
<p>Type:</p>
<p>
    <asp:DropDownList ID="ddlType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525583_co5027ConnectionString %>" SelectCommand="SELECT * FROM [ProductTypes] ORDER BY [Name]"></asp:SqlDataSource>
</p>
<p>Price:</p>
<p>    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox></p>
<p>
    &nbsp;</p>
<p>Image:</p>
<p>
    <asp:DropDownList ID="ddlImage" runat="server">
    </asp:DropDownList>
</p>
<p>Description:</p>
<p>
    <asp:TextBox ID="txtDescription" runat="server" Height="77px" TextMode="MultiLine" Width="210px"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" PostBackUrl="~/management.aspx" Text="Cancel" />
</p>
<p>
    <asp:Label ID="lblResult" runat="server"></asp:Label>
</p>
             </div>
         </div>

</asp:Content>
