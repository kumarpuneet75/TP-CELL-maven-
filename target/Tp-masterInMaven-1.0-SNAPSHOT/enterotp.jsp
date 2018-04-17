<% 
     
    
    if(request.getParameter("sent")!=null && request.getParameter("sent").equals("failed"))
    response.sendRedirect("index.jsp?email=f");
    

%>



<h1 align="center">Enter OTP</h1>
<div align="center">
<form name="f1" action="insertstudentdata.jsp" method="post">
    OTP:<input type="checkresult" name="uotp" value="">
    <br>
    <input type="submit">
    
</form>
    </div>