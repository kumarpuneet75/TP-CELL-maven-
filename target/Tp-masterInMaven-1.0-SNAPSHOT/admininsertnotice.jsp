<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%
    DateFormat df = new SimpleDateFormat("dd-MM-yy HH:mm:ss");
Date dateobj = new Date();
    String q="insert into notices(title,description,active,dateadded,addedby) values ('"+request.getParameter("title") +"','"+request.getParameter("description") +"',1,'"+df.format(dateobj)+"','"+session.getAttribute("em") +"')";
    DB.DBlayer.executeq(q);
    response.sendRedirect("adminnotice.jsp");
%>