
<%@page import="java.math.BigInteger"%>
<%@include file="header.jsp" %>
<%

        studata.Studentscholasticdata ob=(studata.Studentscholasticdata)session.getAttribute("studata");
        try
        {

          String t=request.getParameter("Department");
          ob.setDepartment(t.equals("Others")?request.getParameter("othersDepartment"):t);
          ob.setStream(request.getParameter("Stream"));
          ob.setRollno(Integer.parseInt(request.getParameter("Roll No.")));
          ob.setUnivregno(request.getParameter("Univ.Reg No."));
          ob.setParticipating((request.getParameter("Participating").equals("YES"))?"Y":"N");

        }
        catch(Exception e)
        {
          //  out.print("<script>alert('Error"+e.getMessage()+"');</script>");
        }

%>
<br><br>

<style class="csscreations">/*custom font*/
/*@import url(http://fonts.googleapis.com/css?family=Montserrat);*/

  th th{
      padding: 5px;
  }
  td td{
    padding: 5px;
  }

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




</style>
  <ul id="progressbar" style='position:relative; z-index:8003'>
    <li class="active" onclick="window.location='scholasticdatastep1.jsp?d=1'">University Record</li>
    <li class="active" onclick="window.location='scholasticdatastep2.jsp?d=1'">Personal Profile</li>
     <li >Academic Details</li>
	</ul>
<br>
<script>
    
    
    function validate(){
        //Name Validating

     try{
        var x=document.forms.step2['First Name'].value;
        x=x.trim();
        var res = x.charAt(0).toUpperCase();
        document.forms.step2['First Name'].value= x.replace(x.charAt(0),res);
        x=document.forms.step2['Middle Name'].value;
        x=x.trim();
        res = x.charAt(0).toUpperCase();
        document.forms.step2['Middle Name'].value= x.replace(x.charAt(0),res);
        x=document.forms.step2['Last Name'].value;
        x=x.trim();
        res = x.charAt(0).toUpperCase();
        document.forms.step2['Last Name'].value= x.replace(x.charAt(0),res);
        x=document.forms.step2['Fathers Name'].value;
        document.forms.step2['Fathers Name'].value=x.trim();
    }
    catch(e)
    {
        ;
    }
//        try
//        {
//            var x=document.forms.step2['Address'].value;
//        x='"'+x+'"';
//        document.forms.step2['Address'].value=x;
//        alert(x);
//        
//        }
//        catch(e)
//        {
//            alert(e);
//        }

         var checkString = document.forms.step2['First Name'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters! (Check for whitespaces/blank spaces).");
                            document.forms.step2['First Name'].focus();
                            return (false);
                        }
                }
          checkString = document.forms.step2['Middle Name'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters! (Check for whitespaces/blank spaces).");
                            document.forms.step2['Middle Name'].focus();
                            return (false);
                        }
                }
            checkString = document.forms.step2['Surname'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters! (Check for whitespaces/blank spaces).");
                            document.forms.step2['Surname'].focus();
                            return (false);
                        }
                }
            checkString = document.forms.step2['Fathers Name'].value;
                    if (checkString != "") {
                        if ( /[^A-Za-z\d_ ]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters! (Check for whitespaces/blank spaces).");
                            document.forms.step2['Fathers Name'].focus();
                            return (false);
                        }
                }
             checkString = document.forms.step2['Address'].value;
                    if (checkString != "") {
                        if ( /["]/.test(checkString)) {
                            alert("Please enter only letter and numeric characters! .");
                            document.forms.step2['Address'].focus();
                            return (false);
                        }
                }

        

    }
</script>


