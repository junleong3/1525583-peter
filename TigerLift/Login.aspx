<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TigerLift.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="body">
    <div id="login">
        <h1>Login</h1>

       <p class="username"> <label for="username">Username:</label> <input type="text" name="name" placeholder="Enter username here" /> </p>
       <p class="password"> <label for="password">Password:</label> <input type="password" name="password" placeholder="Enter password here" /> </p>
 

            <p class="loginbutton"> <input type="submit" value="Login" /> </p>
        </div>
</div>

</asp:Content>
