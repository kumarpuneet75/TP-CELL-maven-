<%@page import="studata.Studentscholasticdata"%>
<%
   if(session.getAttribute("studata")==null )
    session.setAttribute("studata",new studata.Studentscholasticdata());
   Studentscholasticdata ob  = (Studentscholasticdata)session.getAttribute("studata");
%>

<%@include file="header.jsp" %>
<br><br>

<style class="csscreations">
/*custom font*/
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

input:invalid {
           border-color: #DD2C00;
   }

   #notify {
       margin-top: 5px;
       padding: 10px;
       font-size: 12px;
       width: 100%;
       color: #fff;
       display: block;
       position: absolute;
       top: 0;
       left: 0;
       width: 100%;
   }
   #notify.error {
       background-color: #DD2C00;
   }

   iframe:focus {
    outline: none;
}

iframe[seamless] {
    display: block;
}
</style>

<script>


function departmentChange(){
      try {
        var x = document.forms.step1['Department'].value;
        if (x === 'Others') {

          document.getElementById("othersdepartment").innerHTML = '<br><font id="*" color="red">*</font>Other Department&nbsp;:&nbsp;<input type="text" name="othersDepartment" pattern="[A-Za-z .()]*"   rel="tooltip" title="Name should only contain Alphabets!. e.g. UCOE"  value="<% out.print(ob.getDepartment());%>" >';
          document.forms.step1['othersDepartment'].required = true;
        } else {
          document.getElementById("othersdepartment").innerHTML = "";
        }


        var y = document.getElementById("stream");
        if (x === '[UCoE]Computer Engg. Dept') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";
          var option = document.createElement("option");
          option.text = "B.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Computer Engg)";
          y.add(option);
        } else if (x === '[UCoE]Electronics Engg. Dept') {
          var t = document.getElementById("stream").options.length;

          while (t > 0) {
            y.remove(0);
            t--;
          }
          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";
          var option = document.createElement("option");
          option.text = "B.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Electronics Engg)";
          y.add(option);
        } else if (x === '[UCoE]Mechanichal Engg. Dept') {
          var t = document.getElementById("stream").options.length;

          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";
          var option = document.createElement("option");
          option.text = "B.Tech (Mechanichal Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Mechanichal Engg)";
          y.add(option);
        } else if (x === '[UCoE]Civil Engg. Dept') {
          var t = document.getElementById("stream").options.length;

          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";
          var option = document.createElement("option");
          option.text = "B.Tech (Civil Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Civil Engg)";
          y.add(option);
        } else if (x === 'YCOE') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "B.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Mechanichal Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Mechanichal Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Civil Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Civil Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);
        } else if (x === 'CoE-RP') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "B.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);


        } else if (x === '[DCS]Department of Computer Science') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M. Tech. (Comp. Sc.)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M. Tech. (ICT)";
          y.add(option);
        } else if (x === 'PURCITM') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M. Tech. (Comp. Sc.)";
          y.add(option);
        } else if (x === 'Maur') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);
        } else if (x === 'Ralla') {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);
        } else {
          var t = document.getElementById("stream").options.length;
          while (t > 0) {
            y.remove(0);
            t--;
          }

          var option = document.createElement("option");
          option.text = "";
          y.add(option);
          y.selectedIndex = "0";

          var option = document.createElement("option");
          option.text = "B.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Computer Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Electronics Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Mechanichal Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Mechanichal Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "B.Tech (Civil Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M.Tech (Civil Engg)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "MCA";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M. Tech. (Comp. Sc.)";
          y.add(option);
          var option = document.createElement("option");
          option.text = "M. Tech. (ICT)";
          y.add(option);
        }


      } catch (e) {
        alert(e);
      }}


function validate(){

}
</script>

<ul id="progressbar" style='position:relative; z-index:8003'>
    <li  class="active" onclick="window.location='scholasticdatastep1.jsp'">University Record</li>
		<li >Personal Profile</li>
		<li >Academic Details</li>

	</ul>
<br>

<form name="step1" id='myform' method="post" action="scholasticdatastep2.jsp" onsubmit="return  validate()">

    <font color="red">*</font>Department&nbsp;:&nbsp;
