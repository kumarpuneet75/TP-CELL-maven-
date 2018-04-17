

<%@include file="header.jsp" %>
<%
    float m,mm;
    studata.Studentscholasticdata ob=(studata.Studentscholasticdata)session.getAttribute("studata");
    if(request.getParameter("nextpage 2")!=null)
        session.setAttribute("graduation",request.getParameter("nextpage 2"));

    if(session.getAttribute("matric").equals("pmatric"))
    {
        ob.setTwelevemaxMarks(Float.parseFloat(request.getParameter("12Max Marks")));
        ob.setTwelevemarks(Float.parseFloat(request.getParameter("12Marks")));
        mm=Float.parseFloat((request.getParameter("12Max Marks")));
        m=Float.parseFloat(request.getParameter("12Marks"));
        mm=100*(m/mm);
        ob.setTwelevepercentage(mm);
        ob.setTweleveyop(Short.parseShort(request.getParameter("12YOP")));
        ob.setTweleveboard(request.getParameter("12Board"));

         ob.setDiplomaMaxMarks(0f);
        ob.setDiplomaMarks(0f);
        ob.setDiplomapercentage(0f);
        ob.setDiplomaYOP(new Short("0"));
    }

    else
    {
        ob.setDiplomaMaxMarks(Float.parseFloat(request.getParameter("DiplomaMax Marks")));
        ob.setDiplomaMarks(Float.parseFloat(request.getParameter("DiplomaMarks")));
        mm=Float.parseFloat((request.getParameter("DiplomaMax Marks")));
        m=Float.parseFloat(request.getParameter("DiplomaMarks"));
        mm=100*(m/mm);
        ob.setDiplomapercentage(mm);
        ob.setDiplomaYOP(Short.parseShort(request.getParameter("DiplomaYOP")));

        ob.setTwelevemaxMarks(0);
        ob.setTwelevemarks(0);
        ob.setTwelevepercentage(0);
        ob.setTweleveyop(new Short("0"));
        ob.setTweleveboard("");
        
        ob.setSem1MM(0);
        ob.setSem1M(0);
        ob.setSem1Pending((short)0);
        ob.setSem1BackLogs((short)0);
        ob.setSem1age(0);
        
        ob.setSem2MM(0);
        ob.setSem2M(0);
        ob.setSem2Pending((short)0);
        ob.setSem2BackLogs((short)0);
        ob.setSem2age(0);

    }


        ob.setTencoreMaxMarks(Float.parseFloat(request.getParameter("10Core Max Marks")));
        ob.setTencoreMarks(Float.parseFloat(request.getParameter("10Core Marks")));
        ob.setTenallMaxMarks(Float.parseFloat(request.getParameter("10All Max Marks")));
        ob.setTenallMarks(Float.parseFloat(request.getParameter("10All Marks")));
        mm=Float.parseFloat((request.getParameter("10All Max Marks")));
        m=Float.parseFloat(request.getParameter("10All Marks"));
        mm=100*(m/mm);
        ob.setTenpercentage(mm);
        ob.setTenyop(Short.parseShort(request.getParameter("10YOP")));
        ob.setTenboard(request.getParameter("10Board"));
%>
<br><br>

<style>
@import url(http://fonts.googleapis.com/css?family=Montserrat);

    /* simple css-based tooltip */
#tooltip
{
    text-align: center;
    color: #fff;
    background: #111;
    position: absolute;
    z-index: 100;
    padding: 15px;
}
 
    #tooltip:after /* triangle decoration */
    {
        width: 0;
        height: 0;
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-top: 10px solid #111;
        content: '';
        position: absolute;
        left: 50%;
        bottom: -10px;
        margin-left: -10px;
    }
 
        #tooltip.top:after
        {
            border-top-color: transparent;
            border-bottom: 10px solid #111;
            top: -20px;
            bottom: auto;
        }
 
        #tooltip.left:after
        {
            left: 10px;
            margin: 0;
        }
 
        #tooltip.right:after
        {
            right: 10px;
            left: auto;
            margin: 0;
        }





/*progressbar*/
#progressbar {
	margin-bottom: 30px;
	overflow: hidden;
	/*CSS counters to number the steps*/
	counter-reset: step;
}
#progressbar li {
	list-style-type: none;
	color: #0000ff;/* color of the text*/
	text-transform: uppercase;
	font-size: 9px;
	width: 33.33%;
	float: left;
	position: relative;
}
#progressbar li:before {
	content: counter(step);
	counter-increment: step;
	width: 20px;
	line-height: 20px;
	display: block;
	font-size: 10px;
	color: white;
        background: #9999ff; /*background colors of others*/
	border-radius: 3px;
	margin: 0 auto 5px auto;
}
/*progressbar connectors*/
#progressbar li:after {
	content: '';
	width: 100%;
	height: 2px;
	background: black;
	position: absolute;
	left: -50%;
	top: 9px;
	z-index: -1; /*put it behind the numbers*/
}
#progressbar li:first-child:after {
	/*connector not needed before the first step*/
	content: none;
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before,  #progressbar li.active:after{
    background: #0000ff;
	color: white;
}


    #table-example-1 {
  border: none;
}


