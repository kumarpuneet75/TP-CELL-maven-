<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%
    String q="select * from student where studentid='"+session.getAttribute("id")+"'";
        ResultSet rs=DB.DBlayer.getResult(q);
       rs.next();
    if(request.getParameter("e")!=null)
    {
%>
<br>
<script>
     function validate(){

                var checkString = document.forms.f.pass.value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters");
                            document.forms.f.pass.focus();
                            return (false);
                        }
                }
}
    </script>
<form name="f" method="post" action="updatemyprofile.jsp" onsubmit="return validate()" >
<table  width="100%" border="0" cellspacing="2" cellpadding="1">

                            <tr>
                                <td align="right">
                                    Email:
                                </td>
                                <td width="70%" align="left" >
                                    <input required type="text" value="<% out.print(rs.getString(2)); %>"  size="40" readonly="">
                                </td>

                            </tr>
                            <tr>
                                <td align="right">
                                    Name:
                                </td>
                                <td width="70%" align="left" >
                                    <input required type="text" value="<% out.print(rs.getString(4)); %>" size="40" readonly="">
                                </td>

                            </tr><tr>
                                <td align="right">
                                    Roll Number:
                                </td>
                                <td width="70%" align="left" >
                                    <input required type="text" value="<% out.print(rs.getString(5)); %>" name="rno" size="40" readonly="">
                                </td>

                            </tr><tr>
                                <td align="right">
                                    Password:
                                </td>
                                <td width="70%" align="left" >
                                    <input required type="text" value="<% out.print(rs.getString(3)); %>" name="pass" size="40">
                                </td>

                            </tr>
                           
                            <tr>
                                <td colspan=2 align="center">
                                    <input type="submit" value="Update" /> &nbsp; &nbsp;  <input type="button" value="Cancel" onclick="window.location='myprofile.jsp'">
                                </td>
                            <tr>

</table>
                                </form>

<%
    }
  else
    {
%>

<br>
<table  width="100%" border="0" cellspacing="2" cellpadding="1">
    <tr>
         <td align="right">
             Email:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(2)); %>
         </td>

     </tr>

     <tr>
         <td align="right">
             Name:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(4)); %>
         </td>
   </tr>
   <tr>
         <td align="right">
             Roll Number:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(5)); %>
         </td>
   </tr>
   <tr>
         <td align="right">
             Password:
         </td>
         <td width="70%" align="left" >
             <% out.print(rs.getString(3)); %>
         </td>
   </tr>
    
     <tr>
         <td colspan="2" align="center">

             <input type="button" value="Edit" name="b" onclick="window.location='myprofile.jsp?e=1'" >
         </td>
     </tr>
</table>

<% }
 
rs.close();
%>
<%@include file="footer.jsp" %>