<select name="Department"  rel="tooltip" title='Select your Department name from Drop Down List.' required="" onchange="departmentChange()">
    <option value="" disabled selected hidden></option>
    <option value="[UCoE]Computer Engg. Dept"  <%if(ob.getDepartment().equals("[UCoE]Computer Engg. Dept")) out.print("selected"); %> >[UCoE]Computer Engg. Dept</option>
    <option value="[UCoE]Electronics Engg. Dept"  <%if(ob.getDepartment().equals("[UCoE]Electronics Engg. Dept")) out.print("selected"); %> >[UCoE]Electronics Engg. Dept</option>
    <option value="[UCoE]Mechanichal Engg. Dept"  <%if(ob.getDepartment().equals("[UCoE]Mechanichal Engg. Dept"  )) out.print("selected"); %> >[UCoE]Mechanichal Engg. Dept</option>
    <option value="[UCoE]Civil Engg. Dept"  <%if(ob.getDepartment().equals("[UCoE]Civil Engg. Dept" )) out.print("selected"); %> >[UCoE]Civil Engg. Dept</option>
    <option value="YCOE"  <%if(ob.getDepartment().equals("YCOE"  )) out.print("selected"); %> >YCOE</option>
    <option value="CoE-RP"  <%if(ob.getDepartment().equals("CoE-RP" )) out.print("selected"); %> >CoE-RP</option>
    <option value="[DCS]Department of Computer Science"  <%if(ob.getDepartment().equals("[DCS]Department of Computer Science")) out.print("selected"); %> >[DCS]Department of Computer Science</option>
    <option value="PURCITM"  <%if(ob.getDepartment().equals("PURCITM")) out.print("selected"); %> >PURCITM</option>
    <option value="Maur"  <%if(ob.getDepartment().equals("Maur")) out.print("selected"); %> >Maur</option>
    <option value="Ralla"  <%if(ob.getDepartment().equals("Ralla")) out.print("selected"); %> >Ralla</option>
    <% if(  !ob.getDepartment().equals("") && !ob.DepartmentsList.contains(ob.getDepartment()   )  ) out.print("<option value='"+ob.getDepartment()+"'selected>"+ob.getDepartment()+"</option>"); %>
    <option value="Others"  >Others</option>
</select>

<div id="othersdepartment"></div>

<br><font color="red">*</font>Stream & Branch&nbsp;:&nbsp;
<select  rel="tooltip" title="Select your Course/Stream from Drop down List." name="Stream" id="stream" required>
  <option value="" disabled selected hidden></option>
</select>
<script>
    try{
        departmentChange();
   var y = document.getElementById("stream");
   var option = document.createElement("option");
          option.text = "<%out.print(ob.getStream()); %>";
          y.add(option);
             var t=document.getElementById("stream").options.length;
                  y.selectedIndex = t-1;

   }
   catch(e){alert(e);}
</script>
<br ><br>
<font color="red">*</font>Roll Number&nbsp;:&nbsp;<input  rel="tooltip" title="Only pure numerical Roll numbers are accepted." type="number" name="Roll No." style="color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;" value="<% out.print(DB.DBlayer.getScaler("select rollno from student where studentid='"+session.getAttribute("id")+"';")); %>" readonly><br><br>
University Registration Number&nbsp;:&nbsp;<input  rel="tooltip" title="Enter your University Registration Number in the format:PU(P)2009-617 etc." type="text" name="Univ.Reg No." value="<%=ob.getUnivregno()%>" ><br><br>

<font color="red">*</font>Participating&nbsp;:&nbsp;<select  rel="tooltip" title='Enter "YES" for participation in placement activities. Enter "NO" if you are providing the data, but do not want to participate in any of the campus recruitment processes.'  name="Participating" required><option value="" disabled selected hidden></option><option value='YES' <%if(ob.getParticipating().equals("Y")) out.print("selected"); %> >YES</option><option value='NO' <%if(ob.getParticipating().equals("N")) out.print("selected"); %>  >NO</option></select>
<br><br>
<input type="submit" value="Next">
 </form>
<input type="hidden" id="refresh" value="no">

 <script src="jquery.tools.min.js" type="text/javascript"></script>
<script>
      // Drop Down Effects
      // $('select').vDrop();

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
