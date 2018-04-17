<%
    String q="delete from notices where noticeid="+request.getParameter("rid");
    DB.DBlayer.executeq(q); 
    response.sendRedirect("adminnotice.jsp");
    
    %>