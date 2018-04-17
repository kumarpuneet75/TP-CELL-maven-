
<%

    float m,mm;
    float ss=0,s=0;
    
    studata.Studentscholasticdata ob=(studata.Studentscholasticdata)session.getAttribute("studata");
    if(session.getAttribute("graduation").equals("ug"))
    {   
        
      ob.setGraddegree("");
      ob.setGradsubjectCombo("");
      ob.setGradevaluationSystem("");
      ob.setGradmaxMarks(0f);
      ob.setGradmarks(0f);
      ob.setGradpercentage(0);
      ob.setGradYOP(new Short("0"));

        
        if(session.getAttribute("matric").equals("diploma"))
        {//diploma k 1st 2 sem compulsory nhi
            try{
        mm=Float.parseFloat((request.getParameter("Sem1MM")));
        m=Float.parseFloat(request.getParameter("Sem1M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem1MM(Float.parseFloat(request.getParameter("Sem1MM")));
        ob.setSem1M(Float.parseFloat(request.getParameter("Sem1M")));
      if(!(Float.isNaN(mm)))
        ob.setSem1age(mm);
        ob.setSem1BackLogs(Short.parseShort(request.getParameter("Sem1 BackLogs")));
        ob.setSem1Pending(Short.parseShort(request.getParameter("Sem1 Pending")));
        
         mm=Float.parseFloat((request.getParameter("Sem2MM")));
        m=Float.parseFloat(request.getParameter("Sem2M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem2MM(Float.parseFloat(request.getParameter("Sem2MM")));
        ob.setSem2M(Float.parseFloat(request.getParameter("Sem2M")));
      if(!(Float.isNaN(mm)))
        ob.setSem2age(mm);
        ob.setSem2BackLogs(Short.parseShort(request.getParameter("Sem2 BackLogs")));
        ob.setSem2Pending(Short.parseShort(request.getParameter("Sem2 Pending")));
            }catch(Exception e)
            { ;}
            
            }
        else
        {
        
            
         mm=Float.parseFloat((request.getParameter("Sem1MM")));
        m=Float.parseFloat(request.getParameter("Sem1M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem1MM(Float.parseFloat(request.getParameter("Sem1MM")));
        ob.setSem1M(Float.parseFloat(request.getParameter("Sem1M")));
      if(!(Float.isNaN(mm)))
        ob.setSem1age(mm);
        ob.setSem1BackLogs(Short.parseShort(request.getParameter("Sem1 BackLogs")));
        ob.setSem1Pending(Short.parseShort(request.getParameter("Sem1 Pending")));
        
         mm=Float.parseFloat((request.getParameter("Sem2MM")));
        m=Float.parseFloat(request.getParameter("Sem2M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem2MM(Float.parseFloat(request.getParameter("Sem2MM")));
        ob.setSem2M(Float.parseFloat(request.getParameter("Sem2M")));
      if(!(Float.isNaN(mm)))
        ob.setSem2age(mm);
        ob.setSem2BackLogs(Short.parseShort(request.getParameter("Sem2 BackLogs")));
        ob.setSem2Pending(Short.parseShort(request.getParameter("Sem2 Pending")));
        }
        mm=Float.parseFloat((request.getParameter("Sem3MM")));
        m=Float.parseFloat(request.getParameter("Sem3M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem3MM(Float.parseFloat(request.getParameter("Sem3MM")));
        ob.setSem3M(Float.parseFloat(request.getParameter("Sem3M")));
      if(!(Float.isNaN(mm)))
        ob.setSem3age(mm);
        ob.setSem3BackLogs(Short.parseShort(request.getParameter("Sem3 BackLogs")));
        ob.setSem3Pending(Short.parseShort(request.getParameter("Sem3 Pending")));
       
         mm=Float.parseFloat((request.getParameter("Sem4MM")));
        m=Float.parseFloat(request.getParameter("Sem4M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem4MM(Float.parseFloat(request.getParameter("Sem4MM")));
        ob.setSem4M(Float.parseFloat(request.getParameter("Sem4M")));
      if(!(Float.isNaN(mm)))
        ob.setSem4age(mm);
        ob.setSem4BackLogs(Short.parseShort(request.getParameter("Sem4 BackLogs")));
        ob.setSem4Pending(Short.parseShort(request.getParameter("Sem4 Pending")));
       
      
        
        try{
          
           mm=Float.parseFloat((request.getParameter("Sem5MM")));
        m=Float.parseFloat(request.getParameter("Sem5M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem5MM(Float.parseFloat(request.getParameter("Sem5MM")));
        ob.setSem5M(Float.parseFloat(request.getParameter("Sem5M")));
      if(!(Float.isNaN(mm)))
        ob.setSem5age(mm);
        ob.setSem5BackLogs(Short.parseShort(request.getParameter("Sem5 BackLogs")));
        ob.setSem5Pending(Short.parseShort(request.getParameter("Sem5 Pending")));
       
         mm=Float.parseFloat((request.getParameter("Sem6MM")));
        m=Float.parseFloat(request.getParameter("Sem6M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem6MM(Float.parseFloat(request.getParameter("Sem6MM")));
        ob.setSem6M(Float.parseFloat(request.getParameter("Sem6M")));
      if(!(Float.isNaN(mm)))
        ob.setSem6age(mm);
        ob.setSem6BackLogs(Short.parseShort(request.getParameter("Sem6 BackLogs")));
        ob.setSem6Pending(Short.parseShort(request.getParameter("Sem6 Pending")));    
            
         mm=Float.parseFloat((request.getParameter("Sem7MM")));
        m=Float.parseFloat(request.getParameter("Sem7M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem7MM(Float.parseFloat(request.getParameter("Sem7MM")));
        ob.setSem7M(Float.parseFloat(request.getParameter("Sem7M")));
      if(!(Float.isNaN(mm)))
        ob.setSem7age(mm);
        ob.setSem7BackLogs(Short.parseShort(request.getParameter("Sem7 BackLogs")));
        ob.setSem7Pending(Short.parseShort(request.getParameter("Sem7 Pending")));
       
        mm=Float.parseFloat((request.getParameter("Sem8MM")));
        m=Float.parseFloat(request.getParameter("Sem8M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem8MM(Float.parseFloat(request.getParameter("Sem8MM")));
        ob.setSem8M(Float.parseFloat(request.getParameter("Sem8M")));
      if(!(Float.isNaN(mm)))
        ob.setSem8age(mm);
        ob.setSem8BackLogs(Short.parseShort(request.getParameter("Sem8 BackLogs")));
        ob.setSem8Pending(Short.parseShort(request.getParameter("Sem8 Pending")));
       
              
    }
    catch(Exception e)
    {
        //out.print("<script> alert('"+e.getMessage()+"')</script>");
    }
        
        ob.setTotalDenominator(ss);
        ob.setTotalNumerator(s);
      
        short f=ob.getSem1BackLogs();
        f+=ob.getSem2BackLogs();
        f+=ob.getSem3BackLogs();
        f+=ob.getSem4BackLogs();
        f+=ob.getSem5BackLogs();
        f+=ob.getSem6BackLogs();
        f+=ob.getSem7BackLogs();
        f+=ob.getSem8BackLogs();
        ob.setTotalBackLogs(f);
        
        f=ob.getSem1Pending();
        f+=ob.getSem2Pending();
        f+=ob.getSem3Pending();
        f+=ob.getSem4Pending();
        f+=ob.getSem5Pending();
        f+=ob.getSem6Pending();
        f+=ob.getSem7Pending();
        f+=ob.getSem8Pending();
        ob.setPendingSems(f);
        
           mm=ob.getTotalDenominator();
//        m=ob.getTotalDenominator();
//        mm=100*(m/mm);
        ss=100*(s/ss);
      if(!(Float.isNaN(ss)))
        ob.setCurrentage(ss);
        ob.setDescriptionGap(request.getParameter("DescriptionGap"));

        
    }   
       
    else
    { 
        
        mm=Float.parseFloat((request.getParameter("Sem1MM")));
        m=Float.parseFloat(request.getParameter("Sem1M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem1MM(Float.parseFloat(request.getParameter("Sem1MM")));
        ob.setSem1M(Float.parseFloat(request.getParameter("Sem1M")));
      if(!(Float.isNaN(mm)))
        ob.setSem1age(mm);
        ob.setSem1BackLogs(Short.parseShort(request.getParameter("Sem1 BackLogs")));
        ob.setSem1Pending(Short.parseShort(request.getParameter("Sem1 Pending")));
        
        try{
         mm=Float.parseFloat((request.getParameter("Sem2MM")));
        m=Float.parseFloat(request.getParameter("Sem2M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem2MM(Float.parseFloat(request.getParameter("Sem2MM")));
        ob.setSem2M(Float.parseFloat(request.getParameter("Sem2M")));
      if(!(Float.isNaN(mm)))
        ob.setSem2age(mm);
        ob.setSem2BackLogs(Short.parseShort(request.getParameter("Sem2 BackLogs")));
        ob.setSem2Pending(Short.parseShort(request.getParameter("Sem2 Pending")));
        
        mm=Float.parseFloat((request.getParameter("Sem3MM")));
        m=Float.parseFloat(request.getParameter("Sem3M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem3MM(Float.parseFloat(request.getParameter("Sem3MM")));
        ob.setSem3M(Float.parseFloat(request.getParameter("Sem3M")));
      if(!(Float.isNaN(mm)))
        ob.setSem3age(mm);
        ob.setSem3BackLogs(Short.parseShort(request.getParameter("Sem3 BackLogs")));
        ob.setSem3Pending(Short.parseShort(request.getParameter("Sem3 Pending")));
       
        mm=Float.parseFloat((request.getParameter("Sem4MM")));
        m=Float.parseFloat(request.getParameter("Sem4M"));
        ss+=mm;
        s+=m;
        mm=100*(m/mm);
        ob.setSem4MM(Float.parseFloat(request.getParameter("Sem4MM")));
        ob.setSem4M(Float.parseFloat(request.getParameter("Sem4M")));
      if(!(Float.isNaN(mm)))
        ob.setSem4age(mm);
        ob.setSem4BackLogs(Short.parseShort(request.getParameter("Sem4 BackLogs")));
        ob.setSem4Pending(Short.parseShort(request.getParameter("Sem4 Pending")));
        }
        catch(Exception e)
        {System.err.println(e);;}
        ob.setTotalDenominator(ss);
        ob.setTotalNumerator(s);
        
        short f=ob.getSem1BackLogs();
        f+=ob.getSem2BackLogs();
        f+=ob.getSem3BackLogs();
        f+=ob.getSem4BackLogs();
         ob.setTotalBackLogs( f);
        
        f=ob.getSem1Pending();
        f+=ob.getSem2Pending();
        f+=ob.getSem3Pending();
        f+=ob.getSem4Pending();
        ob.setPendingSems(f);
        
//        mm=ob.getTotalDenominator();
//        m=ob.getTotalDenominator();
//        mm=100*(m/mm);
        ss=100*(s/ss);
      if(!(Float.isNaN(ss)))
        ob.setCurrentage(ss);
        
        ob.setDescriptionGap(request.getParameter("DescriptionGap"));
        
      ob.setGraddegree(request.getParameter("Grad.Degree"));
      ob.setGradsubjectCombo(request.getParameter("Grad.Subject Combo"));
      ob.setGradevaluationSystem(request.getParameter("Evaluation System"));
      ob.setGradmaxMarks(Float.parseFloat(request.getParameter("Grad.Max Marks")));
      ob.setGradmarks(Float.parseFloat(request.getParameter("Grad.Marks")));
       
      mm=Float.parseFloat((request.getParameter("Grad.Max Marks")));
      m=Float.parseFloat(request.getParameter("Grad.Marks"));
      mm=100*(m/mm);
    if(!(Float.isNaN(mm)))
      ob.setGradpercentage(mm);
      ob.setGradYOP(Short.parseShort(request.getParameter("Grad YOP")));
        
        
    }
    
   
    String v=DB.DBlayer.getScaler("select max(`version`) from studentscholasticdata where studentid='"+session.getAttribute("id")+"'");
    int x=0;
    if(v==null || v.equals(""))
        ;
    else
        x=Integer.parseInt(v)+1;
    if(x==10)
    {
        out.print("<script>alert(\"You cannot Update Anymore\")</script>");
        response.sendRedirect("logedin.jsp");
    
    }
    else
    {
        
    String e="";
    e=e+"'"+session.getAttribute("id")+"',";
    e=e+"'"+x+"',";
    e=e+"'"+ob.getDepartment()+"',";
    e=e+"'"+ob.getStream()+"',";
    e=e+"'"+ob.getRollno()+"',";
    e=e+"'"+ob.getUnivregno()+"',";
    e=e+"'"+ob.getParticipating()+"',";
    e=e+"'"+ob.getGender()+"',";
    e=e+"'"+ob.getResidence()+"',";
    e=e+"'"+ob.getFirstName()+"',";
    e=e+"'"+ob.getMiddleName()+"',";
    e=e+"'"+ob.getSurname()+"',";
    e=e+"'"+ob.getCourseStatus()+"',";
    e=e+"'"+ob.getName()+"',";
    e=e+"'"+ob.getFathersName()+"',";
    e=e+"'"+ob.getDob()+"',";  
    e=e+"'"+ob.getTencoreMaxMarks()+"',";
    e=e+"'"+ob.getTencoreMarks()+"',";
    e=e+"'"+ob.getTenallMaxMarks()+"',";
    e=e+"'"+ob.getTenallMarks()+"',";
    e=e+"'"+ob.getTenpercentage()+"',";
    e=e+"'"+ob.getTenyop()+"',";
    e=e+"'"+ob.getTenboard()+"',";
    e=e+"'"+ob.getTwelevemaxMarks()+"',";
    e=e+"'"+ob.getTwelevemarks()+"',";
    e=e+"'"+ob.getTwelevepercentage()+"',";
    e=e+"'"+ob.getTweleveyop()+"',";
    
    e=e+"'"+ob.getTweleveboard()+"',";
    e=e+"'"+ob.getDiplomaMaxMarks()+"',";
    e=e+"'"+ob.getDiplomaMarks()+"',";
    e=e+"'"+ob.getDiplomapercentage()+"',";
    e=e+"'"+ob.getDiplomaYOP()+"',";
    e=e+"'"+ob.getGraddegree()+"',";
    e=e+"'"+ob.getGradsubjectCombo()+"',";
    e=e+"'"+ob.getGradevaluationSystem()+"',";
    e=e+"'"+ob.getGradmaxMarks()+"',";
    e=e+"'"+ob.getGradmarks()+"',";
    e=e+"'"+ob.getGradpercentage()+"',";
    e=e+"'"+ob.getGradYOP()+"',";
    
    e=e+"'"+ob.getSem1MM()+"',";
    e=e+"'"+ob.getSem1M()+"',";
    e=e+"'"+ob.getSem1age()+"',";
    e=e+"'"+ob.getSem1BackLogs()+"',";
    e=e+"'"+ob.getSem1Pending()+"',";
    
    e=e+"'"+ob.getSem2MM()+"',";
    e=e+"'"+ob.getSem2M()+"',";
    e=e+"'"+ob.getSem2age()+"',";
    e=e+"'"+ob.getSem2BackLogs()+"',";
    e=e+"'"+ob.getSem2Pending()+"',";
    
    e=e+"'"+ob.getSem3MM()+"',";
    e=e+"'"+ob.getSem3M()+"',";
    e=e+"'"+ob.getSem3age()+"',";
    e=e+"'"+ob.getSem3BackLogs()+"',";
    e=e+"'"+ob.getSem3Pending()+"',";
    
    e=e+"'"+ob.getSem4MM()+"',";
    e=e+"'"+ob.getSem4M()+"',";
    e=e+"'"+ob.getSem4age()+"',";
    e=e+"'"+ob.getSem4BackLogs()+"',";
    e=e+"'"+ob.getSem4Pending()+"',";
    
    e=e+"'"+ob.getSem5MM()+"',";
    e=e+"'"+ob.getSem5M()+"',";
    e=e+"'"+ob.getSem5age()+"',";
    e=e+"'"+ob.getSem5BackLogs()+"',";
    e=e+"'"+ob.getSem5Pending()+"',";
    
    e=e+"'"+ob.getSem6MM()+"',";
    e=e+"'"+ob.getSem6M()+"',";
    e=e+"'"+ob.getSem6age()+"',";
    e=e+"'"+ob.getSem6BackLogs()+"',";
    e=e+"'"+ob.getSem6Pending()+"',";
    
    e=e+"'"+ob.getSem7MM()+"',";
    e=e+"'"+ob.getSem7M()+"',";
    e=e+"'"+ob.getSem7age()+"',";
    e=e+"'"+ob.getSem7BackLogs()+"',";
    e=e+"'"+ob.getSem7Pending()+"',";
    
    e=e+"'"+ob.getSem8MM()+"',";
    e=e+"'"+ob.getSem8M()+"',";
    e=e+"'"+ob.getSem8age()+"',";
    e=e+"'"+ob.getSem8BackLogs()+"',";
    e=e+"'"+ob.getSem8Pending()+"',";
    
    
    e=e+"'"+ob.getTotalDenominator()+"',";
    e=e+"'"+ob.getTotalNumerator()+"',";
    e=e+"'"+ob.getTotalBackLogs()+"',";
    e=e+"'"+ob.getPendingSems()+"',";
    e=e+"'"+ob.getCurrentage()+"',";
    e=e+"'"+ob.getDescriptionGap()+"',";
    e=e+"'"+ob.getAddress()+"',";
    e=e+"'"+ob.getState()+"',";
    e=e+"'"+ob.getContactStudent()+"',";
    e=e+"'"+ob.getContactParent()+"',";
    e=e+"'"+ob.getEmail()+"',";
    e=e+"'"+ob.getCategory()+"'";
    
    
     
    String q="insert  into `studentscholasticdata`(`studentid`,`Version`,`Department`,`Stream`,`Roll No.`,`Univ.Reg No.`,`Participating`,`Gender`,"
            + "`Residence`,`First Name`,`Middle Name`,`Surname`,`Course Status`,`NAME`,`Fathers Name`,`DOB`,`10Core Max Marks`,`10Core Marks`,`10All Max Marks`,"
            + "`10All Marks`,`10%age`,`10YOP`,`10Board`,`12Max Marks`,`12Marks`,`12%age`,`12YOP`,`12Board`,`DiplomaMax Marks`,`DiplomaMarks`,`Diploma%age`,`"
            + "DiplomaYOP`,`Grad.Degree`,`Grad.Subject Combo`,`Evaluation System`,`Grad.Max Marks`,`Grad.Marks`,`Grad.%age`,`Grad YOP`,`Sem1MM`,`Sem1M`"
            + ",`Sem1%age`,`Sem1 BackLogs`,`Sem1 Pending`,`Sem2MM`,`Sem2M`,`Sem2%age`,`Sem2 BackLogs`,`Sem2 Pending`,`Sem3MM`,`Sem3M`,`Sem3%age`,`Sem3 BackLogs`,`Sem3 Pending`,`Sem4MM`,`Sem4M`,`Sem4%age`,`Sem4 BackLogs`,`Sem4 Pending`,`Sem5MM`,`Sem5M`,`Sem5%age`,`Sem5 BackLogs`,`Sem5 Pending`,`Sem6MM`,`Sem6M`,`Sem6%age`,`Sem6 BackLogs`,`Sem6 Pending`,`Sem7MM`,`Sem7M`,`Sem7%age`,`Sem7 BackLogs`,`Sem7 Pending`,`Sem8MM`,`Sem8M`,`Sem8%age`,`Sem8 BackLogs`,`Sem8 Pending`,"
            + "`Total Denominator`,`Total Numerator`,`Total BackLogs`,`Pending Sems`,`Current %age`,`DescriptionGap`,`Address`,`State`,`Contact Student`"
            + ",`Contact Parent`,`Email`,`Category`) values ("+e+");";
    //out.print(q);
    
    session.setAttribute("query",q);
    response.sendRedirect("recheckscholasticdata.jsp"); 
    }
%>