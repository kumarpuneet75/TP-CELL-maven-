
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@page language="java" import="java.sql.*"%>
<%
    DateFormat df = new SimpleDateFormat("dd-MM-yy HH:mm:ss");
    Date dateobj = new Date();
    String em=request.getParameter("em"),pw=request.getParameter("pw");
                      
                    ResultSet rs=DB.DBlayer.getResult("select * from student  where email='"+em+"' and password='"+pw+"'");
    if(!rs.next())
    { 
        
        
        rs=DB.DBlayer.getResult("select * from admin  where email='"+em+"' and password='"+pw+"'");
        if(!rs.next())
        {
             rs.close();  
             response.sendRedirect("index.jsp?x=2");
        }
     
        else
        {
            session.setMaxInactiveInterval(20*60);
            session.setAttribute("aun",rs.getString("aname"));
            session.setAttribute("em", em);
            session.setAttribute("aid",rs.getString("adminid"));
        
        DB.DBlayer.executeq("insert into activitylog (email,typeofuser,datetimeofactivity,activityperformed,performedonIP)values ('"+em+"','admin','"+df.format(dateobj)+"','loggedin','"+request.getRemoteAddr()+"')");
       rs.close();
        response.sendRedirect("adminlogedin.jsp");
       }
    }
    else
    {
        session.setMaxInactiveInterval(20*60);
        session.setAttribute("un",rs.getString("sname"));
        session.setAttribute("em", em);
        session.setAttribute("id",rs.getString("studentid"));
        DB.DBlayer.executeq("insert into activitylog (email,typeofuser,datetimeofactivity,activityperformed,performedonIP)values ('"+em+"','student','"+df.format(dateobj)+"','loggedin','"+request.getRemoteAddr()+"')");
       
         rs.close();
         response.sendRedirect("logedin.jsp");
      
    }
    
%>
