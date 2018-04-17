<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<form name="f" method="post" action="managesubmissions.jsp">
<select name="company">
    <option value="0" >Select..</option>
<%
     
    ResultSet rs=DB.DBlayer.getResult("select * from subavail ");
    while(rs.next())
    {   //out.print("<input type=\"button\" value=\""+rs.getString(1)+"\" name=\""+rs.getString(1)+"\" ><br>");
        out.print("<option value=\""+rs.getString(1)+"\" onclick=\"document.forms[0].submit()\" "+ (request.getParameter("company")!=null && request.getParameter("company").equals(rs.getString(1))?"selected":"")+" >"+rs.getString(1)+"</option><br>");
    }
%>
</select>
<%
    
%>
</form>
<form method="post" name="f2" action= "submitcmpnydata.jsp" >
    <input type="hidden" value="<% out.print(request.getParameter("company")); %>" name="cn">    
<% 
     String cn=request.getParameter("company");
    
    if( request.getParameter("ss")!=null && request.getParameter("ss").equals("1"))
        out.print("Submision  Success");
   else
   {
    
   

  if(!(cn==null))
  { 
     rs=DB.DBlayer.getResult("select * from "+cn+" where studentid="+session.getAttribute("id"));
     boolean b=rs.next();
     if(b)
         out.print("<input type=hidden value=1 name=update>");
     int i=rs.getMetaData().getColumnCount();
     for(int j=1;j<i;j++)
        out.print(rs.getMetaData().getColumnName(j+1) +": <input name= \"n"+j+"\" type="+((rs.getMetaData().getColumnTypeName(j+1).equals("DECIMAL") && rs.getMetaData().getScale(j+1)==0) || rs.getMetaData().getColumnTypeName(j+1).equals("INT") ?"number":"text") +" value='"+(b!=false?rs.getString(j+1):"") +"'><br>");
     out.print("<input type=\"hidden\" value="+i+" name=\"count\">");
  } 
    
    
%>
<input type="submit" value="Enter" >
<%
    } 
rs.close();
%>
</form>
<%@include file="footer.jsp" %>