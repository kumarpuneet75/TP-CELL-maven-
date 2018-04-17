<%-- 
    Document   : generateotp
    Created on : 2 Aug, 2017, 3:26:31 PM
    Author     : rahul
--%>

<%
 
    
        String q2="insert into student(email,sname,rollno,`password`) values ('"+request.getParameter("email")+"','"+request.getParameter("name")+"','"+request.getParameter("rollno")+"','"+request.getParameter("password")+"')";
       session.setAttribute("newreg",q2);
   
       int n;String t="";
for (int i = 1; i <= 8; i++) {
        n=(int)(Math.random()*10);
        t+=n;
    }

session.setAttribute("otp",t);
        session.setAttribute("to", request.getParameter("email"));
        session.setAttribute("sub","Your One Time Password to register at TPCell");
        session.setAttribute("msg","OTP is '"+t+"'");
        session.setAttribute("returnpage","enterotp.jsp");
        response.sendRedirect("sendmail.jsp");
    
%>
