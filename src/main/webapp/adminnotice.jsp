<%@page import="java.sql.*"%>

<%@include  file="adminheader.jsp" %>


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
        
        <th width="15%">
            Options
        </th>
        <th width="10%">
            Date Added
        </th >
        <th width="20%">
            Added By
        </th>
    </tr>
<%
        int i=1;
        ResultSet rs=DB.DBlayer.getResult("select * from notices order by noticeid desc");
        while(rs.next())
        {   
            if(request.getParameter("id")!=null && request.getParameter("id").equals(rs.getString(1)))
            out.print("<form name=\"f1\" method=\"post\" action=\"adminupdatenotice.jsp\" ><input type=hidden name=eid value='"+rs.getString(1)+"' ><tr><td>"+rs.getString(1)+"</td><td><input type=text name=t2 value='"+rs.getString(2)+"'></td><td><input type=text name=t3 value='"+rs.getString(3)+"'></td><td><input type=checkbox name=t4 "+ (rs.getString(4).equals("1")?"checked":"")+" >Active <input type=submit value=Save ><input type=Button value=Abort onclick=window.location='adminnotice.jsp'></td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr></form>");
            else if(i%2==0)
            out.print("<form name=\"f2\" method=\"post\" action=\"admindeleterecord.jsp\" ><input type=hidden name=rid value='"+rs.getString(1)+"' ><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td  >"+rs.getString(3)+"</td><td valign =top align=center>"+(rs.getString(4).equals("0")?"<font size=1 color=red>Disabled</font>":"<font size=1 color=green>Enabled</font>")+"<br><input type=button height=10 value=Edit onclick=window.location='adminnotice.jsp?id="+rs.getString(1)+"' ><input type=submit value=Remove  ></td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr></form>");
            else
            out.print("<form name=\"f3\" method=\"post\" action=\"admindeleterecord.jsp\" ><input type=hidden name=rid value='"+rs.getString(1)+"' ><tr bgcolor=lightyellow><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td  >"+rs.getString(3)+"</td><td valign =top align=center>"+(rs.getString(4).equals("0")?"<font size=1 color=red>Disabled</font>":"<font size=1 color=green>Enabled</font>")+"<br><input type=button value=Edit onclick=window.location='adminnotice.jsp?id="+rs.getString(1)+"' ><input type=submit value=Remove ></td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr></form>");
                i++;
        }
        rs.close();
        
%>    

</table>
<br><input type="button"  value="Add New Notice" onclick="window.location='adminaddnotice.jsp'">  <br>

<%@include file="adminfooter.jsp" %>