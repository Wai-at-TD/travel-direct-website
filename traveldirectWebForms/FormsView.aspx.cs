using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.ApplicationInsights;
using LiveHolidays.SharePoint.Client;
using System.Text;

namespace traveldirectWebForms
{
    public partial class FormsView : System.Web.UI.Page
    {
        private static string newsLetterThanks = "<i class=icon-ok-sign></i>You have been <strong>successfully</strong> subscribed to our Email List."; //subscription OK
        private static string emailThanks = "<i class=icon-ok-sign></i>We have <strong>successfully</strong> received your Message and will get Back to you as soon as possible."; //message sent
        private static string emailSendError = "Email <strong>could not</strong> be sent due to some Unexpected Error. Please Try Again later."; //error sending email
        private static string invalidFIelds = "Please <strong>Fill up</strong> all the Fields and Try Again."; //fill the fields
        private static string unexpectedError = "An <strong>unexpected error</strong> occured. Please Try Again later.";//unexpected error

        private static string mailSendTo = ConfigurationManager.AppSettings["sendEmailTo"];
        private static string emailFrom = ConfigurationManager.AppSettings["emailServerFrom"];
        private static string emailHost = ConfigurationManager.AppSettings["emailServerHost"];
        private static string emailUserName = ConfigurationManager.AppSettings["emailServerUserName"];
        private static string emailPsswrd = ConfigurationManager.AppSettings["emailServerPsswrd"];
        private static int emailPort = int.Parse(ConfigurationManager.AppSettings["emailServerPort"]);
        private static bool emailSsl = bool.Parse(ConfigurationManager.AppSettings["emailServerSSL"]);

        private static string subscriptionThanksUrl = ConfigurationManager.AppSettings["subscriptionThanksUrl"];
        private static string contactThanksUrl = ConfigurationManager.AppSettings["contactThanksUrl"];

        private static string subscriptionClientbody = Properties.Resources.thanks_for_subscribing;
        private static string contactClientbody = Properties.Resources.thanks_for_contacting;
         

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //[WebMethod(EnableSession = true)]
        [System.Web.Services.WebMethod]
        public static string AddToNewsLetter(string email, bool fromHotel)
        {
            try
            {
                //send email to the company
                SendEmail(mailSendTo, "A New Newsletter Subcription from TravelDirect website", email);
                //send email to client
                SendEmail(email, "Thank you for subscribing", subscriptionClientbody);
                var tc = new TelemetryClient();
                tc.TrackEvent("Subscription Form");
                if (fromHotel)
                    return subscriptionThanksUrl;
                else
                return newsLetterThanks;
            }
            catch (Exception)
            {

                return unexpectedError;
            }
        }

        [System.Web.Services.WebMethod]
        public static string QuickContact(string name, string email, string message)
        {
            string cx = "Contact from TravelDirect Quick Contact Form";

            try
            {
                CreateOpportunity(name, email, "", cx, message, DateTime.MinValue, 0, false);

                //send email to the company
                SendEmail(mailSendTo, cx, string.Format("We receive a new {0} <br> name: {1} <br> email: {2} <br> Message:{3}", cx, name, email, message));
                //send email to client
               contactClientbody= contactClientbody.Replace("[NAME]", name);
                SendEmail(email, "Thanks for getting in touch", contactClientbody);

                var tc = new TelemetryClient();
                tc.TrackEvent("Contact Form");

                return emailThanks;
            }
            catch (Exception exc)
            {
                return emailSendError;
            }

            //return "New Message From Quick Contact Form";
        }


        [System.Web.Services.WebMethod]
        public static string ContactForm(string name, string email, string phone, string subject, string interestedIn, string message)
        {
            string cx = "Contact from TravelDirect Contact Form";
            string x = "New Message From TravelDirect Contact Form";

            try
            {
               CreateOpportunity(name, email, phone, cx + ": " + subject, message, DateTime.MinValue, 0, false);

               //send email to the company
               SendEmail(mailSendTo, x, string.Format("{4} <br> From: {0} <br> Email: {1} <br> Telephone: {2} <br> Message: {3}", name, email, phone, message, subject));
                //send email to client
               contactClientbody = contactClientbody.Replace("[NAME]", name);
                SendEmail(email, "Thanks for contact with us", contactClientbody);

                var tc = new TelemetryClient();
                tc.TrackEvent("Contact Form");

                return "thank-you-for-contacting-travel-direct.html";
            }
            catch (Exception exc)
            {
                return emailSendError;
            }


        }

        [System.Web.Services.WebMethod]
        public static string FindInspiration(string name, string email, string phone, DateTime fromDate, DateTime returnOn, string message)
        {

            string cx = "Contact from TravelDirect Newsletter Subscription Form";
            string subject = "New Message From Newsletter Subscription Form";

            try
            {
                int days = 0;
                if (returnOn > fromDate)
                    days = (returnOn-fromDate).Days;

                CreateOpportunity(name, email, phone, cx, message, DateTime.MinValue, days, true);
                
                //send email to the company
                SendEmail(mailSendTo, subject, string.Format("We have a new Opportunity with a Newsletter Subscription.<br> Name: {0}<br> Email: {1}<br> Telephone: {2} Departure On: {3}<br> Returning On: {4}<br> Duration in Days: {5}<br> Message: {6}", name, email, phone, fromDate, returnOn, days, message));
                //send email to client
                SendEmail(email, "Thank you for subscribing", subscriptionClientbody);

                var tc = new TelemetryClient();
                tc.TrackEvent("Subscription Form");
                return "thanks-for-subscribing.html";
            }
            catch (Exception exc)
            {
                return unexpectedError;
            }
        }

        private static void SendEmail(string sendTo, string subject, string message)
        {
            MailMessage mailMessage = new MailMessage(emailFrom, sendTo, subject, message)
            {
                BodyEncoding = Encoding.UTF8,
                IsBodyHtml = true,
                DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure
            };

            NetworkCredential credentials = new NetworkCredential(emailUserName, emailPsswrd);
            SmtpClient _smtpClient = new SmtpClient(emailHost, emailPort);
            _smtpClient.EnableSsl = emailSsl;
            _smtpClient.Credentials = credentials;
            _smtpClient.Send(mailMessage);
        }

        private static void CreateOpportunity(string name, string email, string phone, string subject, string message, DateTime fromDate, int days, bool withNewsletter)
        {

            Opportunity newOpp = new Opportunity()
            {
                Source = "TravelDirect Website",
                MobileNumber = "",
                OtherPhoneNumber = "",
                AssignedToUser = "",
                ClientFullName = name,
                Email = email,
                PrimaryPhoneNumber = phone,
                ClientMessage = message,
                Subject = subject,
                SubscribeNewsletter = withNewsletter
            };

            if (fromDate > DateTime.MinValue)
            {
                newOpp.Departure = fromDate;
            }
            if (days > 0)
            {
                newOpp.DurationDays = days;
            }


            LiveHolidays.SharePoint.Client.Context.Opportunities.Add(newOpp);
        }
    }
}