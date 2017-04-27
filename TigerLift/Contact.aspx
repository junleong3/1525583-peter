<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TigerLift.webpage.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="bodywrap">

<div id="contact">
<h1>Contact</h1>
<table>
<tr>
<td>Name:</td> <td><asp:TextBox ID="name" runat="server"></asp:TextBox></td> <td><asp:RequiredFieldValidator ID="NameRequired" runat="server" ErrorMessage="Please Enter Name" Text="*" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td><b>Email:</b></td>
<td><asp:TextBox ID="email" Width="200px" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator2" runat="server"  ControlToValidate="email" ErrorMessage="Email is required" Text="*"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" Text="*"> </asp:RegularExpressionValidator>
</td>
</tr>

<tr>
<td>Question:</td> <td><asp:TextBox ID="question" runat="server"></asp:TextBox></td> <td><asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ErrorMessage="Please Enter Question" Text="*" ForeColor="Red" ControlToValidate="question"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Comments:</td> <td><asp:TextBox ID="comment" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox></td> <td><asp:RequiredFieldValidator ID="CommentRequired" runat="server" ErrorMessage="Please Enter Comment" Text="*" ForeColor="Red" ControlToValidate="comment"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td colspan="3"> <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="red" HeaderText="Invalid info:" /></td>
</tr>

<tr>
<td colspan="3"><asp:Label ID="labelinfo" runat="server" Font-bold="true"></asp:Label></td>
</tr>

<tr>
<td colspan="3"><asp:Button ID="submit" runat="server" Text="Sumbit" OnClick="submit_Click" /></td>
</tr>

</table>

<h2>Address</h2>
            <p>A11, Pandan1, <br />
               Jalan Pandan, Jerudong KA1111,<br />
               Brunei Darussalam <br />
            </p>
        <h3>Tel: 3331111</h3>
        <h2>Location:</h2>
<p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.2165756690806!2d114.92199711449587!3d4.903384896439868!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3222f5489c9953ed%3A0xa0a5dc4daef6c863!2sFitness+Zone+Kiulap!5e0!3m2!1sen!2sbn!4v1493193080908"></iframe></p>
    </div>        
        </div>

</asp:Content>
