
<%@include file="header.jsp" %>
<%
    studata.Studentscholasticdata ob=(studata.Studentscholasticdata)session.getAttribute("studata");
    if(request.getParameter("nextpage")!=null)
        session.setAttribute("matric",request.getParameter("nextpage"));
   
        try
            {
                ob.setGender(request.getParameter("Gender").equals("F")?'F':'M');
                ob.setResidence(request.getParameter("Residence"));
                ob.setFirstName(request.getParameter("First Name"));
                ob.setMiddleName(request.getParameter("Middle Name")!= null?(request.getParameter("Middle Name")):"");
                ob.setSurname(request.getParameter("Surname")!= null?request.getParameter("Surname"):"");
                ob.setCourseStatus(request.getParameter("Course Status"));
                ob.setName(ob.getFirstName()+(request.getParameter("Middle Name")!= null?(" "+request.getParameter("Middle Name")):"") + ( request.getParameter("Surname")!= null?(" "+request.getParameter("Surname")):"" ) );
                ob.setFathersName(request.getParameter("Fathers Name"));
                ob.setDob(request.getParameter("DOB"));
                ob.setAddress(request.getParameter("Address"));
                ob.setState(request.getParameter("State"));
                ob.setContactStudent(request.getParameter("Contact Student"));
                ob.setContactParent(request.getParameter("Contact Parent"));
                ob.setEmail((String)session.getAttribute("em"));
                ob.setCategory(request.getParameter("category"));


            }
            catch(Exception e)
            {
               // out.print("<script>alert('Error"+e+"');</script>");
            }
    
%>
<br><br>

<style class="csscreations">/*custom font*/
/*@import url(http://fonts.googleapis.com/css?family=Montserrat);*/

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
#table-example-1 td td
{margin: 0;    padding: 5px;      border: 0;  outline: 0;  width: auto;  height: auto  ;font-size: 100%;  vertical-align: baseline;  background: transparent;  border-collapse: collapse; border-spacing: 0;}
#table-example-1 tr tr
{margin: 0;    padding: 5px;      border: 0;  outline: 0;  width: auto;  height: auto ; font-size: 100%;  vertical-align: baseline;  background: transparent;  border-collapse: collapse; border-spacing: 0;}

</style>
 <ul id="progressbar" style='position:relative; z-index:8003'>
    <li  class="active" onclick="window.location='scholasticdatastep1.jsp?d=1'">University Record</li>
    <li class="active" onclick="window.location='scholasticdatastep2.jsp?d=1'">Personal Profile</li>
    <li class="active" onclick="window.location='scholasticdatastep3.jsp'">Academic Details</li>
</ul>

     
<br>


