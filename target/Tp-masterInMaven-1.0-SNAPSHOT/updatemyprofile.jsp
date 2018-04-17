<%
  String q="update student set `password`='"+request.getParameter("pass")+"' where studentid='"+session.getAttribute("id") +"'";
    
DB.DBlayer.executeq(q);
response.sendRedirect("myprofile.jsp");
%>