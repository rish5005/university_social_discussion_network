<%@page import="java.sql.*"%>
<%@page import=" java.util.*"%>
<%
    if(request.getParameter("index")!=null)
{ 
    if(!(request.getParameter("index").equals(" ")))
    {
        out.print("<select id ='courselen'><option value=' '>Choose Course Length</option><option value='1'>1 Year</option><option value='2'>2 Year</option><option value='3'>3 Year</option><option value='4'>4 Year</option><option value='5'>5 Year</option></select>");
    
    }
    else
    {
        out.print("<select id ='coureselen'><option value=' '>Course Length(Choose Department First)</option></select>");
        
    }
}
   if(request.getParameter("indexcourselen")!=null)
{ 
    if(!(request.getParameter("indexcourselen").equals(" ")))
    {
        if(request.getParameter("indexcourselen").equals("1"))
        {
        out.print("<select id ='sems'><option value='2'>2 Semesters</option></select>");
        }
        if(request.getParameter("indexcourselen").equals("2"))
        {
        out.print("<select id ='sems'><option value='4'>4 Semesters</option></select>");
        }
        if(request.getParameter("indexcourselen").equals("3"))
        {
        out.print("<select id ='sems'><option value='6'>6 Semesters</option></select>");
        }
        if(request.getParameter("indexcourselen").equals("4"))
        {
        out.print("<select id ='sems'><option value='8'>8 Semesters</option></select>");
        }
        if(request.getParameter("indexcourselen").equals("5"))
        {
        out.print("<select id ='sems'><option value='10'>10 Semesters</option></select>");
        }
    }
    else if(request.getParameter("indexcourselen").equals(" "))
    {
        out.print("<select id ='sems'><option value=' '>Semester(Choose Department First)</option></select>");
    }
}
   if(request.getParameter("coursename")!=null)
   {
       String user = "root";
        String pass = "";
        String path = "jdbc:mysql://localhost/";
        String place = "community";
        try{
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,user,pass);
            try{

                String query3="select * from coursetable where deptid=?";
                PreparedStatement myst3=myconnection.prepareStatement(query3);
                myst3.setString(1, request.getParameter("coursename"));
                ResultSet rs = myst3.executeQuery();
                if(rs.next())
                {
                    out.print("<select  id='coursename' name='coursename'>"+"<option>Select Course</option>");
                    do{
                    out.print("<option value="+rs.getString("courseid")+">"+rs.getString("coursename")+"</option>");
                    }while(rs.next());
                    out.print("</select>");
                }
                else
                {
                    out.print("<select  id='coursename' name='coursename' value=' '>"+"<option value=' '>No Course Added For Department</option>");
                    
                }
            }
            catch(Exception e)
            {
             out.print("Error in query"+e.getMessage());
            }
        }
        catch(Exception e)
            {
             out.print("Error in query"+e.getMessage());
            }


           }
      if(request.getParameter("dept10")!=null)
{ 
    if(!(request.getParameter("dept10").trim().equals("")))
    {
    
        
        
        String user = "root";
        String pass = "";
        String path = "jdbc:mysql://localhost/";
        String place = "community";
        try{
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,user,pass);
            try{

                String query3="select * from coursetable where deptid=?";
                PreparedStatement myst3=myconnection.prepareStatement(query3);
                myst3.setString(1, request.getParameter("dept10"));
                ResultSet rs = myst3.executeQuery();
                if(rs.next())
                {
                    out.print("<select  id='courses' name='courses' value=' '>"+"<option>Select Course</option>");
                    do{
                    out.print("<option value="+rs.getString("courseid")+">"+rs.getString("coursename")+"</option>");
                    }while(rs.next());
                    out.print("</select>");
                }
                else
                {
                    out.print("<select  id='coursename' name='coursename'>"+"<option value=' '>No Course Added For Department</option>");
                    
                }
            }
            catch(Exception e)
            {
             out.print("Error in query"+e.getMessage());
            }
        }
        catch(Exception e)
            {
             out.print("Error in query"+e.getMessage());
            }


       
    }
    else
    {
        out.print("<select id ='coureselen'><option value=' '>Course Length(Choose Department First)</option></select>");
        
    }
}
       if(request.getParameter("courses10")!=null)
{ 
    if(!(request.getParameter("courses10").trim().equals("")))
    {
    
        
        
        String user = "root";
        String pass = "";
        String path = "jdbc:mysql://localhost/";
        String place = "community";
        try{
            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path+place,user,pass);
            try{

                String query3="select * from coursetable where courseid=?";
                PreparedStatement myst3=myconnection.prepareStatement(query3);
                myst3.setString(1, request.getParameter("courses10"));
                ResultSet rs = myst3.executeQuery();
                if(rs.next())
                {
                    int sems=Integer.parseInt(rs.getString("sems"));
                    out.print("<select  id='sems' name='sems'>"+"<option>Select Semester</option>");
                    for(int i=0 ;i<sems;i++)
                    {
                    out.print("<option >"+(i+1)+"</option>");
                    }
                    out.print("</select>");
                }
                else
                {
                    out.print("<select  id='sems' name='sems'>"+"<option value=' '>No Sems For Department Selected</option>");
                    
                }
            }
            catch(Exception e)
            {
             out.print("Error in query"+e.getMessage());
            }
        }
        catch(Exception e)
            {
             out.print("Error in query"+e.getMessage());
            }


       
    }
    else
    {
        out.print("<select id ='coureselen'><option value=' '>Course Length(Choose Department First)</option></select>");
        
    }
}
if(request.getParameter("desig")!=null)
{
    if(request.getParameter("desig").equals(" "))
    {
     out.print("<select class='form-control' name='type'>"
                        + "<option>Choose Designation</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from teachertable where deptid=? and desig=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("desig"));
            myst232.setString(2,"Hod");
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                out.print("<select class='form-control' name='type'>"
                        + "<option>Choose Designation</option>"
                        + "<option>Assistant Professor</option>"
                        +"<option>Ad Hoc</option>"
                        + "</select>");
                }
            else
            {
                out.print("<select class='form-control' name='type'>"
                        + "<option>Choose Designation</option>"
                        + "<option>Hod</option>"
                        + "<option>Assistant Professor</option>"
                        +"<option>Ad Hoc</option>"
                        + "</select>");
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }


if(request.getParameter("course1")!=null)
{
    if(request.getParameter("course1").equals(" "))
    {
     out.print("<select  id='course' name='course' class='form-control' required=''>"
                        + "<option value=' '>Choose Course</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from coursetable where deptid=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("course1"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                out.print("<select  id='course' name='course' class='form-control' required=''>");
                out.print("<option value=' '>Choose Course</option>");
                do{
                    out.print("<option value="+myresult232.getString("courseid")+">"+myresult232.getString("coursename")+"</option>");
                  }while(myresult232.next());
                out.print("</select>");
                }
            else
            {
                out.print("<select id='year' name='year' class='form-control' required=''><option>No Courses Added For This Department</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }



if(request.getParameter("courseid12")!=null && request.getParameter("dptid12")!=null)
{
    if(request.getParameter("courseid12").trim().equals("") || request.getParameter("dptid12").trim().equals(""))
    {
     out.print("<select  id='year' name='year' class='form-control' required=''>"
                        + "<option value=' '>Choose Year</option>"
                        + "</select>");   
    }

else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from sectable where deptid=? and courseid=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("dptid12"));
            myst232.setString(2,request.getParameter("courseid12"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    TreeSet<String> abc=new TreeSet<String>();
                do{
                         abc.add(myresult232.getString("admisyear"));
                  }while(myresult232.next());
                
                 Iterator<String> itr=abc.iterator();
                   out.print("<select  id='year' name='year' class='form-control' required=''>");
                out.print("<option value=' '>Choose Year</option>");
                  
                while(itr.hasNext()){  
                   out.print( "<option>"+itr.next()+"</option>"
                        + "</select>");
                        }  

                }
                 
            else
            {
                out.print("<select id='year' name='year' class='form-control' required=''><option>No Courses Added For This Department</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }




if(request.getParameter("dptaa")!=null && request.getParameter("csid12")!=null && request.getParameter("yr12")!=null)
{
    if(request.getParameter("dptaa").trim().equals("") || request.getParameter("csid12").trim().equals("") || request.getParameter("yr12").trim().equals(""))
    {
     out.print("<select  id='secton' name='section' class='form-control' required=''>"
                        + "<option value=' '>Choose Section</option>"
                        + "</select>");   
    }

else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from sectable where deptid=? and courseid=? and admisyear=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("dptaa"));
            myst232.setString(2,request.getParameter("csid12"));
            myst232.setString(3,request.getParameter("yr12"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    out.print("<select  id='section' name='section' class='form-control' required=''>");
                out.print("<option value=' '>Choose Section</option>");
                  do{
                      out.print("<option>"+myresult232.getString("sec")+"</option>");
                  }while(myresult232.next());
                out.print("</select>");
                }
            else
            {
                out.print("<select id='section' name='section' class='form-control' required=''><option>No Section Added </option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }











if(request.getParameter("semes1")!=null)
{
    if(request.getParameter("semes1").equals(" "))
    {
     out.print("<select  id='semester' name='semester' class='form-control' required=''>"
                        + "<option value=' '>Choose Semester</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from coursetable where courseid=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("semes1"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    int sems = Integer.parseInt(myresult232.getString("sems"));
                    int p = 0;
                    out.print("<select  id='course' name='course' class='form-control' required=''>");
                out.print("<option value=' '>Choose Semester</option>");
                  for(int i=1;i<=sems;i++)
                  {
                    out.print("<option>"+i+"</option>");
                      
                  }
                out.print("</select>");
                }
            else
            {
                out.print("<select id='semester' name='semester' class='form-control' required=''><option>No Courses Added For This Department</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }



if(request.getParameter("simi1")!=null && request.getParameter("dpt")!=null && request.getParameter("coursi1")!=null )
{
    if(request.getParameter("simi1").equals(" ") || request.getParameter("coursi1").equals(" ") || request.getParameter("dpt").equals(" "))
    {
     out.print("<select  id='subject' name='subject' class='form-control' required=''>"
                        + "<option value=' '>Choose Subject</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from subtable where deptid=? and courseid=? and sem=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(3,request.getParameter("simi1"));
            myst232.setString(2,request.getParameter("coursi1"));
            myst232.setString(1,request.getParameter("dpt"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    out.print("<select  id='subject' name='subject' class='form-control' required=''>"
                            + "<option value=' '>Choose Subject</option>");
                    do{
                       
                        out.print("<option value="+ myresult232.getString("subid")+">"+myresult232.getString("subname")+"("+myresult232.getString("type")+" credits:-"+myresult232.getString("credits")+")"+"</option>");
                        
                    }while(myresult232.next());
                out.print("</select>");
                }
            else
            {
                out.print("<select id='subject' name='subject' class='form-control' required=''><option>No subject Added For This course</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }



if(request.getParameter("dpt232")!=null)
{
    if(request.getParameter("dpt232").trim().equals(""))
    {
     out.print("<select  id='teacher' name='teacher' class='form-control' required=''>"
                        + "<option value=' '>Choose Teacher</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from teachertable where deptid=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("dpt232"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    out.print("<select  id='teacher' name='teacher' class='form-control' required=''>"
                            + "<option value=' '>Choose Teacher</option>");
                    do{
                       
                        out.print("<option value="+myresult232.getString("teacherid")+">"+myresult232.getString("name")+"</option>");
                        
                    }while(myresult232.next());
                out.print("</select>");
                }
            else
            {
                out.print("<select id='teacher' name='teacher' class='form-control' required=''><option>No Teacher Added For This Department</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }




if(request.getParameter("subject1010")!=null)
{
    if(request.getParameter("subject1010").trim().equals(""))
    {
     out.print("<select  id='section' name='section' class='form-control' required=''>"
                        + "<option value=''>Choose Section</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from assignedsubjects where subject=? and teacher=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("subject1010"));
            myst232.setString(2,session.getAttribute("teach_id").toString());
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    out.print("<select  id='section' name='section' class='form-control' required=''>"
                            + "<option value=''>Choose Section</option>");
                    do{
                       
                        out.print("<option>"+myresult232.getString("sec")+"</option>");
                        
                    }while(myresult232.next());
                out.print("</select>");
                }
            else
            {
                out.print("<select id='section' name='section' class='form-control' required=''><option>No Section Assigned</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }



if(request.getParameter("subject10101")!=null && request.getParameter("section10101")!=null && request.getParameter("examtype")!=null)
{
    if(request.getParameter("subject10101").trim().equals("") && request.getParameter("section10101").trim().equals("") && request.getParameter("examtype").trim().equals("") )
    {
     out.print(" ");
    }
   else
    {
        Thread.sleep(2000);
        String deptid="";
        String courseid="";
        String sem="";
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
      String query1010101010="select * from markstable where subid=? and examtype=? and sec=?";
                                    PreparedStatement myst101010101010=myconnection.prepareStatement(query1010101010);
                                    myst101010101010.setString(1, request.getParameter("subject10101"));
                                    myst101010101010.setString(2, request.getParameter("examtype"));
                                    myst101010101010.setString(3, request.getParameter("section10101"));
                                    ResultSet myres2322=myst101010101010.executeQuery();
                                     if(myres2322.next())
                                     {
                                       out.print("Marks Has Already Been Uploaded");
                                     }
      else{
     try
       {
            String query232="select * from assignedsubjects where teacher=? and subject=? and sec=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,session.getAttribute("teach_id").toString());
            myst232.setString(2,request.getParameter("subject10101"));
            myst232.setString(3,request.getParameter("section10101"));
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                 deptid=myresult232.getString("deptid");
                 courseid=myresult232.getString("courseid");
                 sem=myresult232.getString("sem");
                 
                 
                 try{
                          String query2321="select * from rusers where dept=? and class=? and sec=? and sem=?";
                           PreparedStatement myst2321=myconnection.prepareStatement(query2321);
                            myst2321.setString(1,deptid);
                            myst2321.setString(2,courseid);
                            myst2321.setString(3,request.getParameter("section10101"));
                            myst2321.setString(4,sem);
                            ResultSet myresult2321=myst2321.executeQuery();
                            int count=1;
                        if(myresult2321.next())
                            {
                                 out.print("<div class='agile-tables'>"
    +"<div class='w3l-table-info agile_info_shadow'>"
        +"<form name='form1' id='form1' method='post'>"
			+"<table id='table'>"
                               +"<thead>"
				+"<tr>"
                                        +"<th>Roll No</th>"
					+"<th>Name</th>"
                                         +"<th>Section</th>"
					+"<th>Semester</th>"
					 +"<th>"+request.getParameter("examtype")+"</th>"
				+"</tr>"
				+"</thead>"
                                + "<tbody>");
                                 
                                 do{
                                     out.print("<tr>"
                                             + "<td>"
                                               +"<input type='text' name='rno"+count+"' id='rno"+count+"' value='"+myresult2321.getString("rno")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                                +"<input type='text' name='name"+count+"' id='name"+count+"' value='"+myresult2321.getString("name")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='sec"+count+"' id='sec"+count+"' value='"+myresult2321.getString("sec")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='sem"+count+"' id='sem"+count+"' value='"+myresult2321.getString("sem")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='marks"+count+"' id='marks"+count+"' required>"
                                             + "</td>"
                                             + "</tr>");
                                      count=count+1;
                                 }while(myresult2321.next());
                                 count=count-1;
                             out.print("</tbody></div>"
                                 +"</div>"
                                     + "<div>"
                                     + "Total Students <input type='text' name='tot' id='tot' value='"+count+"' readonly='readonly'>"
                                     + "</div>");
                             }
                       else{
                           }
                 }
                 catch(Exception e)
                        {
                          out.print("Error in query"+e.getMessage());
                        }
                 
                 }
                
            else
            {
                //out.print("<select id='section' name='section' class='form-control' required=''><option>No Section Assigned</option>")
                out.print(" ");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }







if(request.getParameter("ass_subject")!=null)
{
    if(request.getParameter("ass_subject").trim().equals(""))
    {
     out.print(" ");
    }
   else
    {
        Thread.sleep(2000);
        String deptid="";
        String courseid="";
        String sem="";
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
      String query1010101010="select * from assignmenttable where subject=? and teach_id=? order by assid";
                                    PreparedStatement myst101010101010=myconnection.prepareStatement(query1010101010);
                                    myst101010101010.setString(1, request.getParameter("ass_subject"));
                                    myst101010101010.setString(2,session.getAttribute("teach_id").toString() );
                                    ResultSet myres2322=myst101010101010.executeQuery();
                                     if(myres2322.next())
                                     {
                                       int count=1;
                                       out.print("<div class='agile-tables'>"
                                        +"<div class='w3l-table-info agile_info_shadow'>"
                                            +"<form name='form1' id='form1' method='post'>"
                                                +"<table id='table'>"
                                                    +"<thead>"
                                                     +"<tr>"
                                                      +"<th>Topic</th>"
					+"<th>Deadline</th>"
                                         +"<th>Section</th>"
                                               +"<th>Assignment</th>"
					+"<th>View Submisssion</th>"
				+"</tr>"
				+"</thead>"
                                + "<tbody>");
                                 
                                 do{
                                     out.print("<tr>"
                                             + "<td>"
                                               +"<input type='text' name='topic"+count+"' id='topic"+count+"' value='"+myres2322.getString("topic")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='deadline"+count+"' id='deadline"+count+"' value='"+myres2322.getString("deadline")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='sec"+count+"' id='sec"+count+"' value='"+myres2322.getString("sec")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                                +"<a href=show_assignment.jsp?id="+myres2322.getString("assignment")+">"+"View Assignment"+"</a>"
                                             + "</td>"
                                             + "<td>"
                                             +"<a href=view_submission_of_students.jsp?id="+myres2322.getString("assid")+"&"+"sec="+myres2322.getString("sec")+">"+"View Submissions"+"</a>"
                                             + "</td>"
                                             + "</tr>");
                                      count=count+1;
                                 }while(myres2322.next());
                                 count=count-1;
                             out.print("</tbody></div>"
                                 +"</div>"
                                     );
                             
                       
                 }
                                         
                                     else
                                     {
                                         out.print("No Assignment Uploaded For This Subject");
     
                                     }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }




if(request.getParameter("subject5050")!=null)
{
    if(request.getParameter("subject5050").trim().equals(""))
    {
     out.print("<select  id='section' name='section' class='form-control' required=''>"
                        + "<option value=''>Choose Section</option>"
                        + "</select>");   
    }
   else
    {
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
     try
       {
            String query232="select * from assignedsubjects where subject=? and teacher=?";
            PreparedStatement myst232=myconnection.prepareStatement(query232);
            myst232.setString(1,request.getParameter("subject5050"));
            myst232.setString(2,session.getAttribute("teach_id").toString());
            ResultSet myresult232=myst232.executeQuery();
            if(myresult232.next())
                {
                    out.print("<select  id='section' name='section' class='form-control' required=''>"
                            + "<option value=''>Choose Section</option>");
                    do{
                       
                        out.print("<option>"+myresult232.getString("sec")+"</option>");
                        
                    }while(myresult232.next());
                out.print("</select>");
                }
            else
            {
                out.print("<select id='section' name='section' class='form-control' required=''><option>No Section Assigned</option>");
                                                                                            
            }
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
                                                                                            
}
    }



%>