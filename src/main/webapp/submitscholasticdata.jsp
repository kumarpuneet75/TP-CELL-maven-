<%@page import="java.sql.ResultSet"%>
<%
//Deprecated ,present to make use of older forms
    
   
    
    
   
    ResultSet rs=DB.DBlayer.getResult("select * from studentscholasticdata ");
    String v=DB.DBlayer.getScalar("select max(`version`) from studentscholasticdata where studentid='"+session.getAttribute("id")+"'");
    int x=0;
    if(v==null || v.equals(""));
    else
  x=Integer.parseInt(v)+1;
    if(x==10)
    {
        out.print("<script>alert(\"You cannot Update Anymore\")</script>");
        response.sendRedirect("logedin.jsp");
    
    }
    else
    {    
        
    
        String q="("+session.getAttribute("id")+","+x ;
    String e="(studentid,Version";
    int c=rs.getMetaData().getColumnCount();
    for(int i=3;i<c;i++)
    {    
        
    String C=rs.getMetaData().getColumnName(i);
        try{
        if(C.equals("Participating"))
        {
            e=e+",`"+C+"`";
            q=q+","+(request.getParameter(C)==null?"0":"1");
        }
        else if(C.equals("NAME"))
        {
            e=e+",`"+C+"`";
            String t=request.getParameter("First Name")+" "+request.getParameter("Middle Name")+" "+request.getParameter("Surname");
             q=q+",'"+t+"'";
        }
        else if(C.equals("10%age"))
        {
            
            double mm=Double.parseDouble(request.getParameter("10All Max Marks"));
            double m=Double.parseDouble(request.getParameter("10All Marks"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        }else if(C.equals("12%age"))
        {
            double mm=Double.parseDouble(request.getParameter("12Max Marks"));
            double m=Double.parseDouble(request.getParameter("12Marks"));
             e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        }else if(C.equals("Diploma%age"))
        {
            
            double mm=Double.parseDouble(request.getParameter("DiplomaMax Marks"));
            double m=Double.parseDouble(request.getParameter("DiplomaMarks"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        }else if(C.equals("Grad.%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Grad.Max Marks"));
            double m=Double.parseDouble(request.getParameter("Grad.Marks"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        }
        else if(C.equals("Sem1%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem1MM"));
            double m=Double.parseDouble(request.getParameter("Sem1M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        } else if(C.equals("Sem2%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem2MM"));
            double m=Double.parseDouble(request.getParameter("Sem2M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        } else if(C.equals("Sem3%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem3MM"));
            double m=Double.parseDouble(request.getParameter("Sem3M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        } else if(C.equals("Sem4%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem4MM"));
            double m=Double.parseDouble(request.getParameter("Sem4M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        }
         else if(C.equals("Sem5%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem5MM"));
            double m=Double.parseDouble(request.getParameter("Sem5M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        } else if(C.equals("Sem6%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem6MM"));
            double m=Double.parseDouble(request.getParameter("Sem6M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        } else if(C.equals("Sem7%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem7MM"));
            double m=Double.parseDouble(request.getParameter("Sem7M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        } else if(C.equals("Sem8%age"))
        {
            double mm=Double.parseDouble(request.getParameter("Sem8MM"));
            double m=Double.parseDouble(request.getParameter("Sem8M"));
            e=e+",`"+C+"`";
             q=q+",'"+(100*(m/mm))+"'";
        }
        
           else
        {
            String t=request.getParameter(C);
            if(t==null||t.equals(""));
            else
            {e=e+",`"+C+"`";
             q=q+",'"+t+"'";
            }
        }
          }catch(Exception ex)
        {
            
        }
    }
        e=e+",`"+rs.getMetaData().getColumnName(c)+"`)";
     q=q+",'"+request.getParameter(rs.getMetaData().getColumnName(c))+"')";
     
      String k="insert into studentscholasticdata "+e+" values "+q+"";
     //out.print(k);

    DB.DBlayer.executeq(k);
    response.sendRedirect("scholasticdata.jsp");
    }
    rs.close();
%>