#table-example-1 td {
  border: compact;
  padding: 0rem 7rem;
  white-space: nowrap;

  border-style: none  ;
  vertical-align: top;
}
#table-example-1 tr{

    class:row row-centered;
}

.row-centered {
    text-align:center;
}

#table-example-1 tbody td:first-child::after {
  content: leader(". ");
}

#b{
     border: compact;
  padding: 0rem 7rem;
  white-space: nowrap;

  border-style: none;
  vertical-align: top;

}


</style>
  <ul id="progressbar" style='position:relative; z-index:8003'>
    <li  class="active" onclick="window.location='scholasticdatastep1.jsp?d=1'">University Record</li>
    <li class="active" onclick="window.location='scholasticdatastep2.jsp?d=1'">Personal Profile</li>
    <li class="active" onclick="window.location='scholasticdatastep3.jsp?d=1'">Academic Details</li>
	</ul>
<br>

<script>

    function finalcheck() {


        var checkString = document.forms.step3v2['DescriptionGap'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z,\d_ ]/.test(checkString)) {
                            alert("Please enter only alphabetic characters!");
                            document.forms.step3v2['DescriptionGap'].focus();
                            return (false);
                        }
                      
                }
                <% if(session.getAttribute("graduation").equals("ug") ) {%>
     try{
    var y;
    var x;
       x=document.forms.step3v2.Sem1M.value ;
        y=document.forms.step3v2.Sem1MM.value ;

      if(+y==10 || +y==100 || +y==100.0)
      {
          alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10.For example if semester 1 has Total credits 21.5 then Max marks = 21.5*10=215');
          return false;
      }
      if( +x > +y)
      {
          alert('Enter correct marks for Semester 1.The marks obtained are more than total marks.');
          return false;
      }

      y= document.forms.step3v2['Sem2MM'].value ;
      x=document.forms.step3v2['Sem2M'].value ;
       if(+y===10 || +y==100 || +y==100.0)
      {
        if(x!="")  alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10');return false;
      }
       if( +x > +y)
      {
          alert('Enter correct marks for Semester 2.The marks obtained are more than total marks.');
          return false;
      }
  }

catch(err) {
   ;
}
  try{

      var y= document.forms.step3v2['Sem3MM'].value ;
      var x=document.forms.step3v2['Sem3M'].value ;
       if(+y===10 || +y==100 || +y==100.0)
      {
          alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10.For example if semester 3 has Total credits 21.5 then Max marks = 21.5*10=215');
          return false;
      }
       if( +x > +y)
      {
          alert('Enter correct marks for Semester 3.The marks obtained are more than total marks.');
          return false;
      }
        y= document.forms.step3v2['Sem4MM'].value ;
      x=document.forms.step3v2['Sem4M'].value ;
        if(+y==10 || +y==100 || +y==100.0)
      {
          alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10.For example if semester 4 has Total credits 21.5 then Max marks = 21.5*10=215');
          return false;
      }
      if( +x > +y)
      {
          alert('Enter correct marks for Semester 4.The marks obtained are more than total marks.');
          return false;
      }

 }

catch(err) {
   ;
}
try{
     var y= document.forms.step3v2['Sem5MM'].value ;
      var x=document.forms.step3v2['Sem5M'].value ;
        if(+y===10 || +y==100 || +y==100.0)
      {
       if (x!="")  alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10');return false;
      }
      if( +x > +y)
      {
          alert('Enter correct marks for Semester 5.The marks obtained are more than total marks.');
          return false;
      }
        y= document.forms.step3v2['Sem6MM'].value ;
      x=document.forms.step3v2['Sem6M'].value ;
        if(+y===10 || +y==100 || +y==100.0)
      {
        if (x!="")  alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10');return false;
      }
      if( +x > +y)
      {
          alert('Enter correct marks for Semester 6.The marks obtained are more than total marks.');
          return false;
      }
        y= document.forms.step3v2['Sem7MM'].value ;
      x=document.forms.step3v2['Sem7M'].value ;
       if(+y===10 || +y==100 || +y==100.0)
      {
        if (x!="")  alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10');return false;
      }
       if( +x > +y)
      {
          alert('Enter correct marks for Semester 7.The marks obtained are more than total marks.');
          return false;
      }
        y= document.forms.step3v2['Sem8MM'].value ;
      x=document.forms.step3v2['Sem8M'].value ;
       if(+y===10 || +y==100 || +y==100.0)
      {
       if (x!="")  alert('Kindly note that For CGPA system ,Max Marks=(Total credits for semester)x10');return false;
      }
       if( +x > +y)
      {
          alert('Enter correct marks for Semester 8.The marks obtained are more than total marks.');
          return false;
      }
 }
 
catch(err) {
   ;
}
<%} %>


