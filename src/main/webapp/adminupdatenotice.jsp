<%@page import="java.sql.*"%>
<%
   String q="update notices set title='"+request.getParameter("t2")+"' ,description='"+request.getParameter("t3") +"' ,active="+ ((request.getParameter("t4")==null)?"false":"true" )+" where noticeid='"+request.getParameter("eid")+"'";
          DB.DBlayer.executeq(q);
        response.sendRedirect("adminnotice.jsp");
      //if checked==on, if unchecked=null
%>