<%@page import="java.sql.*"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@include file="adminheader.jsp" %>
<br><br><br><br>
<script>
    function allcheck() {
        if(document.getElementById('selectall').checked == true )
        {
           i=2
          // alert("worked")
            while(true) {
                 var tc= document.getElementById("md"+i);
                 if(tc == null)
                     break;
                tc.checked=true    ;
                i++;
                }
        }
        else
        {
            i=2 // bec i know it will start from 2
          // alert("worked")
            while(true) {
                 var tc= document.getElementById("md"+i);
                 if(tc == null)
                     break;
                tc.checked=false    ;
                i++;
                }
        }
    
}


</script> 

<script>
    function jsrlc() {
        
    if(document.getElementById('selectall').checked == true)
    { 
        document.f1.action="admingetreport.jsp?all=1";
        document.f1.submit();
        
    }
    else
    {
        document.f1.action="admingetreport.jsp?so=1";
        document.f1.submit();
    }
 }  

</script>
  
<input type="button" name="t1" value="Download Scohalstic Data" onclick="jsrlc()" > 



Select All <input type="checkbox"  id="selectall" onclick="allcheck()" />
<%
    if(request.getParameter("all")!=null || request.getParameter("so")!=null)
    {
    
//string functions,abstraction-hiding,events make
        File file = new File(request.getRealPath("/")+"reports");
        if (!file.exists()) {
             file.mkdir();
        }
    FileOutputStream fout=new FileOutputStream(new File(request.getRealPath("/")+"reports/scholasticdata.csv"));//if you clean and build then create a folder in build
    //out.print(request.getRealPath("/")+"reports/testtp.csv");
       String xl="";
       String t="";
                        DB.DBlayer.executeq("drop table if exists maxver");
                        DB.DBlayer.executeq("create table maxver as select studentid,max(`version`) as \"ver\"  from studentscholasticdata group by studentid");
                       ResultSet rs;
                        if(request.getParameter("so")==null)
                            rs=DB.DBlayer.getResult("select * from studentscholasticdata,maxver where maxver.studentid=studentscholasticdata.studentid and maxver.ver=studentscholasticdata.Version");
                        else
                        {
                            rs=DB.DBlayer.getResult("select * from studentscholasticdata;");
    
                            ResultSetMetaData rsmd =    rs.getMetaData();
                            int n=rsmd.getColumnCount();
                            for (int i = 1; i <= n; i++) {
                                
                                if(request.getParameter(rsmd.getColumnName(i))!= null  )
                                    {
                                        if( !(t.equals("")))
                                             t=t+",";
                                        t=t+"`"+rsmd.getColumnName(i)+"`";
                                        
                                    }                                    
                                }
                            if(t.equals(""))
                                t="*";
                            rs=DB.DBlayer.getResult("select "+t+" from studentscholasticdata,maxver where maxver.studentid=studentscholasticdata.studentid and maxver.ver=studentscholasticdata.Version");
                        }   
                       
                        int i= rs.getMetaData().getColumnCount();
                    for(int j=1;j<=i;j++)
                    {
                        xl+=rs.getMetaData().getColumnName(j);
                        if(j==i)
                            xl+="\n";
                        else
                            xl+=",";
                    }
                     while(rs.next())
                     {
                         for(int j=1;j<=i;j++)
                         xl=xl+"\""+rs.getString(j)+"\",";
                         xl=xl+"\n";
                     }
        fout.write(xl.getBytes());
        fout.close();
        response.sendRedirect("reports/scholasticdata.csv");
    }
    /*else if(request.getParameter("c")!=null)
    {
              FileOutputStream fout=new FileOutputStream(new File(request.getRealPath("/")+"reports/companydata.csv"));
    //out.print(request.getRealPath("/")+"reports/testtp.csv");
       String xl="";
       
                     ResultSet rs=DB.DBlayer.getResult("select * from infosys");
                    int i= rs.getMetaData().getColumnCount();
                    
                     while(rs.next())
                     {
                         for(int j=1;j<=i;j++)
                         xl=xl+rs.getString(j)+",";
                         xl=xl+"\n";
                     }
        fout.write(xl.getBytes());
        fout.close();
        response.sendRedirect("reports/companydata.csv");
    
    }*/
   //else if(request.getParameter())
       // response.sendRedirect("adminlogedin.jsp");
       
//scholasticdata tr=new scholasticdata();


%>



<br><br>

<form name="f1" method="post" >
    <table width=100% border="0" cellspacing="5" >
        
<%
    ResultSet rs=DB.DBlayer.getResult("select * from studentscholasticdata;");
    
        ResultSetMetaData rsmd =    rs.getMetaData();
        int n=rsmd.getColumnCount();
        String s;
        out.print("<tr>");
       
        for (int i =2; i <= n; i++) {
            
           s=rsmd.getColumnName(i);
           out.print((i%5==2)?"<tr>":"");
           out.print( "<td>"+s+"<input id='md"+i+"' type=\"checkbox\" name='"+s+"' > </td>");
           
           out.print((i%5==1)?"</tr>":"");
            }
     
            rs.close();
%>

 </table>
</form>




<%@include  file="adminfooter.jsp" %>