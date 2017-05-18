<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="TigerLift.Cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodywrap">
<div id="contact">

<asp:Panel ID="CartPanel" runat="server">
</asp:Panel>

<table>
<tr>
    <td><b>Total:</b></td> 
    <td><asp:Literal ID="litTotal" runat="server" Text="" /></td>
</tr>

<tr>
    <td><b>Vat:</b></td> 
    <td><asp:Literal ID="litVat" runat="server" Text="" /></td>
</tr>

<tr>
    <td><b>Tax Charge:</b></td> 
    <td>$2</td>
</tr>

<tr>
    <td><b>Total Amount:</b></td> 
    <td><asp:Literal ID="litTotalAmount" runat="server" Text="" /></td>
</tr>

<tr>
    <td>
        <asp:LinkButton ID="InkContinue" runat="server" PostBackUrl="~/Default.aspx" Text="Continue Shopping" />
        OR
        <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/Bill.aspx" Text="Continue Checkout" />
    </td> 
</tr>
</table>

    </div>
</div>
</asp:Content>
