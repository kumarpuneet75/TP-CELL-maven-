<%-- 
   
https://www.google.com/settings/security/lesssecureapps
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.Authenticator"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    
    
                                      //asdf098g";
                                                         //vanshika.edcellpup@gmail.com";


      // Recipient's email ID needs to be mentioned.
      String to = ""+session.getAttribute("to");
      // Sender's email ID needs to be mentioned
      String from = "sambhavk1998@gmail.com";//change accordingly
      final String username = "sambhavk1998@gmail.com";//change accordingly
      final String password = "liveINdelhi";//change accordingly
      String s="";
      // Assuming you are sending email through relay.jangosmtp.net
      String host = "smtp.gmail.com";

      Properties props = new Properties();
     /** props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "587");
  //TSL
    **/        
 //sssl
 	props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
             /*   props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");
 */

      // Get the Session object.
      Session ses = Session.getInstance(props,
      new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
         }
      });

      try {
         // Create a default MimeMessage object.
         Message message = new MimeMessage(ses);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.setRecipients(Message.RecipientType.TO,
         InternetAddress.parse(to));

         // Set Subject: header field
         message.setSubject(""+session.getAttribute("sub"));

         // Now set the actual message
         message.setText(""+session.getAttribute("msg"));

         // Send message
         Transport.send(message);

         s="sent";

      } catch (MessagingException e) {
            s=""+e.getMessage();
//            JOptionPane.showMessageDialog(null,"Error in ->\n"+e+"\nError->\n"+e.getMessage());
            System.err.println(s +" TIME="+new java.util.Date());
      }
      
      if(s.equals("sent"))
    {
        response.sendRedirect(""+session.getAttribute("returnpage")+"?sent=sent");
      
    }
    else
    {
       response.sendRedirect(""+session.getAttribute("returnpage")+"?sent=failed&er="+s);
        
    }


%>

    </body>
</html>
