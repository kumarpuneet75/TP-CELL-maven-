   <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
    <%@page language="java" %>
<%
    
     DateFormat df = new SimpleDateFormat("dd-MM-yy HH:mm:ss");
    Date dateobj = new Date();
    DB.DBlayer.executeq("insert into activitylog (email,typeofuser,datetimeofactivity,activityperformed,performedonIP)values ('"+session.getAttribute("em") +"','admin','"+df.format(dateobj)+"','loggedout','"+request.getRemoteAddr()+"')");
//   
//    session.removeAttribute("un");
//    session.removeAttribute("em");
//    session.removeAttribute("aid");
//  
session.invalidate();
    response.sendRedirect("index.jsp?l=1");
%>

