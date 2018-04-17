
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 <%
    if(DB.DBlayer.getScaler("select version from studentscholasticdata where studentid="+session.getAttribute("id"))==null)
        response.sendRedirect("scholasticdatastep1.jsp");

    String v=DB.DBlayer.getScaler("select max(`version`) from studentscholasticdata where studentid='"+session.getAttribute("id")+"'");
    int x=0;
    if(v==null || v.equals(""))
        response.sendRedirect("scholasticdatastep1.jsp");


%>

<style>

 /* simple css-based tooltip */
.tooltip {
    background-color:#000;
    border:1px solid #fff;
    padding:10px 15px;
    width:200px;
    display:none;
    color:#fff;
    text-align:left;
    font-size:12px;

    /* outline radius for mozilla/firefox only */
    -moz-box-shadow:0 0 10px #000;
    -webkit-box-shadow:0 0 10px #000;
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
  border-style: groove  ;
  vertical-align: top;
}
#table-example-1 th {
  padding: 0.2em;
  vertical-align: middle;
  text-align: center;
}
#table-example-1 tr{

    class:row row-centered;
}#table-example-1 th{
    class:col col-centered;
}

#table-example-1 tbody td:first-child::after {
  content: leader(". ");
}

.hover {
  background: lightgreen;
}


.row-centered {
    text-align:center;
}
.col-centered {
    display:inline-block;
    float:none;
    /* reset the text-align */
    text-align:left;
    /* inline-block space fix */
    margin-right:4px;
}
</style>
<script>
    function validate(){
        //Name Validating
        var x=document.forms.studata['First Name'].value;
        x=x.trim();
        var res = x.charAt(0).toUpperCase();
        document.forms.studata['First Name'].value= x.replace(x.charAt(0),res);
        x=document.forms.studata['Middle Name'].value;
        x=x.trim();
        res = x.charAt(0).toUpperCase();
        document.forms.studata['Middle Name'].value= x.replace(x.charAt(0),res);
        x=document.forms.studata['Last Name'].value;
        x=x.trim();
        res = x.charAt(0).toUpperCase();
        document.forms.studata['Last Name'].value= x.replace(x.charAt(0),res);


    }

</script>

<form id="myform" name="studata" method="post" action="submitscholasticdata.jsp?ss=1" onsubmit="validate()" >
    <fieldset disabled=""> <div id="inputs">

    <table width="100%" id='table-example-1' class="zebra" border='0'  >

<%

     if( request.getParameter("ob")!=null && request.getParameter("ob").equals("1"))
        out.print("<script> alert('Note: One student can submit scholastic data only limited number of times.You are allowed only 10 updations.The next page now opened will show you the data you have entered.The version tab will tell you how many times you have updated your data. Also the student will be be responsible if the students enters wrong data.If you found any difficulties or have any queries,contact your respective Placment Representatives. ');</script>");
     if( request.getParameter("ss")!=null && request.getParameter("ss").equals("1"))
        out.print("<script> alert('Submision  Success');</script>");
String qry="select * from studentscholasticdata where studentid='"+session.getAttribute("id")+"' and `version`=(select max(`version`) from studentscholasticdata where studentid='"+session.getAttribute("id")+"')";
//out.print(qry);
ResultSet rr=DB.DBlayer.getResult(qry );

boolean bol=rr.next(); //agar koi data hai usmein toh bol batade ki koi data hai ya nahi but note that data as koi row hai ya nahi, ye bhi ho sakta ki ki row ho but kisi field mein data null hao,bol sirf yeh guarantee deta hai ki data us student ka kuch adata para hai hmare pass.
//bakiyan vaste v set karni hai
//if(!bol)
  //  response.sendRedirect("scholasticdatastep1.jsp");//iston baad editing start karni hai
ResultSet ttc=DB.DBlayer.getResult("SELECT a.COLUMN_NAME, a.COLUMN_COMMENT FROM  information_schema.COLUMNS a WHERE a.TABLE_NAME = 'studentscholasticdata';" );

int n=rr.getMetaData().getColumnCount();

