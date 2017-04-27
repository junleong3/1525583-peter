using System;
using System.Net.Mail;

namespace TigerLift.webpage
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("beastmodeactivated94@hotmail.com");
                    mailMessage.To.Add("beastmodeactivated94@hotmail.com");
                    mailMessage.Subject = question.Text;
                    mailMessage.Body = "<b>Customer Name:</b>" + name.Text + "<br/>" +
                        "<b>Customer E-mail:</b>" + email.Text + "<br/>" +
                        "<b>Customer Comment:</b>" + comment.Text;
                    mailMessage.IsBodyHtml = true;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials = new
                        System.Net.NetworkCredential("beasttest94@gmail.com", "Beastawaken");
                    smtpClient.Send(mailMessage);

                    labelinfo.Text = "Thank you for contacting us";
                    labelinfo.ForeColor = System.Drawing.Color.Green;

                    name.Enabled = false;
                    email.Enabled = false;
                    question.Enabled = false;
                    comment.Enabled = false;
                    submit.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                labelinfo.ForeColor = System.Drawing.Color.Red;
                labelinfo.Text = "There is an unkwon problem. Please try later";
            }
        }
    }
}