<form id='myform' name="step2" method="post" action="scholasticdatastep3.jsp" onsubmit="return validate()">

    <br><font color="red">*</font>Gender&nbsp;:&nbsp;
    <select name="Gender" required>
        <option></option>
         <option value="M" <%if(ob.getGender().equals('M')) out.print("selected"); %> >Male</option>
         <option value="F" <%if(ob.getGender().equals('F')) out.print("selected"); %> >Female</option>
         <option value="O" <%if(ob.getGender().equals('O')) out.print("selected"); %> >Others</option>
     </select>
     <br><br><font color="red">*</font>Residence&nbsp;:&nbsp;
    <select name="Residence" required >
        <option></option>
        <option value="Hosteller" <%if(ob.getResidence().equals("Hosteller")) out.print("selected"); %>  >Hosteller</option>
        <option value="Local" <%if(ob.getResidence().equals("Local")) out.print("selected"); %>  >Local</option>
        <option value="Commutter from other station" <%if(ob.getResidence().equals("Commutter from other station")) out.print("selected"); %>  >Commutter from other station</option>
    </select>
    <br><br><font color="red">*</font>First Name&nbsp;:&nbsp;<input  rel="tooltip" title="Enter your first name here" type="text" name="First Name" <%out.print("value='"+ob.getFirstName()+"'");%>  required="">
    <br><br>Middle Name&nbsp;:&nbsp;<input  rel="tooltip" title="Enter your middle name here if any" type="text"  <%out.print("value='"+ob.getMiddleName()+"'");%>   name="Middle Name" >
    <br><br>Surname&nbsp;:&nbsp;<input  rel="tooltip" title="Enter Surname here (if any)" type="text" name="Surname"  <%out.print("value='"+ob.getSurname()+"'");%>   >
    <br><br><font color="red">*</font>Course Status&nbsp;:&nbsp;
    <select name="Course Status" required >
        <option></option>
        <option value="Pending"  <%if(ob.getCourseStatus().equals("Pending")) out.print("selected"); %> >Pending/Pursuing</option>
        <option value="Completed"  <%if(ob.getCourseStatus().equals("Completed")) out.print("selected"); %> >Completed</option>
    </select>
    <br><br><font color="red">*</font>Father's Name&nbsp;:&nbsp;<input  rel="tooltip" title="" type="text" name="Fathers Name"   <%out.print("value='"+ob.getFathersName()+"'");%>  required="">
    <br><br><font color="red">*</font>Date Of Birth&nbsp;:&nbsp;<input  rel="tooltip" title="" type="date" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" placeholder="Date/Month/Year"  rel="tooltip" title="Date shoulde be entered in correct format i.e. Date/Month/Year ." name="DOB"  <%out.print("value='"+ob.getDob()+"'");%>    required="">

    <br><br>Address&nbsp;:&nbsp; <textarea  type="text" name="Address"   ><%out.print(ob.getAddress());%></textarea>
        <br><br><font color="red">*</font>State&nbsp;:&nbsp;
        <select  name="State" required><option></option>
            <%String x=ob.getState();%>
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
        <br><br><font color="red">*</font>Student's Contact&nbsp;:&nbsp;<input  rel="tooltip" title="" type="number" min="999999999" max="9999999999" name="Contact Student"  <%out.print("value='"+ob.getContactStudent()+"'");%> required>
    <br><br><font color="red">*</font>Student's Parent Contact&nbsp;:&nbsp;<input  rel="tooltip" title="" type="number"  min="999999999" max="9999999999" name="Contact Parent" <%out.print("value='"+ob.getContactParent()+"'");%>  required >
    <br><br>Email ID&nbsp;:&nbsp;<input  rel="tooltip" title="" style="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" type="text" name="Email" value="<%out.print((String)session.getAttribute("em"));%>" readonly="">
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
    <table >
      <tr>
      <td rowspan="2">
        <font color="red">*</font><b>Before Graduation</b>&nbsp;:&nbsp;
      </td>
      <td>
          <center>    Matriculation(10th) + <br> Post Metric(12th)</center>
      </td>
      <td>     <input  rel="tooltip" title="" type="radio"  class="radio" name="nextpage" value="pmatric" required>
      </td>
      </tr>
      <tr>
      <td>
           <center> Matriculation(10th) + <br> Post Metric(Diploma)&nbsp;&nbsp; </center>
      </td>
      <td>
           <input  rel="tooltip" title="" type="radio" class="radio" name="nextpage" value="diploma" required>
      </td>
     </tr>
</table>

<br><br>

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