CharSequence b=new String("BackLogs");
CharSequence p="Pending";
String C;
for(int i=2;i<=85;i++)
{

    ttc.absolute(i);

    C=rr.getMetaData().getColumnName(i);

    if(C.equals("Version"))
        out.print("<tr > <td>");

    else if(C.equals("10Core Max Marks") )
            out.print("<tr><td>");
    else if(C.equals("12Max Marks") )
            out.print("<td>");
    else if(C.equals("Grad.Degree") )
            out.print("<td>");

    else if(C.equals("Sem1MM") )
            out.print("<tr><td>");
    else if(C.equals("Sem2MM") )
            out.print("<td>");
    else if(C.equals("Sem3MM") )
            out.print("<td>");
    else if(C.equals("Sem4MM") )
            out.print("<tr><td>");
    else if(C.equals("Sem5MM") )
            out.print("<td>");
    else if(C.equals("Sem6MM") )
            out.print("<td>");
    else if(C.equals("Sem7MM") )
            out.print("<tr><td>");
    else if(C.equals("Sem8MM") )
            out.print("<td>");

    else if(C.equals("Total Denominator") )
            out.print("<td>");


    if(C.equals("Department"))
    {

        out.print("<br><font color=red>*</font>"+C+"&nbsp;:&nbsp;<select title='"+ttc.getString(2)+"' name='"+C+"'><option>"+(bol?rr.getString(i):"")+"</option></select><br>");


    }
    else  if(C.equals("Stream"))
    {

        out.print("<br><font color=red>*</font>"+C+"&nbsp;:&nbsp;<select title='"+ttc.getString(2)+"' name='"+C+"'><option>"+(bol?rr.getString(i):"")+"</option></select><br>");
    }

    else if(C.equals("Residence"))
    {
        String t="";
        if(bol)
        t=rr.getString(i);
        out.print("<br><font color=red>*</font>"+C+"&nbsp;:&nbsp;<select name='"+C+"'><option  title='"+ttc.getString(2)+"'  value=''></option><option value='Hosteller' "+(bol?(t.equals("Hosteller")?"selected":""):"")+" >Hosteller</option><option value='Local' "+(bol?(t.equals("Local")?"selected":""):"")+" >Local</option><option value='Commutter from other station' "+(bol?(t.equals("Commutter from other station")?"selected":""):"")+" >Commutter from other station</option></select><br>");
    }
    else if(C.equals("Evaluation System"))
    {
       String t="";
        if(bol==true)
        {
            t=rr.getString(i);
            if(t==null)
                t="";
        }
        out.print("<br>"+C+"&nbsp;:&nbsp;<input title='"+ttc.getString(2)+"' type='radio' name='"+C+"' value='CGPA'  "+(t.equals("CGPA")?"checked":"")+" >CGPA<input type='radio' name='"+C+"' value='%age'  "+(t.equals("%age")?"checked":"")+" >%age<br>");
    }

    else if(C.equals("Version") || C.equals("NAME") || C.equals("10%age") || C.equals("12%age") || C.equals("Diploma%age") || C.equals("Sem1%age") || C.equals("Sem2%age") || C.equals("Sem3%age") || C.equals("Sem4%age") || C.equals("Sem5%age") || C.equals("Sem6%age") || C.equals("Sem7%age") || C.equals("Sem8%age") || C.equals("Total Denominator") || C.equals("Total Numerator") || C.equals("Total Backlogs") || C.equals("Pending Sems")  || C.equals("Current %age")  )
    {
        out.print("<br>"+(rr.getMetaData().isNullable(i)==ResultSetMetaData.columnNoNulls?"<font color=red>*</font>":"")+rr.getMetaData().getColumnLabel(i)+"&nbsp;:&nbsp;<input title='"+ttc.getString(2)+"' STYLE=\"color: #FFFFFF; font-family: Verdana; font-weight: bold; font-size: 12px; background-color: #72A4D2;\" type=text name='"+C+"' value='"+(bol?(rr.getString(i)==null?"":rr.getString(i) ):"")+"' ReadOnly /><br>");

    }
    else if(C.equals("Participating"))
       out.print("<br><font color=red>*</font>"+C+"&nbsp;:&nbsp;<input title='"+ttc.getString(2)+"' type='radio' name='"+C+"' "+(bol?(rr.getString(i).equals("Y")?" checked ":""):"")+"/> YES <input title='"+ttc.getString(2)+"' type='radio' name='"+C+"' "+(bol?(rr.getString(i).equals("N")?"checked":""):"")+"/> NO <br></td> " );
    else if(C.equals("Gender"))
       out.print("<td> <br><font color=red>*</font>"+C+"&nbsp;:&nbsp;Female<input title='"+ttc.getString(2)+"' type='radio' name='"+C+"' value='Female' "+(bol?(rr.getString(i).equals("F")?"checked":""):"")+" required > Male<input type='radio' name='"+C+"' value='Male' "+(bol?(rr.getString(i).equals("M")?"checked":""):"")+" required> Others<input title='"+ttc.getString(2)+"' type='radio' name='"+C+"' value='Others' "+(bol?(rr.getString(i).equals("Others")?"checked":""):"")+" required>  <br>" );
    else if(C.equals("Course Status"))
       out.print("<br><font color=red>*</font>"+C+"&nbsp;:&nbsp;Pending<input title='"+ttc.getString(2)+"' type='radio' name='"+C+"' value='Pending' "+(bol?(rr.getString(i).equals("Pending")?"checked":""):"")+" > Completed<input type='radio' name='"+C+"' value='Completed' "+(bol?(rr.getString(i).equals("Completed")?"checked":""):"")+"  required>  <br>" );
    else if(C.contains(b) || C.contains(p))
       out.print("<br>"+(rr.getMetaData().isNullable(i)==ResultSetMetaData.columnNoNulls?"<font color=red>*</font>":"")+C+"&nbsp;:&nbsp;<select title='"+ttc.getString(2)+"' name='"+C+"' "+(rr.getMetaData().isNullable(i)==ResultSetMetaData.columnNoNulls?"required":"")+" ><option value='-1'>Select...</option><option value='0' "+(bol?(rr.getString(i).equals("0")?"selected":""):"")+" >0</option><option value='1' "+(bol?(rr.getString(i).equals("1")?"selected":""):"")+" >1</option><option value='2' "+(bol?(rr.getString(i).equals("2")?"selected":""):"")+" >2</option><option value='3' "+(bol?(rr.getString(i).equals("3")?"selected":""):"")+" >3</option><option value='4' "+(bol?(rr.getString(i).equals("4")?"selected":""):"")+" >4</option><option value='5' "+(bol?(rr.getString(i).equals("5")?"selected":""):"")+" >5</option><option value='6' "+(bol?(rr.getString(i).equals("6")?"selected":""):"")+" >6</option><option value='7' "+(bol?(rr.getString(i).equals("7")?"selected":""):"")+" >7</option><option value='8' "+(bol?(rr.getString(i).equals("8")?"selected":""):"")+" >8</option></select>  <br>" );

    else
      out.print("<br>"+(rr.getMetaData().isNullable(i)==ResultSetMetaData.columnNoNulls?"<font color=red>*</font>":"")+rr.getMetaData().getColumnLabel(i)+"&nbsp;:&nbsp;<input title='"+ttc.getString(2)+"' type="+((rr.getMetaData().getColumnTypeName(i).equals("DECIMAL") && rr.getMetaData().getScale(i)==0) || rr.getMetaData().getColumnTypeName(i).equals("INT") ?"number":"text")+" name='"+C+"' value='"+(bol?(rr.getString(i)==null?"":rr.getString(i)):"")+"' "+(rr.getMetaData().isNullable(i)==ResultSetMetaData.columnNoNulls?"required":"") +"/><br>");


    if(C.equals("DOB") )
    {

        // title='"+ttc.getString(2)+"'
        String f;
        out.print("</td>");
        out.print("<td>");
            for(int j=86;j<=n;j++)
            {
                ttc.absolute(j);
                f=rr.getMetaData().getColumnName(j);
                if(f.equals("State"))
                    {

                        out.print("<br><font color=red>*</font>"+f+"&nbsp;:&nbsp;<select title='"+ttc.getString(2)+"' name='"+f+"'><option>"+(bol?rr.getString(j):"")+"</option></select><br>");
                    }
                else
                       out.print("<br>"+(rr.getMetaData().isNullable(j)==ResultSetMetaData.columnNoNulls?"<font color=red>*</font>":"")+rr.getMetaData().getColumnLabel(j)+"&nbsp;:&nbsp;<input title='"+ttc.getString(2)+"' type="+((rr.getMetaData().getColumnTypeName(j).equals("DECIMAL") && rr.getMetaData().getScale(j)==0) || rr.getMetaData().getColumnTypeName(j).equals("INT") ?"number":"text")+" name='"+f+"' value='"+(bol?(rr.getString(j)==null?"":rr.getString(j) ):"")+"' "+(rr.getMetaData().isNullable(j)==ResultSetMetaData.columnNoNulls?"required":"") +" title='kuchbhi' /><br>");
            }
          out.print("</td>");

    }
    else if(C.equals("10Board") )
            out.print("</td>");
    else if(C.equals("DiplomaYOP") )
            out.print("</td>");
    else if(C.equals("Grad YOP") )
            out.print("</td></tr>");

    else if(C.equals("Sem2 Pending") )
            out.print("</td>");
    else if(C.equals("Sem3 Pending") )
            out.print("</td></tr>");
    else if(C.equals("Sem4 Pending") )
            out.print("</td>");
    else if(C.equals("Sem5 Pending") )
            out.print("</td>");
    else if(C.equals("Sem6 Pending") )
            out.print("</td>");
    else if(C.equals("Sem7 Pending") )
            out.print("</td>");
    else if(C.equals("Sem8 Pending") )
            out.print("</td>");

    else if(C.equals("DescriptionGap") )
            out.print("</td>");



}

 
rr.close(); 
ttc.close();

%>

    </table>

<br>
<!--<input  type="submit" Value='Submit'  > -->

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
</form>
<%@include file="footer.jsp" %>
