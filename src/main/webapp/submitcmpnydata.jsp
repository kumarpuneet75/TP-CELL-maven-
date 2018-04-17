
<%@page import="java.sql.*"%>
<%
    String q,cn=request.getParameter("cn");
    int i=Integer.parseInt(request.getParameter("count"));
    if(request.getParameter("update")==null)
    {    q="insert into `"+cn+"` values ("+session.getAttribute("id")+",";
      for(int j=1;j<i;j++)
      {   
          q=q+"'"+request.getParameter("n"+j)+"'";
                  if(j!=i-1)
                      q=q+",";
                  else
                      q=q+")";
          
      }  
    }
    else
    {   
        ResultSet rs=DB.DBlayer.getResult("select * from "+cn+"sub");
     q="update `"+cn+"` set ";
      for(int j=1;j<i;j++)
      {   rs.next();
          q=q+rs.getString(1)+"='"+ request.getParameter("n"+j)+"'";
                  if(j!=i-1)
                      q=q+",";
                  else
                      q=q+" where studentid='"+session.getAttribute("id")+"'";
          
      }   
      rs.close();
    }
   out.print("<script type=\"text/javascript\">alert(\""+q+"\");</script>");
           try{
                   DB.DBlayer.executeq(q);
                   response.sendRedirect("managesubmissions.jsp?ss=1");
               }
               catch(Exception e){
                   
                   out.print("<script type=\"text/javascript\">alert(\"Some error occured,Recheck "+e+"\");</script>");
               }
               
        
        
%>
    