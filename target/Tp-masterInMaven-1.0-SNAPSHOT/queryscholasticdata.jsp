<%-- 
    Document   : queryscholasticdata
    Created on : 2 Aug, 2017, 1:26:17 PM
    Author     : RahulDeep Attri
--%>

<%
//    try{
        DB.DBlayer.executeq((String)session.getAttribute("query"));
//    }catch(Exception e)
//    {
//        System.err.println(e);
//    }
    response.sendRedirect("scholasticdata.jsp");
%>
