<%@include file="adminheader.jsp" %>


<%
if (request.getParameter("e")!=null)
{
  out.print("<script>alert("Please Enter the details of the Student to be searched")</script>");
}
%>

                    <br><br>
<form name="search" method="get" action="adminstudentdetails.jsp">
        <div style="align:left" class="label"> Search by Name : </div>
        <div><input type="text" name="name"><br><br></div>
        <div style="align:left" class="label">Search by Roll Number : </div>
        <div><input type="number" name="roolno"><br><br></div>
        <div style="align:left" class="label">Search by Email ID  : </div>
        <div><input type="email" name="emailid"><br><br></div>
        <div style="align:left" class="label">Search by Registraion Number : </div>
        <div><input type="number" name="regno"><br><br></div>
        <div class="">
          <input type="submit" value="Search">
        </div>





<%@include file="adminfooter.jsp" %>
