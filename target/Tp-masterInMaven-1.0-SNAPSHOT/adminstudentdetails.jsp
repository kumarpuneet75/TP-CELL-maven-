
<%@page import="java.sql.*"%>
<%@include file="adminheader.jsp" %>

<%
    String name = request.getParameter("name");
    String rollno = request.getParameter("rollno");
    String emailid = request.getParameter("emailid");
    String regno = request.getParameter("regno");

    if(name==null && rollno==null && emailid==null && regno==null )
      response.sendRedirect("adminsearchstudent.jsp?e=1");

    String q="select * from student where "
    +name!=null?"sname like %" + name + "% OR ":""
    +rollno!=null?"rollno ='" + name + " OR ":""
    +emailid!=null?"emailid like %" + emailid + "% OR ":""
    +name!=null?"sname like %" + name + "% OR":""
     ;
        ResultSet rs=DB.DBlayer.getResult(q);
       rs.next();

%>
<br>
<table  width="100%" border="0" cellspacing="2" cellpadding="1">
    <tr>
         <td align="right">
             Email:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(4)); %>
         </td>

     </tr>

     <tr>
         <td align="right">
             Name:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(7)); %>
         </td>

     </tr>
     <tr>
         <td align="right">
             UID:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(2)); %>
         </td>
     </tr>

     <tr>
         <td align="right">
             Session:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(3)); %>
         </td>
     </tr>
     <tr>
         <td align="right">
             Father Name:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(9)); %>
         </td>
     </tr>
     <tr>
         <td align="right">
             Mother Name:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(10)); %>
         </td>
     </tr>

     <tr>
         <td align="right">
             Date Of Birth:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(8)); %>
         </td>
     </tr>
   <tr>
         <td align="right">
             Phone No.:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(5)); %>
         </td>
     </tr>
     <tr>
         <td colspan="2" align="center">

             <input type="button" value="Edit" name="b" onclick="window.location='myprofile.jsp?e=1'" >
         </td>
     </tr>
</table>

<%rs.close();%>
<%@include file="adminfooter.jsp" %>
