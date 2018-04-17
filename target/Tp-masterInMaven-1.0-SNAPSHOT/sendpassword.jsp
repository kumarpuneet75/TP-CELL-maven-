<%
String s="select password from student where email='"+request.getParameter("t1")+"';";
     String q=DB.DBlayer.getScaler(s);
    
    if(q==null|| q.equals(""))
    {
        
        response.sendRedirect("forgotpassword.jsp?e=1");
    }
    else
    {
        session.setAttribute("to", request.getParameter("t1"));
        session.setAttribute("sub","Your Password to login at TPCell.com");
        session.setAttribute("msg","Your password is "+q+"");
        session.setAttribute("returnpage","index.jsp");
        response.sendRedirect("sendmail.jsp");
    }
%>