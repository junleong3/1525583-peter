<%@ Page Title="Log-in" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TigerLift.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="bodywrap">
    <div id="login">
        <h1>Login</h1>

        <p><asp:Literal ID="loginStatus" runat="server"></asp:Literal></p>
        <p>Username:</p>
        <p>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </p>
        <p>Password:</p>
        <p>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" OnClick="lnkLogin_Click" Text="Log In" />
        </p>
</div>
</div>

</asp:Content>
