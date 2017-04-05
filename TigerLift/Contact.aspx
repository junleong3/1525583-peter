<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TigerLift.webpage.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="body">

        <div id="contact">
        <h1>Contact Us</h1>

       <p class="name"> <label for="name">Name:</label> <input type="text" name="name" placeholder="Enter name here" /> </p>
       <p class="email"> <label for="email">E-mail:</label> <input type="text" name="email" placeholder="Enter e-mail here" /> </p>
       <p class="title"> <label for="question">Title:</label> <input type="text" name="question" placeholder="Question title" /> </p>
        
            <p class="comment"> <label for="name">Comment:</label><textarea name="text" placeholder="Enter text here" > </textarea> </p>

            <p class="send"> <input type="submit" value="Send" /> </p>
        </div>

         <div id="address">
         <h2>Address</h2>
            <p>A11, Pandan1, <br />
                Jalan Pandan, Jerudong KA1111,<br />
                Brunei Darussalam <br />
            </p>
        <h3>Tel: 3331111</h3>
         </div>

    </div>

</asp:Content>
