<%
        studata.Studentscholasticdata ob=(studata.Studentscholasticdata)session.getAttribute("studata");
        String z=DB.DBlayer.getScaler("select max(`version`) from studentscholasticdata where studentid='"+session.getAttribute("id")+"'");
        int v;
        if(z==null)
            v=0;
        else
      v=Integer.parseInt(z)+1;
    if(v==10)
    {
        response.sendRedirect("logedin.jsp?nm=1");
    }
%>
<html>

<head>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <style type="text/css">
    a {
      text-decoration: none;
    }

    th th {
      padding: 5px;
    }

    td td {
      padding: 5px;
    }
  </style>
  <title>Student Logged In</title>
</head>

<body>

  <table bgcolor="white" width=100% border="1" cellspacing="0" cellpadding="0">
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
          Welcome <%out.print(session.getAttribute("un"));%> <a href="logout.jsp">(Logout)</a>
      </td>
    </tr>
    <tr>
      <td valign="top" width="250">
        <br>
        <table border="0" width=100%>

          <tr>
            <td>
              <font size="5"><a href="viewnotice.jsp">View Notices</a></font>
            </td>
          </tr>
          <tr>
            <td>
              <font size="5"><a href="myprofile.jsp">My Profile</a></font>
            </td>
          </tr>
          <tr>
            <td>
              <font size="5"><a href="scholasticdatastep1.jsp">Scholastic Data</a></font>
            </td>
          </tr>
          <tr>
            <td>
              <font size="5"><a href="scholasticdata.jsp">View Previous Submission</a></font>
            </td>
          </tr>
          <tr>
            <td>
              <font size="5"><a href="logout.jsp">Logout</a></font>
            </td>
          </tr>

        </table>
      </td>

      <td valign="top" align="center">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


        <style>
          /* simple css-based tooltip */

          .tooltip {
            background-color: #000;
            border: 1px solid #fff;
            padding: 10px 15px;
            width: 200px;
            display: none;
            color: #fff;
            text-align: left;
            font-size: 12px;

            /* outline radius for mozilla/firefox only */
            -moz-box-shadow: 0 0 10px #000;
            -webkit-box-shadow: 0 0 10px #000;
          }


          #table-example-1 {
            border: none;
            border-collapse: collapse;
          }

          #table-example-1 caption {
            padding-bottom: 0.5em;
          }

          #table-example-1 th,
          #table-example-1 td {
            border: compact;
            padding: 0.5rem 1rem;
          }

          #table-example-1 td {
            white-space: nowrap;
          }

          #table-example-1 th {
            font-weight: normal;
          }

          #table-example-1 td {
            border-style: groove;
            vertical-align: top;
          }

          #table-example-1 th {
            padding: 0.2em;
            vertical-align: middle;
            text-align: center;
          }

          #table-example-1 tr {

            class: row row-centered;
          }

          #table-example-1 th {
            class: col col-centered;
          }

          #table-example-1 tbody td:first-child::after {
            content: leader(". ");
          }

          .hover {
            background: lightgreen;
          }


          .row-centered {
            text-align: center;
          }

          .col-centered {
            display: inline-block;
            float: none;
            /* reset the text-align */
            text-align: left;
            /* inline-block space fix */
            margin-right: -4px;
          }
        </style>
        <script>
          function validate() {
            //Name Validating
            var x = document.forms.studata['First Name'].value;
            x = x.trim();
            var res = x.charAt(0).toUpperCase();
            document.forms.studata['First Name'].value = x.replace(x.charAt(0), res);
            x = document.forms.studata['Middle Name'].value;
            x = x.trim();
            res = x.charAt(0).toUpperCase();
            document.forms.studata['Middle Name'].value = x.replace(x.charAt(0), res);
            x = document.forms.studata['Last Name'].value;
            x = x.trim();
            res = x.charAt(0).toUpperCase();
            document.forms.studata['Last Name'].value = x.replace(x.charAt(0), res);


          }
        </script>

        <fieldset disabled="">
        <form id="myform" name="studata" method="post" action="submitscholasticdata.jsp?ss=1" onsubmit="validate()">
          
            <div id="inputs">

              <table width="100%" id='table-example-1' class="zebra" border='0'>

                <script>
                  alert(
                    'Note: One student can submit scholastic data only limited number of times.You are allowed only 10 updations.The next page now opened will show you the data you have entered.The version tab will tell you how many times you have updated your data. Also the student will be be responsible if the students enters wrong data.YOU MAY GO BACK NOW AND CORRECT ANY ERRORS.If you found any difficulties or have any queries,contact your respective Placment Representatives. '
                  );
                </script>
                <tr>
                  <td>
                <center><b>University Record</b></center>
                      <br>
                    <font color=red>*</font>Version&nbsp;:&nbsp;<input title='' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text name='Version' value='<%=v%>' ReadOnly /><br><br>
                    <font color=red>*</font>Department&nbsp;:&nbsp;<select title='Enter your respective department in PUP' name='Department'><option><%=ob.getDepartment()%></option></select><br><br>
                    <font color=red>*</font>Stream&nbsp;:&nbsp;<select title='' name='Stream'><option><%=ob.getStream()%></option></select><br><br>
                    <font color=red>*</font>Roll No.&nbsp;:&nbsp;<input title='Increase the length if roll no. exceeds the 8 digits' type=number name='Roll No.' value='<%=ob.getRollno()%>' required/><br><br>
                    <font color=red>*</font>Univ.Reg No.&nbsp;:&nbsp;<input title='Increase the length if reg no. exceeds 9 digits' type=text name='Univ.Reg No.' value='<%=ob.getUnivregno()%>' required/><br><br>
                    <font color="red">*</font>Participating&nbsp;:&nbsp;<select title='Enter "YES" for participation in placement activities. Enter "NO" if you are providing the data, but do not want to participate in any of the campus recruitment processes.'  name="Participating" required><option value='YES' <% if(ob.getParticipating().equals("Y") )out.print("selected");%> >YES</option><option value='NO'  <% if(ob.getParticipating().equals("N") )out.print("selected");%>   >NO</option></select></td>
                  <td>
                        <center><b>Personal Profile</b></center>
                      <br>
                    <font color=red>*</font>Gender&nbsp;:&nbsp;
                        <select name="Gender" required>
                            <option></option>
                             <option value="M" <%if(ob.getGender().equals('M')) out.print("selected"); %> >Male</option>
                             <option value="F" <%if(ob.getGender().equals('F')) out.print("selected"); %> >Female</option>
                             <option value="O" <%if(ob.getGender().equals('O')) out.print("selected"); %> >Others</option>
                         </select> <br><br>
                    <font color=red>*</font>Residence&nbsp;:&nbsp;
                         <select name="Residence" required >
                            <option></option>
                            <option value="Hosteller" <%if(ob.getResidence().equals("Hosteller")) out.print("selected"); %>  >Hosteller</option>
                            <option value="Local" <%if(ob.getResidence().equals("Local")) out.print("selected"); %>  >Local</option>
                            <option value="Commutter from other station" <%if(ob.getResidence().equals("Commutter from other station")) out.print("selected"); %>  >Commutter from other station</option>
                        </select>
                 <br><br><font color="red">*</font>Course Status&nbsp;:&nbsp;
                <select name="Course Status" required >
                    <option></option>
                    <option value="Pending"  <%if(ob.getCourseStatus().equals("Pending")) out.print("selected"); %> >Pending/Pursuing</option>
                    <option value="Completed"  <%if(ob.getCourseStatus().equals("Completed")) out.print("selected"); %> >Completed</option>
                </select> 
                    <br><br><font color=red>*</font>Name&nbsp;:&nbsp;<input title='' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text name='NAME' value='<%=ob.getName()%>' ReadOnly />
                       <br><br><font color="red">*</font>Father's Name&nbsp;:&nbsp;<input title="" type="text" name="Fathers Name"   <%out.print("value='"+ob.getFathersName()+"'");%>  required="">
                        <br><br><font color="red">*</font>Date Of Birth&nbsp;:&nbsp;<input title="" type="date" name="DOB"  <%out.print("value='"+ob.getDob()+"'");%>    required="">
