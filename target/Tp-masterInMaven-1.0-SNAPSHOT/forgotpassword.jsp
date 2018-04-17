
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% if(request.getParameter("e")!=null)
        out.print("<script>alert('Use only your Registered Email ID');</script>");
%>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
        
       
   <table  bgcolor="white"  width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tr bgcolor="Blue">
                 <td height="20" colspan="2" align="center" bgcolor="">
                      <a href="http://www.punjabiuniversity.ac.in/pbiuniweb/placementsnew.html" >     <font color="white">Punjabi University Training and Placement Cell</font>      </a>  
                </td>
            </tr>
        <tr height="100">
                <td colspan="2" align="center">
                     <img  width="50%" height="100%" src="http://www.punjabiuniversity.ac.in/pup/images/logo.png"  >        </td>
            </tr>
            <tr >
                <td style="text-align: center;" >
                    
                     <table width=500  align="center">
                         <tr><td colspan=2 align="center"> <h2>Enter your Email ID</h2><br> Your Password will be sent to your registered email id only.<br><hr></td></tr>
                       
        <form name="frm" method="post" action="sendpassword.jsp">
                        <tr >
                              <td  align="center">
                                  
                                  &nbsp;&nbsp;&nbsp; Email ID:
                              </td>
                              <td align="center">
                                  <input type="email" name="t1" value="">
                              </td>
                        </tr>
                        <tr>
                            <td align="center" colspan=2> <br><input type="submit" name="b1" value="Recover Password">  <br><br></td>
                        </tr>
         </form>
                       
                </td>     
            </tr>
              </table>
            <tr bgcolor="#993300" height="20">
            <td colspan="2"  align="center" bgcolor="#0066FF ">
                <font color="white">About Us </font>                
            </td>             
            </tr>
              
         </table>     
    </body>
</html>
