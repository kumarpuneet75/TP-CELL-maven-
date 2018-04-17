<%
    
    if(request.getParameter("uotp")!=null && request.getParameter("uotp").equals(session.getAttribute("otp")) )
    {   
        try{
            out.print((String)session.getAttribute("newreg"));
            DB.DBlayer.executeq((String)session.getAttribute("newreg"));
             session.removeAttribute("otp");
           response.sendRedirect("index.jsp?reg=1");
        }
        catch(Exception e)
        {
            out.print((String)session.getAttribute("newreg"));
             session.removeAttribute("otp");
             session.removeAttribute("to");
             session.removeAttribute("sub");
             session.removeAttribute("msg");
             session.removeAttribute("returnpage");
                
             response.sendRedirect("index.jsp?reg=2");
        }
    }
    else
    {
             session.removeAttribute("otp");
             session.removeAttribute("to");
             session.removeAttribute("sub");
             session.removeAttribute("msg");
             session.removeAttribute("returnpage");
                
                response.sendRedirect("index.jsp?reg=0");
                
    }
       

%>