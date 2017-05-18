<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TigerLift.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="bodywrap">
         <div id="contact">

<p>&nbsp;</p>
    <p>
        <asp:Literal ID="litStatus" runat="server"></asp:Literal>
    </p>
    <p>Username:</p>
    <p>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    </p>
    <p>Password:</p>
    <p>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>Confirm Password: </p>
    <p>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Account" />
    </p>
             </div>
        </div>

</asp:Content>