try{
    y= document.forms.step3v2['Grad.Max Marks'].value ;
      x=document.forms.step3v2['Grad.Marks'].value ;
     
       if( +x > +y)
      {
          alert('Enter correct marks for Graduation.The marks obtained are more than total marks.');
          return false;
      }
 }

catch(err) {
   ;
}

try{
      var y=document.forms.step3v2['Sem1 BackLogs'].value ;
      var x=document.forms.step3v2['Sem1 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 1.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }

      y=document.forms.step3v2['Sem2 BackLogs'].value ;
      x=document.forms.step3v2['Sem2 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 2.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }
}

catch(err) {
   ;
}
try{
      var y=document.forms.step3v2['Sem3 BackLogs'].value ;
      var x=document.forms.step3v2['Sem3 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 3.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }

      y=document.forms.step3v2['Sem4 BackLogs'].value ;
      x=document.forms.step3v2['Sem4 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 4.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }


      y=document.forms.step3v2['Sem5 BackLogs'].value ;
      x=document.forms.step3v2['Sem5 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 5.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }

      y=document.forms.step3v2['Sem6 BackLogs'].value ;
      x=document.forms.step3v2['Sem6 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 6.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }

      y=document.forms.step3v2['Sem7 BackLogs'].value ;
      x=document.forms.step3v2['Sem7 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 7.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }

      y=document.forms.step3v2['Sem8 BackLogs'].value ;
      x=document.forms.step3v2['Sem8 Pending'].value ;
        if( +x > +y)
      {
          alert('Enter correct values for Semester 8.The pending semesters are more a than the total backlogs obtained.');
          return false;
      }


        var checkString = document.forms.step3v2['Grad.Degree'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z_ ]/.test(checkString)) {
                            alert("Please enter only alphabetic characters!");
                            document.forms.step3v2['Grad.Degree'].focus();
                            return (false);
                        }
                }
            }

catch(err) {
   ;
}

 }

function backl(s){

        try{
        var x;
            if(s=='1'){
               x=document.forms.step3v2['Sem1 Pending'].value;

            if(x == '0')
            {

              document.forms.step3v2['Sem1MM'].required=true;
              document.forms.step3v2['Sem1M'].required=true;
              document.forms.step3v2['Sem1MM'].readOnly=false;
              document.forms.step3v2['Sem1M'].readOnly=false;
              document.forms.step3v2['Sem1MM'].min=1;


            }
            else if(x!="")
            {

                document.forms.step3v2['Sem1MM'].required=false;
                document.forms.step3v2['Sem1M'].required=false;
                document.forms.step3v2['Sem1MM'].readOnly=true;
               document.forms.step3v2['Sem1M'].readOnly=true;
                 document.forms.step3v2['Sem1MM'].min=0;
                document.forms.step3v2['Sem1MM'].value='0';
                document.forms.step3v2['Sem1M'].value='0';


            }
        }
          else if(s=='2'){
               
            x=document.forms.step3v2['Sem2 Pending'].value;
                
            if(x == '0')
            {
                
               document.forms.step3v2['Sem2MM'].required=true;
                document.forms.step3v2['Sem2M'].required=true;
                document.forms.step3v2['Sem2MM'].readOnly=false;
                document.forms.step3v2['Sem2M'].readOnly=false;
                document.forms.step3v2['Sem2MM'].min=1;

            }
            else if(x!="")
            {

                document.forms.step3v2['Sem2MM'].required=false;
                document.forms.step3v2['Sem2M'].required=false;
                document.forms.step3v2['Sem2MM'].readOnly=true;
                document.forms.step3v2['Sem2M'].readOnly=true;
                document.forms.step3v2['Sem2MM'].min=0;
                document.forms.step3v2['Sem2MM'].value=0;
                document.forms.step3v2['Sem2M'].value=0;
            }

        }
          else if(s=='3'){

            x=document.forms.step3v2['Sem3 Pending'].value;

            if(x == '0')
            {

               document.forms.step3v2['Sem3MM'].required=true;
                document.forms.step3v2['Sem3M'].required=true;
                document.forms.step3v2['Sem3MM'].readOnly=false;
                document.forms.step3v2['Sem3M'].readOnly=false;
                document.forms.step3v2['Sem3MM'].min=1;

            }
            else if(x!="")
            {

                document.forms.step3v2['Sem3MM'].required=false;
                document.forms.step3v2['Sem3M'].required=false;
                document.forms.step3v2['Sem3MM'].readOnly=true;
                document.forms.step3v2['Sem3M'].readOnly=true;
                document.forms.step3v2['Sem3MM'].min=0;
                document.forms.step3v2['Sem3MM'].value=0;
                document.forms.step3v2['Sem3M'].value=0;
            }
        }
          else if(s=='4'){

            x=document.forms.step3v2['Sem4 Pending'].value;

            if(x == '0')
            {

               document.forms.step3v2['Sem4MM'].required=true;
                document.forms.step3v2['Sem4M'].required=true;
                document.forms.step3v2['Sem4MM'].readOnly=false;
                document.forms.step3v2['Sem4M'].readOnly=false;
                document.forms.step3v2['Sem4MM'].min=1;

            }
            else if(x!="")
            {

                document.forms.step3v2['Sem4MM'].required=false;
                document.forms.step3v2['Sem4M'].required=false;
                document.forms.step3v2['Sem4MM'].readOnly=true;
                document.forms.step3v2['Sem4M'].readOnly=true;
                document.forms.step3v2['Sem4MM'].min=0;
                document.forms.step3v2['Sem4MM'].value=0;
                document.forms.step3v2['Sem4M'].value=0;
            }
        }
          else if(s=='5'){
  
             x=document.forms.step3v2['Sem5 Pending'].value;
          
            if(x == '0')
            {

               document.forms.step3v2['Sem5MM'].required=true;
                document.forms.step3v2['Sem5M'].required=true;
                document.forms.step3v2['Sem5MM'].readOnly=false;
                document.forms.step3v2['Sem5M'].readOnly=false;
                document.forms.step3v2['Sem5MM'].min=1;

            }
            else if(x!="")
            {

                document.forms.step3v2['Sem5MM'].required=false;
                document.forms.step3v2['Sem5M'].required=false;
                document.forms.step3v2['Sem5MM'].readOnly=true;
                document.forms.step3v2['Sem5M'].readOnly=true;
                document.forms.step3v2['Sem5MM'].min=0;
                document.forms.step3v2['Sem5MM'].value=0;
                document.forms.step3v2['Sem5M'].value=0;
            }
        }
          else if(s=='6'){

            x=document.forms.step3v2['Sem6 Pending'].value;

            if(x == '0')
            {

               document.forms.step3v2['Sem6MM'].required=true;
                document.forms.step3v2['Sem6M'].required=true;
                document.forms.step3v2['Sem6MM'].readOnly=false;
                document.forms.step3v2['Sem6M'].readOnly=false;
                document.forms.step3v2['Sem6MM'].min=1;

            }
            else if(x!="")
            {

                document.forms.step3v2['Sem6MM'].required=false;
                document.forms.step3v2['Sem6M'].required=false;
                document.forms.step3v2['Sem6MM'].readOnly=true;
                document.forms.step3v2['Sem6M'].readOnly=true;
                document.forms.step3v2['Sem6MM'].min=0;
                document.forms.step3v2['Sem6MM'].value=0;
                document.forms.step3v2['Sem6M'].value=0;
            }
        }
          else if(s=='7'){

            x=document.forms.step3v2['Sem7 Pending'].value;

            if(x == '0')
            {

               document.forms.step3v2['Sem7MM'].required=true;
                document.forms.step3v2['Sem7M'].required=true;
                document.forms.step3v2['Sem7MM'].readOnly=false;
                document.forms.step3v2['Sem7M'].readOnly=false;
                document.forms.step3v2['Sem7MM'].min=1;

            }
           else if(x!="")
            {

                document.forms.step3v2['Sem7MM'].required=false;
                document.forms.step3v2['Sem7M'].required=false;
                document.forms.step3v2['Sem7MM'].readOnly=true;
                document.forms.step3v2['Sem7M'].readOnly=true;
                document.forms.step3v2['Sem7MM'].min=0;
                document.forms.step3v2['Sem7MM'].value=0;
                document.forms.step3v2['Sem7M'].value=0;
            }
        }
          else if(s=='8'){

            x=document.forms.step3v2['Sem8 Pending'].value;

            if(x == '0')
            {

               document.forms.step3v2['Sem8MM'].required=true;
                document.forms.step3v2['Sem8M'].required=true;
                document.forms.step3v2['Sem8MM'].readOnly=false;
                document.forms.step3v2['Sem8M'].readOnly=false;
                document.forms.step3v2['Sem8MM'].min=1;

            }
           else if(x!="")
            {

                document.forms.step3v2['Sem8MM'].required=false;
                document.forms.step3v2['Sem8M'].required=false;
                document.forms.step3v2['Sem8MM'].readOnly=true;
                document.forms.step3v2['Sem8M'].readOnly=true;
                document.forms.step3v2['Sem8MM'].min=0;
                document.forms.step3v2['Sem8MM'].value=0;
                document.forms.step3v2['Sem8M'].value=0;
            }
        }
        }catch(e){}
    }
</script>
<form id='myform' name="step3v2" method="post" action="submitstudentdataob.jsp" onsubmit="return finalcheck()">
    <hr>
  <hgroup>
    <h3>
        <% if(session.getAttribute("graduation").equals("ug"))
        out.print("Enter record of current Degree Programme(UNDER GRADUATE)");
      else
      out.print("Enter record of current Degree Programme(POST GRADUATE)");
    %>
  </h3>
  </hgroup>
  <hr>

    <table width="100%" id='table-example-1' name='t1' class="zebra" border='0'  >

        <% if(session.getAttribute("graduation").equals("ug") ) {
      //next page 1 mein se check kar
          if(session.getAttribute("matric").equals("diploma"))
          {
      %>
       <tr>
    <td><center><b>Semester 3</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem3MM"  <%out.print("value='"+((ob.getSem3MM()!=0.0f)? (String.valueOf( ob.getSem3MM())):"")+"'");%>   required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem3M"    <%out.print("value='"+((ob.getSem3M()!=0.0f)? (String.valueOf( ob.getSem3M())):"")+"'");%>  min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem3 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('3')" name="Sem3 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
    <td><center><b>Semester 4</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem4MM"  <%out.print("value='"+((ob.getSem4MM()!=0.0f)? (String.valueOf( ob.getSem4MM())):"")+"'");%>   required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem4M"    <%out.print("value='"+((ob.getSem4M()!=0.0f)? (String.valueOf( ob.getSem4M())):"")+"'");%>  min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem4 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('4')" name="Sem4 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
    <td><center><b>Semester 5</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem5MM"    <%out.print("value='"+((ob.getSem5MM()!=0.0f)? (String.valueOf( ob.getSem5MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem5M"    <%out.print("value='"+((ob.getSem5M()!=0.0f)? (String.valueOf( ob.getSem5M())):"")+"'");%>   min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem5 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('5')" name="Sem5 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
    </tr>
    <tr>
    <td><center><b>Semester 6</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem6MM"    <%out.print("value='"+((ob.getSem6MM()!=0.0f)? (String.valueOf( ob.getSem6MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem6M"    <%out.print("value='"+((ob.getSem6M()!=0.0f)? (String.valueOf( ob.getSem6M())):"")+"'");%>   min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem6 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('6')" name="Sem6 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
    <td><center><b>Semester 7</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10' min="1" name="Sem7MM"   <%out.print("value='"+((ob.getSem7MM()!=0.0f)? (String.valueOf( ob.getSem7MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem7M"  min="0"   <%out.print("value='"+((ob.getSem7M()!=0.0f)? (String.valueOf( ob.getSem7M())):"")+"'");%>   step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem7 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem7 Pending"  onchange="backl('7')"  ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
    <td><center><b>Semester 8</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem8MM"    <%out.print("value='"+((ob.getSem8MM()!=0.0f)? (String.valueOf( ob.getSem8MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem8M"    <%out.print("value='"+((ob.getSem8M()!=0.0f)? (String.valueOf( ob.getSem8M())):"")+"'");%>   min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem8 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('8')" name="Sem8 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
    </tr>
    <tr>
    <td><center><b>Description</b></center><br><textarea  rel="tooltip" title="Description of Gap year if any" name="DescriptionGap" rows="4" cols="20"><%=ob.getDescriptionGap()%></textarea><br></td>
    </tr>


            <%
               }
                else {
            %>
         <tr>
     <td><center><b>Semester 1</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10 ' min="1" name="Sem1MM"  required="" <%out.print("value='"+((ob.getSem1MM()!=0.0f)? (String.valueOf( ob.getSem1MM())):"")+"'");%>  ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem1M"  min="0" required=""  <%out.print("value='"+((ob.getSem1M()!=0.0f)? (String.valueOf( ob.getSem1M())):"")+"'");%>   step="any" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem1 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem1 Pending"  onchange="backl('1')" required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
     <td><center><b>Semester 2</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem2MM"  required=""   <%out.print("value='"+((ob.getSem2MM()!=0.0f)? (String.valueOf( ob.getSem2MM())):"")+"'");%>  ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem2M" required=""   <%out.print("value='"+((ob.getSem2M()!=0.0f)? (String.valueOf( ob.getSem2M())):"")+"'");%>   min="0"  step="any" required="" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem2 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  required=""><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('2')" name="Sem2 Pending" required=""><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
     <td><center><b>Semester 3</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem3MM" required=""   <%out.print("value='"+((ob.getSem3MM()!=0.0f)? (String.valueOf( ob.getSem3MM())):"")+"'");%>  ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem3M"  required=""  <%out.print("value='"+((ob.getSem3M()!=0.0f)? (String.valueOf( ob.getSem3M())):"")+"'");%>  min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem3 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('3')" name="Sem3 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
     </tr>
      <tr>
      <td><center><b>Semester 4</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem4MM"  <%out.print("value='"+((ob.getSem4MM()!=0.0f)? (String.valueOf( ob.getSem4MM())):"")+"'");%>   required=""><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem4M"    <%out.print("value='"+((ob.getSem4M()!=0.0f)? (String.valueOf( ob.getSem4M())):"")+"'");%>  min="0"  step="any" required=""><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem4 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('4')" name="Sem4 Pending" required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
    <td><center><b>Semester 5</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem5MM"    <%out.print("value='"+((ob.getSem5MM()!=0.0f)? (String.valueOf( ob.getSem5MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem5M"    <%out.print("value='"+((ob.getSem5M()!=0.0f)? (String.valueOf( ob.getSem5M())):"")+"'");%>   min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem5 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('5')" name="Sem5 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem5MM()!=0.0f  && ob.getSem5Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
    <td><center><b>Semester 6</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem6MM"    <%out.print("value='"+((ob.getSem6MM()!=0.0f)? (String.valueOf( ob.getSem6MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem6M"    <%out.print("value='"+((ob.getSem6M()!=0.0f)? (String.valueOf( ob.getSem6M())):"")+"'");%>   min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem6 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('6')" name="Sem6 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem6MM()!=0.0f  && ob.getSem6Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
      </tr>
       <!--for example if semester 1 has Total credits 21.5 then Max marks = 21.5*10=215-->
      <tr>
      <td><center><b>Semester 7</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10' min="1" name="Sem7MM"   <%out.print("value='"+((ob.getSem7MM()!=0.0f)? (String.valueOf( ob.getSem7MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem7M"  min="0"   <%out.print("value='"+((ob.getSem7M()!=0.0f)? (String.valueOf( ob.getSem7M())):"")+"'");%>   step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem7 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem7 Pending"  onchange="backl('7')"  ><option value="">Select...</option><option value="0"  <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem7MM()!=0.0f  && ob.getSem7Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
      <td><center><b>Semester 8</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='For CGPA system ,Max Marks=(Total credits for semester)x10'  min="1"  name="Sem8MM"    <%out.print("value='"+((ob.getSem8MM()!=0.0f)? (String.valueOf( ob.getSem8MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Specify the total marks obtained in corresponding semester,For CGPA system, enter Semester's Grade points obtained.Do NOT enter CGPA/SCGPA.Make sure that the value  in %age should be equal to SGPAx10" type="number" step="any"name="Sem8M"    <%out.print("value='"+((ob.getSem8M()!=0.0f)? (String.valueOf( ob.getSem8M())):"")+"'");%>   min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem8 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('8')" name="Sem8 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem8MM()!=0.0f  && ob.getSem8Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
      <td><center><b>Description</b></center><br><textarea  rel="tooltip" title="Description of Gap year if any" name="DescriptionGap" rows="4" cols="20"><%=ob.getDescriptionGap()%></textarea><br></td>
      </tr>


            <%} } else { %>

            <tr style='text-align: center;'>
                <td colspan="2"><center><b>Under Graduation</b></center><font color="red">*</font>Degree&nbsp;:&nbsp;<input  rel="tooltip" title="Enter name of Graduation degree name." type="text" name="Grad.Degree" value="<%=ob.getGraddegree()%>" required="" pattern="[A-Za-z ]*"><br><br><font color="red">*</font>Subject Combination&nbsp;:&nbsp;<input  rel="tooltip" title="Enter info about subjects in Graduation Degree." type="text" name="Grad.Subject Combo" value="<%=ob.getGradsubjectCombo()%>"  pattern="[A-Za-z  ,]*" required=""><br><br><font color="red">*</font>Evaluation System&nbsp;:&nbsp;<select name="Evaluation System" required=""><option></option><option value="CGPA" <% if(ob.getGradevaluationSystem().equals("CGPA")) out.print("selected"); %> >CGPA</option><option value="%age" <% if(ob.getGradevaluationSystem().equals("%age")) out.print("selected"); %>>Percentage</option></select><br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input  rel="tooltip" title="" type="number" step="any"name="Grad.Max Marks" value="<%=ob.getGradmaxMarks()%>" required="" min="1" step="any"><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="" type="number" step="any" step="any"  name="Grad.Marks" value="<%=ob.getGradmarks() %>" required="" min='0'><br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input  rel="tooltip" title="" type="number" step="any"name="Grad YOP" value="<%=ob.getGradYOP()%>" required="" min ="0" max="2018" ><br></td>
            </tr>
          <tr>
         <td><center><b>PG Semester 1</b></center><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='Enter your max CGPA or SCGPA' min="1" name="Sem1MM"  required="" <%out.print("value='"+((ob.getSem1MM()!=0.0f)? (String.valueOf( ob.getSem1MM())):"")+"'");%>  ><br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter obtained CGPA or SCGPA." type="number" step="any"name="Sem1M"  min="0" required=""  <%out.print("value='"+((ob.getSem1M()!=0.0f)? (String.valueOf( ob.getSem1M())):"")+"'");%>   step="any" ><br><br><font color="red">*</font>BackLogs&nbsp;:&nbsp;<select name="Sem1 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.' required=""><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br><font color="red">*</font>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' name="Sem1 Pending"  onchange="backl('1')" required="" ><option value="">Select...</option><option value="0"  <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem1MM()!=0.0f  && ob.getSem1Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
         <td><center><b>PG Semester 2</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='Enter your max CGPA or SCGPA'  min="1"  name="Sem2MM"     <%out.print("value='"+((ob.getSem2MM()!=0.0f)? (String.valueOf( ob.getSem2MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter obtained CGPA or SCGPA." type="number" step="any"name="Sem2M"    <%out.print("value='"+((ob.getSem2M()!=0.0f)? (String.valueOf( ob.getSem2M())):"")+"'");%>   min="0"  step="any"  ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem2 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('2')" name="Sem2 Pending" ><option value="">Select...</option><option value="0" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==0) out.print("selected"); %>  >0</option><option value="1" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem2MM()!=0.0f  && ob.getSem2Pending()==8) out.print("selected"); %> >8</option></select>  <br><br></td>
          <br>
          </tr>
          <tr>
          <td><center><b>PG Semester 3</b></center><br>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='Enter your max CGPA or SCGPA'  min="1"  name="Sem3MM"    <%out.print("value='"+((ob.getSem3MM()!=0.0f)? (String.valueOf( ob.getSem3MM())):"")+"'");%>  ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter obtained CGPA or SCGPA." type="number" step="any"name="Sem3M"    <%out.print("value='"+((ob.getSem3M()!=0.0f)? (String.valueOf( ob.getSem3M())):"")+"'");%>  min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem3 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('3')" name="Sem3 Pending" ><option value="">Select...</option><option value="0"  <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem3MM()!=0.0f  && ob.getSem3Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
          <td><center><b>PG Semester 4</b></center>Max Marks&nbsp;:&nbsp;<input type="number" step="any" rel="tooltip" title='Enter your max CGPA or SCGPA'  min="1"  name="Sem4MM"  <%out.print("value='"+((ob.getSem4MM()!=0.0f)? (String.valueOf( ob.getSem4MM())):"")+"'");%>   ><br><br>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter obtained CGPA or SCGPA." type="number" step="any"name="Sem4M"    <%out.print("value='"+((ob.getSem4M()!=0.0f)? (String.valueOf( ob.getSem4M())):"")+"'");%>  min="0"  step="any" ><br><br>BackLogs&nbsp;:&nbsp;<select name="Sem4 BackLogs"  rel="tooltip" title='Specify the total backlogs you had in this semester.'  ><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4BackLogs()==8) out.print("selected"); %> >8</option></select>  <br><br>Pending&nbsp;:&nbsp;<select  rel="tooltip" title='Specify the counts of backlogs for this semester,which are still pending.' onchange="backl('4')" name="Sem4 Pending" ><option value="">Select...</option><option value="0"  <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==0) out.print("selected"); %> >0</option><option value="1" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==1) out.print("selected"); %> >1</option><option value="2" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==2) out.print("selected"); %> >2</option><option value="3" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==3) out.print("selected"); %> >3</option><option value="4" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==4) out.print("selected"); %> >4</option><option value="5" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==5) out.print("selected"); %> >5</option><option value="6" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==6) out.print("selected"); %> >6</option><option value="7" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==7) out.print("selected"); %> >7</option><option value="8" <%if( ob.getSem4MM()!=0.0f  && ob.getSem4Pending()==8) out.print("selected"); %> >8</option></select>  <br></td>
          </tr>

             <tr style='text-align: center;' >
               <td colspan='2'><center><b>Description</b></center><br><textarea  rel="tooltip" title="Description of Gap year if any" name="DescriptionGap" rows="4" cols="20"><%=ob.getDescriptionGap()%></textarea><br></td>

             </tr>
             <% }%>

               </table>
        <br>
    <input type="submit" value="Next">
 </form>
             <input type="hidden" id="refresh" value="no">

<script src="jquery.tools.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(e) {
    var $input = $('#refresh');

    $input.val() == 'yes' ? location.reload(true) : $input.val('yes');
});

         
    $( function()
{
    var targets = $( '[rel~=tooltip]' ),
        target  = false,
        tooltip = false,
        title   = false;
 
    targets.bind( 'mouseenter', function()
    {
        target  = $( this );
        tip     = target.attr( 'title' );
        tooltip = $( '<div id="tooltip"></div>' );
 
        if( !tip || tip == '' )
            return false;
 
        target.removeAttr( 'title' );
        tooltip.css( 'opacity', 0 )
               .html( tip )
               .appendTo( 'body' );
 
        var init_tooltip = function()
        {
            if( $( window ).width() < tooltip.outerWidth() * 1.5 )
                tooltip.css( 'max-width', $( window ).width() / 2 );
            else
                tooltip.css( 'max-width', 340 );
 
            var pos_left = target.offset().left + ( target.outerWidth() / 2 ) - ( tooltip.outerWidth() / 2 ),
                pos_top  = target.offset().top - tooltip.outerHeight() - 20;
 
            if( pos_left < 0 )
            {
                pos_left = target.offset().left + target.outerWidth() / 2 - 20;
                tooltip.addClass( 'left' );
            }
            else
                tooltip.removeClass( 'left' );
 
            if( pos_left + tooltip.outerWidth() > $( window ).width() )
            {
                pos_left = target.offset().left - tooltip.outerWidth() + target.outerWidth() / 2 + 20;
                tooltip.addClass( 'right' );
            }
            else
                tooltip.removeClass( 'right' );
 
            if( pos_top < 0 )
            {
                var pos_top  = target.offset().top + target.outerHeight();
                tooltip.addClass( 'top' );
            }
            else
                tooltip.removeClass( 'top' );
 
            tooltip.css( { left: pos_left, top: pos_top } )
                   .animate( { top: '+=10', opacity: 1 }, 50 );
        };
 
        init_tooltip();
        $( window ).resize( init_tooltip );
 
        var remove_tooltip = function()
        {
            tooltip.animate( { top: '-=10', opacity: 0 }, 50, function()
            {
                $( this ).remove();
            });
 
            target.attr( 'title', tip );
        };
 
        target.bind( 'mouseleave', remove_tooltip );
        tooltip.bind( 'click', remove_tooltip );
    });
});
</script>
<%@include file="footer.jsp" %>
