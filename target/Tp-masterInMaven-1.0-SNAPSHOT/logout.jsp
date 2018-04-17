
    <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page language="java" %>
<%
    DateFormat df = new SimpleDateFormat("dd-MM-yy HH:mm:ss");
    Date dateobj = new Date();
    DB.DBlayer.executeq("insert into activitylog (email,typeofuser,datetimeofactivity,activityperformed,performedonIP)values ('"+session.getAttribute("em") +"','student','"+df.format(dateobj)+"','loggedout','"+request.getRemoteAddr()+"')");
    
   session.removeAttribute("un");
   session.removeAttribute("em");
   session.removeAttribute("id");
   session.removeAttribute("studata");
   session.invalidate();
//   Runtime.getRuntime().gc();
   response.sendRedirect("index.jsp?l=1");
%>

