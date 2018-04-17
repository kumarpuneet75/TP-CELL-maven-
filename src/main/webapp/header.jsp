
<%
    if(session.getAttribute("un")==null || session.getAttribute("em")==null)
        response.sendRedirect("index.jsp?s=1");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <style type="text/css">
            a {text-decoration:none;}

            th th{
                padding: 5px;
            }
            td td{
              padding: 5px;
            }
            body{
font-size: 160%;
}
        </style>
        <title>Student Logged In</title>
    </head>
    <body >

        <table  bgcolor="white"  width=100%  border="1" cellspacing="0" cellpadding="0">
            <tr bgcolor="Blue">
                <td height="20" colspan="2" align="center" bgcolor="#0033FF">
                      <a href="http://www.punjabiuniversity.ac.in/pbiuniweb/placementsnew.html" >     <font color="white">Punjabi University Training and Placement Cell</font>      </a>
                </td>

            </tr>
            <tr>
            <marquee direction="left" behavior="scroll"><img height="200" src="http://www.rightattitudes.com/blogincludes/images/Franklin_D_Roosevelt_Quotations.jpg"><img height="200" src="http://i.imgur.com/CyMKyio.jpg"><img height="200" src="http://i.imgur.com/De5NDrZ.jpg"> <img height="200" src=" http://i.imgur.com/mvXisfG.jpg"> <img height="200" src="http://i.imgur.com/sGqbBgH.png"></marquee>
            </tr>
            <tr>
                <td height="20" colspan="2">
                    Welcome <% out.print(session.getAttribute("un")); %> <a href="logout.jsp">(Logout)</a>
                </td>
            </tr>
            <tr>
                <td   valign="top" width="250" >
                    <br>
                    <table border="0" width=100% >

                     <tr>
                            <td>
                                       <font size="5"><a href="viewnotice.jsp" >View Notices</a></font>
                            </td>
                        </tr>
                        <tr>
                           <td>
                               <font size="5"><a href="myprofile.jsp" >My Profile</a></font>
                           </td>
                        </tr>
                         <tr>
                            <td>
                                <font size="5"><a href="scholasticdatastep1.jsp" >Scholastic Data</a></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font size="5"><a href="scholasticdata.jsp" >View Previous Submission</a></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font size="5"><a href="logout.jsp" >Logout</a></font>
                            </td>
                        </tr>

                    </table>
                </td>

                <td  valign="top" align="center">