<script>
    function validate(){

        try{


         var checkString = document.forms.step3['Others'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z]/.test(checkString)) {
                            alert("Please enter only alphabetic characters!");
                            document.forms.step3['Others'].focus();
                            return (false);
                        }
                        else
                        {
                             var y = document.forms.step3['10Board'];
                            var option = document.createElement("option");
                            option.text =value=document.forms.step3['Others'].value ;
                            y.add(option);
                               var t=y.options.length;
                               y.selectedIndex = t-1;
                        }
                }
                
              try  {
        checkString = document.forms.step3['Others12'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z]/.test(checkString)) {
                            alert("Please enter only alphabetic characters!");
                            document.forms.step3['Others12'].focus();
                            return (false);
                        }
                        else
                        {
                             var y = document.forms.step3['12Board'];
                            var option = document.createElement("option");
                            option.text =value=document.forms.step3['Others12'].value ;
                            y.add(option);
                               var t=y.options.length;
                               y.selectedIndex = t-1;
                        }
                }
            }
            catch (exception) {
    ;   
}


        var x=document.forms.step3['10Core Marks'].value ;
        var y= document.forms.step3['10Core Max Marks'].value ;

      if( +x > +y)
      {
          alert('Enter correct marks for 10th (Compulsory Subjects Only). The marks obtained are more than total marks.');
          document.forms.step3['10Core Max Marks'].focus();
          return false;
      }


        y=document.forms.step3['10All Max Marks'].value ;
        x=document.forms.step3['10All Marks'].value ;

         if( +x > +y)
      {
          alert('Enter correct marks for 10th (Including Optional Subjects) marks category. The marks obtained are more than total marks.');
          document.forms.step3['10All Marks'].focus();
          return false;
      }

      var x=document.forms.step3['10Core Marks'].value ;
      var y=document.forms.step3['10All Max Marks'].value ;

    if( +x > +y)
    {
        alert('Enter correct marks for 10th. The marks for Compulsory Subjects cannot be greater greater that marks Including Optional Subjects.');
        document.forms.step3['10Core Max Marks'].focus();
        return false;
    }

    try
        {
          var p= document.forms.step3['10YOP'].value;
          var q=document.forms.step3['12YOP'].value;
          if(q<p)
          {
            alert('12th Year of passing cannot be before 10th Year of Passing!')
              document.forms.step3['12YOP'].focus();
            return false;

          }

        }
      catch(err)
      {
          ;
      }
      try
          {
            var p= document.forms.step3['10YOP'].value;
            var q=document.forms.step3['DiplomaYOP'].value;
            if(q<p)
            {
              alert('Diploma Year of passing cannot be before 10th Year of Passing!')
              document.forms.step3['DiplomaYOP'].focus();
              return false;

            }

          }
        catch(err)
        {
          //alert(err);
        }
     if(document.forms.step3['10Board'].value== 'Others'){

                 document.forms.step3['10Board'].value=document.forms.step3['Others'].value;
                 x=document.forms.step3['10Board'].value ;
                 x=x.toUpperCase();
                 document.forms.step3['10Board'].value=x;
             }


     if(document.forms.step3['12Board'].value== 'Others'){

                 document.forms.step3['12Board'].value=document.forms.step3['Others12'].value;
                 x=document.forms.step3['12Board'].value ;
                 x=x.toUpperCase();
                 document.forms.step3['12Board'].value=x;
             }


        y=document.forms.step3['12Max Marks'].value ;
        x=document.forms.step3['12Marks'].value ;

         if( +x > +y)
      {
          alert('Enter correct marks for 12th marks category. The marks obtained are more than Maximum marks.');
          document.forms.step3['12Marks'].focus();
          return false;
      }
  }//try ended
        catch(err) {
                //alert(err);
        }
    try{
     y=document.forms.step3['DiplomaMax Marks'].value ;
     x=document.forms.step3['DiplomaMarks'].value ;

         if( +x > +y)
      {
          alert('Enter correct marks for Diploma category. The marks obtained are more than Maximum marks.');
          document.forms.step3['DiplomaMarks'].focus();
          return false;
      }
            }//try ended
            catch(err) {
             ;
          }



    }




   function board10(){
            if(document.forms.step3['10Board'].value== 'Others'){

                document.forms.step3['Others'].disabled=false;
                document.forms.step3['Others'].required=true;
            }
            else{

                document.forms.step3['Others'].disabled=true;
                document.forms.step3['Others'].required=false;
            }
   }
   function board12(){
            if(document.forms.step3['12Board'].value== 'Others'){

                document.forms.step3['Others12'].disabled=false;
                document.forms.step3['Others12'].required=true;
            }
            else{

                document.forms.step3['Others12'].disabled=true;
                document.forms.step3['Others12'].required=false;
            }
   }


