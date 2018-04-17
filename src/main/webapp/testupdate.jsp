<%-- 
    Document   : testupdate
    Created on : 17 Aug, 2017, 10:19:30 AM
    Author     : rahul
--%>

<%@page import="studata.result"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <%
        studata.result ob=new result();
        ob.main(new String[] {""});
    %>
</html>
