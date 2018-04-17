<%
    if(session.getAttribute("aun")==null || session.getAttribute("em")==null)
        response.sendRedirect("index.jsp?s=1");
%>


<html>
    <head>
      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <title>Administrator</title>
    <style type="text/css">
            a {text-decoration:none;}

                        th th{
                            padding: 5px;
                        }
                        td td{
                          padding: 5px;
                        }
        </style>

        <style>
            .width
            {
             width:100px;
            }
        </style>


    </head>
    <body >

        <table bgcolor="white"  width=100%  border="1" cellspacing="0" cellpadding="0">
            <tr bgcolor="Blue">
                <td height="20" colspan="2" align="center" bgcolor="#0033FF">
                    <a href="adminlogedin.jsp" >     <font color="white">Punjabi University Training and Placement Cell</font>      </a>           </td>
            </tr>
            <tr>
            <img  width="20%" height="139" src="http://www.punjabiuniversity.ac.in/pbiuniweb/imagesnew/index_01.jpg"  ><img   width="11%" height="139" src="http://www.punjabiuniversity.ac.in/pbiuniweb/imagesnew/index_04.jpg"  ><img   width="40%" height="139" src="http://www.punjabiuniversity.ac.in/pbiuniweb/imagesnew/index_03.jpg"  ><img   width="29%" height="139" src="http://www.punjabiuniversity.ac.in/pbiuniweb/imagesnew/index_04.jpg"  >
           </tr>
            <tr>
                <td height="20" colspan="2">
                    Welcome Admin <% out.print(session.getAttribute("aun")); %> <a href="adminlogout.jsp">(Logout)</a>
                </td>
            </tr>
            <tr>
                <td   valign="top" width="250" >
                    <table border="0" width=100%>
<!--                        <tr>
                            <td valign="top">
                                <img align="left" hspace="5" vspace="5" title="DP" src="images/5.png" width="160" height="150"/>
                            </td>
                        </tr>-->
                        <tr>
                            <td>
                                <font size="5"><a href="admingetreport.jsp" >Get Report</a></font>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="5"><a href="adminnotice.jsp" >Notices</a></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font size="5"><a href="adminaddnotice.jsp" >Add new Notice</a></font>
                            </td>
                        </tr>
<!--                        <tr>
                            <td>
                                <font size="5"><a href="adminsearchstudent.jsp" >Search Student</a></font>
                            </td>
                        </tr>-->
                       <tr>
                            <td>
                                <font size="5"><a href="adminlogout.jsp" >Logout</a></font>
                            </td>
                        </tr>

                    </table>
                </td>

                <td  valign="top" align="center">
