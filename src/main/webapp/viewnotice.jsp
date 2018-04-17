<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<table width="100%" border="0">
    <tr  bgcolor="lightblue">
        <th width="5%">
            Notice ID
        </th>
        <th width="20%">
            Title
        </th>
        <th width="40%">
            Description
        </th>
        
        <th width="20%">
            Date Added
        </th >
        <th width="15%">
            Added By
        </th>
    </tr>
<%
        int i=1;
        ResultSet rs=DB.DBlayer.getResult("select * from notices where active=true");
        while(rs.next())
        {   
            if(i%2==0)
            out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td valign =top align=center>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
            else
            out.print("<tr bgcolor=lightyellow><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td  >"+rs.getString(3)+"</td><td valign =top align=center>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
                i++;
        }
         
rs.close();
%>    


</table>
<%@include file="footer.jsp" %>