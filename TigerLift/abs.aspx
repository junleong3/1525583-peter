<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="abs.aspx.cs" Inherits="TigerLift.abs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="bodywrap">
<div id="contact">
    
    <table>

        <tr>
            <td rowspan="4">
                <asp:Image ID="imgabs" runat="server" CssClass="detailsImage" />
            </td>
             <td>
                <h2>
                    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label><hr />
                 </h2>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label></td>
            <td><asp:Label ID="lblPrice" runat="server" CssClass="detailsPrice"></asp:Label></td><br />
            Program Quantity:
            <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList><br />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </tr>
        <tr>
            <td> Program ID Number: <asp:Label ID="lblItemNr" runat="server" Text="Label"></asp:Label> </td>
        </tr>
        <tr>
            <td> 
                <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="btnAdd_Click" Text="Add Plan" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Available" CssClass="productPrice"></asp:Label> </td>
        </tr>

    </table>
    </div>
</div>
</asp:Content>
