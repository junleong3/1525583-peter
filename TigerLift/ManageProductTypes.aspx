<%@ Page Title="ProductType" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageProductTypes.aspx.cs" Inherits="TigerLift.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="bodywrap">
         <div id="contact">
    <p>Name:</p>
    <p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
             </div>
         </div>
</asp:Content>