</td>
                  <td>
                 <br><br>Address&nbsp;:&nbsp; <textarea  type="text" name="Address"   ><%out.print(ob.getAddress());%></textarea>
        <br><br><font color="red">*</font>State&nbsp;:&nbsp;
        <select  name="State" required><option></option>
            <%String x=ob.getState(); %>
            <option value="Andaman and Nicobar Islands"   <%if(x.equals("Andaman and Nicobar Islands")) out.print("selected"); %>  >Andaman and Nicobar Islands</option>
            <option value="Andhra Pradesh"   <%if(x.equals("Andhra Pradesh")) out.print("selected"); %> >Andhra Pradesh</option>
            <option value="Arunachal Pradesh"  <%if(x.equals("Arunachal Pradesh")) out.print("selected"); %> >Arunachal Pradesh</option>
            <option value="Assam" <%if(x.equals("Assam")) out.print("selected"); %> >Assam</option>
            <option value="Bihar" <%if(x.equals("Bihar")) out.print("selected"); %> >Bihar</option>
            <option value="Chandigarh"<%if(x.equals("Chandigarh")) out.print("selected"); %> >Chandigarh</option>
            <option value="Chhattisgarh"  <%if(x.equals("Chhattisgarh")) out.print("selected"); %> >Chhattisgarh</option>
            <option value="Dadra and Nagar Haveli" <%if(x.equals("Dadra and Nagar Haveli")) out.print("selected"); %> >Dadra and Nagar Haveli</option>
            <option value="Daman and Diu" <%if(x.equals("Daman and Diu")) out.print("selected"); %> >Daman and Diu</option>
            <option value="Delhi" <%if(x.equals("Delhi")) out.print("selected"); %> >Delhi</option>
            <option value="Goa" <%if(x.equals("Goa")) out.print("selected"); %> >Goa</option>
            <option value="Gujarat" <%if(x.equals("Gujarat")) out.print("selected"); %> >Gujarat</option>
            <option value="Haryana" <%if(x.equals("Haryana")) out.print("selected"); %> >Haryana</option>
            <option value="Himachal Pradesh" <%if(x.equals("Himachal Pradesh")) out.print("selected"); %> >Himachal Pradesh</option>
            <option value="Jammu and Kashmir" <%if(x.equals("Jammu and Kashmir")) out.print("selected"); %> >Jammu and Kashmir</option>
            <option value="Jharkhand" <%if(x.equals("Jharkhand")) out.print("selected"); %> >Jharkhand</option>
            <option value="Karnataka" <%if(x.equals("Karnataka")) out.print("selected"); %> >Karnataka</option>
            <option value="Kerala" <%if(x.equals("Kerala")) out.print("selected"); %> >Kerala</option>
            <option value="Lakshadweep"  <%if(x.equals("Lakshadweep")) out.print("selected"); %> >Lakshadweep</option>
            <option value="Madhya Pradesh" <%if(x.equals("Madhya Pradesh")) out.print("selected"); %> >Madhya Pradesh</option>
            <option value="Maharashtra" <%if(x.equals("Maharashtra")) out.print("selected"); %> >Maharashtra</option>
            <option value="Manipur" <%if(x.equals("Manipur")) out.print("selected"); %> >Manipur</option>
            <option value="Meghalaya" <%if(x.equals("Meghalaya")) out.print("selected"); %> >Meghalaya</option>
            <option value="Mizoram" <%if(x.equals("Mizoram")) out.print("selected"); %> >Mizoram</option>
            <option value="Nagaland" <%if(x.equals("Nagaland")) out.print("selected"); %> >Nagaland</option>
            <option value="Odisha" <%if(x.equals("Odisha")) out.print("selected"); %> >Odisha</option>
            <option value="Puducherry" <%if(x.equals("Puducherry")) out.print("selected"); %> >Puducherry</option>
            <option value="Punjab" <%if(x.equals("Punjab")) out.print("selected"); %> >Punjab</option>
            <option value="Rajasthan" <%if(x.equals("Rajasthan")) out.print("selected"); %> >Rajasthan</option>
            <option value="Sikkim" <%if(x.equals("Sikkim")) out.print("selected"); %> >Sikkim</option>
            <option value="Tamil Nadu" <%if(x.equals("Tamil Nadu")) out.print("selected"); %> >Tamil Nadu</option>
            <option value="Telegana" <%if(x.equals("Telegana")) out.print("selected"); %> >Telegana</option>
            <option value="Tripura" <%if(x.equals("Tripura")) out.print("selected"); %> >Tripura</option>
            <option value="Uttar Pradesh" <%if(x.equals("Uttar Pradesh")) out.print("selected"); %> >Uttar Pradesh</option>
            <option value="Uttarakhand" <%if(x.equals("Uttarakhand")) out.print("selected"); %> >Uttarakhand</option>
            <option value="West Bengal" <%if(x.equals("West Bengal")) out.print("selected"); %> >West Bengal</option>
        </select>
          <%x=null;%>
        <br><br><font color="red">*</font>Student's Contact&nbsp;:&nbsp;<input title="" type="number" min="999999999" max="9999999999" name="Contact Student"  <%out.print("value='"+ob.getContactStudent()+"'");%> required>
    <br><br><font color="red">*</font>Student's Parent Contact&nbsp;:&nbsp;<input title="" type="number"  min="999999999" max="9999999999" name="Contact Parent" <%out.print("value='"+ob.getContactParent()+"'");%>  required >
    <br><br>Email ID&nbsp;:&nbsp;<input title="" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type="text" name="Email" value="<%out.print((String)session.getAttribute("em"));%>" readonly="">
    <br><br>
               <% String y=ob.getCategory(); %>
    Category &nbsp; &nbsp;<select name="category" required="">
        <option></option>
        <option value="General" <%if(y.equals("General"))out.print("selected"); %>>General</option>
        <option value="SC"<%if(y.equals("SC"))out.print("selected"); %> >SC</option>
        <option value="BC" <%if(y.equals("BC"))out.print("selected"); %> >BC</option>
        <option value="OBC" <%if(y.equals("OBC"))out.print("selected"); %> >OBC</option>
        <% y=null; %> 
    </select>
    <br>
    <br>
       </td>
                  
                  
                  <tr>
                    <td>
                        
                          <center><b>10th Academic Details</b></center>
                <br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input title="Enter the total maximum marks for Compulsory subjects." type="number" name="10Core Max Marks"   <%out.print("value='"+ob.getTencoreMaxMarks()+"'");%> required="" min='1' max='1500'>
                <br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Enter the Marks obtained in Compulsory Subjects."  type="number" name="10Core Marks"  <%out.print("value='"+ob.getTencoreMarks()+"'");%> step='any' min='1'maxlength="5" required="">
                <br><br><font color="red">*</font>Max Marks<br>(Including Optional subjects)&nbsp;:&nbsp;<input title="Enter the maximum marks including all optional subjects - as they appear on the Detailed Marks Sheet."  type="number" min='1' max='1500' name="10All Max Marks"  <%out.print("value='"+ob.getTenallMaxMarks()+"'");%> required="">
                <br><br><font color="red">*</font>Marks Obtained<br>(Including Optional subjects)&nbsp;:&nbsp;<input title="Enter the marks obtained (including all optional subjects - as they appear on the Detailed Marks Sheet)." type="number" min='1'maxlength="4" step='any' name="10All Marks"  <%out.print("value='"+ob.getTenallMarks()+"'");%> required="">
                <br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input type="number" name="10YOP"  <%out.print("value='"+ob.getTenyop()+"'");%> max='2017' min="1000" required="">
                <br><br><font color="red">*</font>Board&nbsp;:&nbsp;<select title="Provide your Board,viz,CBSE,ICSE,PSEB etc. " name="10Board" required="" onchange="board10()"><option><%=ob.getTenboard()%></option></select>
                </td>
                <td>
                      <%if(session.getAttribute("matric").equals("pmatric")){ %>
                        <center><b>12th Academic Details</b></center>
                <br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input title="Enter the total Max Marks."  type="number" min='1' max='6500' name="12Max Marks"  <%out.print("value='"+ob.getTwelevemaxMarks()+"'");%> required="">
                <br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Enter the marks obtained." type="number" min='1' step='any'  name="12Marks"  <%out.print("value='"+ob.getTwelevemarks()+"'");%> required="">
                <br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input type="number" max='<%=("2017") /*TODO:add a date object for current year*/%>' min="1000" maxlength="4" minlength="4" name="12YOP"  <%out.print("value='"+ob.getTweleveyop()+"'");%> required="">
                <br><br><font color="red">*</font>Board&nbsp;:&nbsp;<select title="Provide your Board,viz,CBSE,ICSE,PSEB etc." name="12Board" required="" onchange="board12()"><option><%=ob.getTweleveboard()%></option></select>
                <%} else {%>
                      <center><b>Diploma Academic Details</b></center>
                <br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input title="Enter the total Max Marks." type="number" min="1" max='6500' name="DiplomaMax Marks"  <%out.print("value='"+ob.getDiplomaMaxMarks()+"'");%>  required="">
                <br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Enter the marks obtained." type="number" min='1' step='any'  name="DiplomaMarks"  <%out.print("value='"+ob.getDiplomaMarks()+"'");%>  required="">
                <br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input title="" type="number" name="DiplomaYOP"  max='2017' min="1000" maxlength="4" minlength="4"  <%out.print("value='"+ob.getDiplomaYOP()+"'");%> required="">
            <%} %>
                
             <% if(session.getAttribute("graduation").equals("pg") ) { %>
                </td>
                
                
                    <td>
                        <br><center><b>Graduation</b></center><font color="red">*</font>Degree&nbsp;:&nbsp;<input title="" type="text" name="Grad.Degree" value="<%=ob.getGraddegree()%>" required=""><br><br><font color="red">*</font>Subject Combination&nbsp;:&nbsp;<input title="" type="text" name="Grad.Subject Combo" value="<%=ob.getGradsubjectCombo()%>" required=""><br><br><font color="red">*</font>Evaluation System&nbsp;:&nbsp;<select name="Evaluation System" required=""><option></option><option value="CGPA" <% if(ob.getGradevaluationSystem().equals("CGPA")) out.print("selected"); %> >CGPA</option><option value="%age" <% if(ob.getGradevaluationSystem().equals("%age")) out.print("selected"); %>>Percentage</option></select><br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input title="" type="number" name="Grad.Max Marks" value="<%=ob.getGradmaxMarks()%>" required="" min="1"><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="" type="number"  step="any"  name="Grad.Marks" value="<%=ob.getGradmarks() %>" required=""><br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input title="" type="number" name="Grad YOP" value="<%=ob.getGradYOP()%>" required=""min="2017" ><br>               
                    </td>
                 <%}%>                 
                  </tr>
                  <%if(session.getAttribute("matric").equals("pmatric")){%>
                  <tr>
                   <td><center><b>Semester 1</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10 ' min="1" name="Sem1MM"  required=""<%out.print("value='"+ob.getSem1MM()+"'");%> ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem1M"  min="0" required="" <%out.print("value='"+ob.getSem1M()+"'");%>  step="any" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem1 BackLogs" title='Specify the total backlogs you had in this semester.' required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem1 Pending"  onchange="backl('1')" required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                    <td><center><b>Semester 2</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem2MM"  required=""  <%out.print("value='"+ob.getSem2MM()+"'");%> ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem2M" required=""  <%out.print("value='"+ob.getSem2M()+"'");%>  min="0"  step="any" required="" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem2 BackLogs" title='Specify the total backlogs you had in this semester.'  required=""><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('2')" name="Sem2 Pending" required=""><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     <td><center><b>Semester 3</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem3MM" required=""  <%out.print("value='"+ob.getSem3MM()+"'");%> ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem3M"  required="" <%out.print("value='"+ob.getSem3M()+"'");%> min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem3 BackLogs" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('3')" name="Sem3 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
        
                  </tr>
                  <tr>
                       <td><center><b>Semester 4</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem4MM" <%out.print("value='"+ob.getSem4MM()+"'");%>  required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem4M"   <%out.print("value='"+ob.getSem4M()+"'");%> min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem4 BackLogs" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('4')" name="Sem4 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
     
                        <% if(session.getAttribute("graduation").equals("ug") ) { %>
                     <td><center><b>Semester 5</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem5MM"   <%out.print("value='"+ob.getSem5MM()+"'");%> required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem5M"   <%out.print("value='"+ob.getSem5M()+"'");%>  min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem5 BackLogs" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('5')" name="Sem5 Pending" required=""><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     <td><center><b>Semester 6</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem6MM"   <%out.print("value='"+ob.getSem6MM()+"'");%> ><br><br>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem6M"   <%out.print("value='"+ob.getSem6M()+"'");%>  min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem6 BackLogs" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('6')" name="Sem6 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     </tr>
                     <tr> 
                     <td><center><b>Semester 7</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10' min="1" name="Sem7MM"  <%out.print("value='"+ob.getSem7MM()+"'");%> ><br><br>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem7M"  min="0"  <%out.print("value='"+ob.getSem7M()+"'");%>  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem7 BackLogs" title='Specify the total backlogs you had in this semester.' ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem7 Pending"  onchange="backl('7')"  ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     <td><center><b>Semester 8</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem8MM"   <%out.print("value='"+ob.getSem8MM()+"'");%> ><br><br>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem8M"   <%out.print("value='"+ob.getSem8M()+"'");%>  min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem8 BackLogs" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('8')" name="Sem8 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
    
                      <%}%>
                  <%}else{ //diploma%>
                  <tr>
                       <% if(session.getAttribute("graduation").equals("pg") ) { %>
                         <td><center><b>Semester 1</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10 ' min="1" name="Sem1MM"  required=""<%out.print("value='"+ob.getSem1MM()+"'");%> ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem1M"  min="0" required="" <%out.print("value='"+ob.getSem1M()+"'");%>  step="any" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem1 BackLogs" title='Specify the total backlogs you had in this semester.' required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem1 Pending"  onchange="backl('1')" required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                        <td><center><b>Semester 2</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem2MM"  required=""  <%out.print("value='"+ob.getSem2MM()+"'");%> ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem2M" required=""  <%out.print("value='"+ob.getSem2M()+"'");%>  min="0"  step="any" required="" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem2 BackLogs" title='Specify the total backlogs you had in this semester.'  required=""><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('2')" name="Sem2 Pending" required=""><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     
                       <%}%>
                  <td><center><b>Semester 3</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem3MM" required=""  <%out.print("value='"+ob.getSem3MM()+"'");%> ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem3M"  required="" <%out.print("value='"+ob.getSem3M()+"'");%> min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem3 BackLogs" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('3')" name="Sem3 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
                <% if(session.getAttribute("graduation").equals("pg") ) out.print("</tr><tr>"); %>
                  <td><center><b>Semester 4</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem4MM" <%out.print("value='"+ob.getSem4MM()+"'");%>  required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem4M"   <%out.print("value='"+ob.getSem4M()+"'");%> min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem4 BackLogs" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('4')" name="Sem4 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
                  
                        <% if(session.getAttribute("graduation").equals("ug") ) { %>
                     <td><center><b>Semester 5</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem5MM"   <%out.print("value='"+ob.getSem5MM()+"'");%> required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem5M"   <%out.print("value='"+ob.getSem5M()+"'");%>  min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem5 BackLogs" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('5')" name="Sem5 Pending" required=""><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     </tr>
                     <tr>
                     <td><center><b>Semester 6</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem6MM"   <%out.print("value='"+ob.getSem6MM()+"'");%> ><br><br>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem6M"   <%out.print("value='"+ob.getSem6M()+"'");%>  min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem6 BackLogs" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('6')" name="Sem6 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     <td><center><b>Semester 7</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10' min="1" name="Sem7MM"  <%out.print("value='"+ob.getSem7MM()+"'");%> ><br><br>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem7M"  min="0"  <%out.print("value='"+ob.getSem7M()+"'");%>  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem7 BackLogs" title='Specify the total backlogs you had in this semester.' ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem7 Pending"  onchange="backl('7')"  ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     <td><center><b>Semester 8</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem8MM"   <%out.print("value='"+ob.getSem8MM()+"'");%> ><br><br>Marks Obtained&nbsp;:&nbsp;<input title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" name="Sem8M"   <%out.print("value='"+ob.getSem8M()+"'");%>  min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem8 BackLogs" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('8')" name="Sem8 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
                     </tr>
                      <%}//else out.print("</tr>");%>
                    <%}%> 
                      <td>
                              <center><b>Description</b></center><br>Total Denominator&nbsp;:&nbsp;<input title='' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text name='Total Denominator' value='<%=ob.getTotalDenominator()%>' ReadOnly /><br><br>Total
                          Numerator&nbsp;:&nbsp;<input title='' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text name='Total Numerator' value='<%=ob.getTotalNumerator()%>' ReadOnly /><br><br>Total BackLogs&nbsp;:&nbsp;
                          <input  title='' name='Total BackLogs' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text  value='<%=ob.getTotalBackLogs()%>' ReadOnly /> <br><br>Pending Sems&nbsp;:&nbsp;<input title='' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text name='Pending Sems' value='<%=ob.getPendingSems()%>' ReadOnly /><br><br>Current %age&nbsp;:&nbsp;<input title='' STYLE="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type=text name='Current %age' value='<%out.print(ob.getCurrentage());%>' ReadOnly />
                      <br><br><textarea title="Description of Gap year if any" name="DescriptionGap" rows="4" cols="20"><%=ob.getDescriptionGap()%></textarea><br>
                      </td>

               
                      </form>
              </table>
              <script src="jquery.tools.min.js" type="text/javascript"></script>
              <script>
                // select all desired input fields and attach tooltips to them
                $("#myform :input").tooltip({

                  // place tooltip on the right edge
                  position: "center right",

                  // a little tweaking of the position
                  offset: [-2, 10],

                  // use the built-in fadeIn/fadeOut effect
                  effect: "fade",

                  // custom opacity setting
                  opacity: 1

                });
              </script>

           
          </fieldset>
                      <br>   
              <input  type="button" value='Confirm & Fininsh'   onclick= "window.location.href='queryscholasticdata.jsp'"> 
                <br><br><br>
                
                
            </td>
        </tr>
        
        <tr bgcolor="#993300">
          <td colspan="2" align="center" bgcolor="#0066FF">
            <a href="aboutus.jsp">
              <font color="white">About Us</a>
            </font>
        </tr>
  </table>
                      
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>

</html>