</script>
<form id='myform' name="step3" method="post" action="scholasticdatastep3v2.jsp" onsubmit="return validate()">

   <table width="100%" id='table-example-1' class="zebra" border='0'  >
       <tr>
           <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10th Academic Details</th>
           <th><%if(session.getAttribute("matric").equals("pmatric"))out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12th Academic Details"); else out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diploma Academic Details"); %></th>
       </tr>
       <tr>
            <td>
                <br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the total maximum marks for Compulsory subjects." type="number" name="10Core Max Marks"   <%if(ob.getTencoreMaxMarks()!=0)out.print("value='"+ob.getTencoreMaxMarks()+"'");%> required="" min='1' max='1500'>
                <br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the Marks obtained in Compulsory Subjects."  type="number" name="10Core Marks"  <%if(ob.getTencoreMarks()!=0)out.print("value='"+ob.getTencoreMarks()+"'");%> step='any' min='1'maxlength="5" required="">
                <br><br><font color="red">*</font>Max Marks<br>(Including Optional subjects)&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the maximum marks including all optional subjects - as they appear on the Detailed Marks Sheet."  type="number" min='1' max='1500' name="10All Max Marks"  <%if(ob.getTenallMaxMarks()!=0)out.print("value='"+ob.getTenallMaxMarks()+"'");%> required="">
                <br><br><font color="red">*</font>Marks Obtained<br>(Including Optional subjects)&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the marks obtained (including all optional subjects - as they appear on the Detailed Marks Sheet)." type="number" min='1'maxlength="4" step='any' name="10All Marks"  <%if(ob.getTenallMarks()!=0)out.print("value='"+ob.getTenallMarks()+"'");%> required="">
                <br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input type="number" name="10YOP"  <%out.print((ob.getTenyop())==0?"placeholder='e.g. 2017'":"value='"+ob.getTenyop()+"'");%> max='2017' min="1000" required="">
                <br><br><font color="red">*</font>Board&nbsp;:&nbsp;<select  rel="tooltip" title="Provide your Board,viz,CBSE,ICSE,PSEB etc. If name not mentioned in the List then select Others and enter your board on the Others option. " name="10Board" required="" onchange="board10()"><option></option><option value="CBSE" <%if(ob.getTenboard().equals("CBSE")) out.print("selected"); %> >CBSE</option><option value="PSEB" <%if(ob.getTenboard().equals("PSEB")) out.print("selected"); %> >PSEB</option><option value="ICSE" <%if(ob.getTenboard().equals("ICSE")) out.print("selected"); %> >ICSE</option><option value="Others"  <% boolean b=false;if(!ob.getTenboard().equals("") && !ob.getTenboard().equals("PSEB") && !ob.getTenboard().equals("ICSE") && !ob.getTenboard().equals("CBSE")) {out.print("selected");b=true;} %> >Others</option></select>
                <br><br><font color="grey">*</font>Others&nbsp;:&nbsp;<input  rel="tooltip" title="Provide your Board." type="text" name="Others" <%if(b)out.print("value='"+ob.getTenboard()+"'");%>  disabled="<%out.print(b?"false":"true");%>"><br>
            </td>
            <%if(session.getAttribute("matric").equals("pmatric")){ %>
            <td>
                <br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the total Max Marks."  type="number" min='1' max='6500' name="12Max Marks"  <%if(ob.getTwelevemaxMarks()!=0)out.print("value='"+ob.getTwelevemaxMarks()+"'");%> required="">
                <br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the marks obtained." type="number" min='1' step='any'  name="12Marks"  <%if(ob.getTwelevemarks()!=0)out.print("value='"+ob.getTwelevemarks()+"'");%> required="">
                <br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input type="number" max='<%=("2017") /*TODO:add a date object for current year*/%>' min="1000" maxlength="4" minlength="4" name="12YOP"  <%out.print((ob.getTweleveyop())==0?"placeholder='e.g. 2017'":"value='"+ob.getTweleveyop()+"'");%> required="">
                <br><br><font color="red">*</font>Board&nbsp;:&nbsp;<select  rel="tooltip" title="Provide your Board,viz,CBSE,ICSE,PSEB etc. If name not mentioned in the List then select Others and enter your board on the Others option." name="12Board" required="" onchange="board12()"><option></option><option value="CBSE" <%if(ob.getTweleveboard().equals("CBSE")) out.print("selected"); %> >CBSE</option><option value="PSEB" <%if(ob.getTweleveboard().equals("PSEB")) out.print("selected"); %> >PSEB</option><option value="ICSE" <%if(ob.getTweleveboard().equals("ICSE")) out.print("selected"); %> >ICSE</option><option value="Others"  <%  b=false;if(!ob.getTweleveboard().equals("") && !ob.getTweleveboard().equals("PSEB") && !ob.getTweleveboard().equals("ICSE") && !ob.getTweleveboard().equals("CBSE")) {out.print("selected");b=true;} %> >Others</option></select>
                <br><br><font color="grey">*</font>Others&nbsp;:&nbsp;<input  rel="tooltip" title="Provide your Board." type="text" name="Others12"   <%if(b)out.print("value='"+ob.getTweleveboard()+"'");%>  disabled="<%out.print(b?"false":"true");%>"><br>  
            <%} else {%>
            <td>
                <br><br><font color="red">*</font>Max Marks&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the total Max Marks." type="number" min="1" max='10000' name="DiplomaMax Marks"  <%if(ob.getDiplomaMaxMarks()!=0)out.print("value='"+ob.getDiplomaMaxMarks()+"'");%>  required="">
                <br><br><font color="red">*</font>Marks Obtained&nbsp;:&nbsp;<input  rel="tooltip" title="Enter the marks obtained." type="number" min='1' step='any'  name="DiplomaMarks"  <%if(ob.getDiplomaMarks()!=0)out.print("value='"+ob.getDiplomaMarks()+"'");%>  required="">
                <br><br><font color="red">*</font>Year Of Passing&nbsp;:&nbsp;<input  rel="tooltip" title="" type="number" name="DiplomaYOP"  max='2017' min="1000" maxlength="4" minlength="4"  <%if(ob.getDiplomaYOP()!=0)out.print("value='"+ob.getDiplomaYOP()+"'");%> required="">
            <%} %>
            <br><br>
    <table >
          <tr>
              <td rowspan="2" vertical-align>
                <font color="red">*</font><b>Graduation:</b>
              </td>
              <td>
                <center>Under Graduate<center>
              </td>
              <td>
                <input type="radio" name="nextpage 2" value="ug" required="" >
              </td>
        </tr>
        <tr>
             <td>
               <center>Post Graduate</center>
             </td>
             <td>
               <input type="radio" name="nextpage 2" value="pg" required="" >
            </td>
        </tr>
        <tr>
          <td colspan="3">
              
              <!--<input type="button"href="scholasticdatastep2.jsp" value="Previous" >-->
              <input type="submit" value="Next">
          </td>
        </tr>
    </table>


        <br><br>

       
 </form>
 </table>
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
      board10();
      board12();
</script>
<%@include file="footer.jsp" %>