<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import=" java.util.*"%>
<%
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
      String query1010101010="select * from assignmenttable where subject=? and sec=? order by assid";
                                    PreparedStatement myst101010101010=myconnection.prepareStatement(query1010101010);
                                    myst101010101010.setString(1, request.getParameter("ass_subject"));
                                    myst101010101010.setString(2, request.getParameter("sec"));
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
					+"<th>Submit Assignment</th>"
                                        +"<th>View Submission</th>"
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
                                             +"<a href=submit_assignment.jsp?no="+myres2322.getString("sec")+"_"+Math.random()+"_"+myres2322.getString("assid")+">"+"Submit Assignment"+"</a>"
                                             + "</td>"
                                             + "<td>"
                                                +"<a href=view_submission.jsp?id="+myres2322.getString("assid")+">"+"View Your Submission"+"</a>"
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



if(request.getParameter("result_sem")!=null)
{
    if(request.getParameter("result_sem").trim().equals(""))
    {
     out.print(" ");
    }
   else
    {
        Thread.sleep(2000);
        String deptid="";
        String courseid="";
        String sem="";
        String fname="";
        String mname="";
        String dob="";
        String name="";
    String user12 = "root";
String pass12 = "";
String path12 = "jdbc:mysql://localhost/";
String place12 = "community";
try
   {
       double gtot=0;
       double per=0;
      Connection myconnection;
      Class.forName("com.mysql.jdbc.Driver");
      myconnection=DriverManager.getConnection(path12+place12,user12,pass12);
                                   String query1010101010="select * from rusers where rno=?";
                                    PreparedStatement myst101010101010=myconnection.prepareStatement(query1010101010);
                                    myst101010101010.setString(1,session.getAttribute("rno").toString());
                                    ResultSet myres2322=myst101010101010.executeQuery();
                                     if(myres2322.next())
                                     {
                                         deptid=myres2322.getString("dept");
                                         courseid=myres2322.getString("class");
                                         sem = request.getParameter("result_sem");
                                         fname=myres2322.getString("fname");
                                         mname=myres2322.getString("mname");
                                         dob=myres2322.getString("dob");
                                         name=myres2322.getString("name");
                                         
                                         String query3="select * from subtable where deptid=? and courseid=? and sem=?";
                                            PreparedStatement myst3=myconnection.prepareStatement(query3);
                                            myst3.setString(1,deptid);
                                            myst3.setString(2,courseid);
                                            myst3.setString(3,sem);
                                            ResultSet myres3=myst3.executeQuery();
                                     if(myres3.next())
                                     {
                                         Set<String> subname=new HashSet<String>();
                                         Set<String> subid=new HashSet<String>();
                                         do
                                         {
                                             subname.add(myres3.getString("subname")+"("+myres3.getString("type")+")");
                                             subid.add(myres3.getString("subid"));
                                         }while(myres3.next());
                                         
                                         out.print("<table>"
                                                 
                                                 + "<td>"
                                                 + "<img src='teacher_pics/"+session.getAttribute("image").toString()+"' alt='profile-pic' width='60px'>"
                                                 + "</td>"
                                                 
                                                 + "<tr>"
                                                 + "<td>"
                                                 + "<strong>"+"Name: "+"</strong>"
                                                 + "</td>"
                                                 + "<td>"
                                                 + "<strong>"+name+"</strong>"
                                                 + "</td>"
                                                 + "<td>"
                                                 + "<strong>"+"FatherName: "+"</strong>"
                                                 + "</td>"
                                                 + "<td>"
                                                 + "<strong>"+fname+"</strong>"
                                                 + "</td>"
                                                 + "</tr>"
                                                 + "<tr>"
                                                 + "<td>"
                                                 + "<strong>"+"MotherName: "+"</strong>"
                                                 + "</td>"
                                                 + "<td>"
                                                 + "<strong>"+mname+"</strong>"
                                                 + "</td>"
                                                 + "<td>"
                                                 + "<strong>"+"Date Of Birth: "+"</strong>"
                                                 + "</td>"
                                                 + "<td>"
                                                 + "<strong>"+dob+"</strong>"
                                                 + "</td>"
                                                 + "</tr>"
                                                 + "</table>");
                                         
                                         
                                         
                                         out.print("<div class='agile-tables'>"
    +"<div class='w3l-table-info agile_info_shadow'>"
        +"<form name='form1' id='form1' method='post'>"
			+"<table id='table'>"
                               +"<thead>"
				+"<tr>"
                                        +"<th>Subject</th>"
					+"<th>Minor1</th>"
                                         +"<th>Minor2</th>"
					+"<th>Quiz</th>"
					 +"<th>Major</th>"
                                                 + "<th>Total</th>"
				+"</tr>"
				+"</thead>"
                                + "<tbody>");
                                 
                                         
                                         Iterator<String> subnameitr=subname.iterator();
                                         Iterator<String> subiditr=subid.iterator();
                                         
                                         
                                         
                                         
                                         
                                         int count2=1;
                                         String minor1;
                                         String minor2;
                                         String major="";
                                         String quiz;
                                         String subid12;
                                         boolean cgpa=true;
                                 while(subnameitr.hasNext() && subiditr.hasNext())
                                 {
                                     subid12=subiditr.next();
                                     String query4="select * from markstable where subid=? and rno=? and examtype=?";
                                    PreparedStatement myst4=myconnection.prepareStatement(query4);
                                    myst4.setString(1,subid12);
                                    myst4.setString(2,session.getAttribute("rno").toString());
                                    myst4.setString(3,"Minor-1 (20-Marks)");
                                    ResultSet myres4=myst4.executeQuery();
                                    int tot=0;
                                     if(myres4.next())
                                     {
                                         minor1 = myres4.getString("marks");
                                         tot = tot + Integer.parseInt(minor1);
                                         
                                     }
                                     else
                                     {
                                         minor1="N.A";
                                         cgpa=false;
                                     }
                                     
                                     String query5="select * from markstable where subid=? and rno=? and examtype=?";
                                    PreparedStatement myst5=myconnection.prepareStatement(query5);
                                    myst5.setString(1,subid12);
                                    myst5.setString(2,session.getAttribute("rno").toString());
                                    myst5.setString(3,"Minor-2 (20-Marks)");
                                    ResultSet myres5=myst5.executeQuery();
                                     if(myres5.next())
                                     {
                                         minor2 = myres5.getString("marks");
                                         tot = tot + Integer.parseInt(minor2);
                                         //gtot = gtot + tot;
                                     }
                                     else
                                     {
                                         minor2="N.A";
                                         cgpa=false;
                                     }
                                     
                                     
                                     String query6="select * from markstable where subid=? and rno=? and examtype=?";
                                    PreparedStatement myst6=myconnection.prepareStatement(query6);
                                    myst6.setString(1,subid12);
                                    myst6.setString(2,session.getAttribute("rno").toString());
                                    myst6.setString(3,"Quiz (10-Marks)");
                                    ResultSet myres6=myst6.executeQuery();
                                     if(myres6.next())
                                     {
                                         quiz = myres6.getString("marks");
                                         tot = tot + Integer.parseInt(quiz);
                                         //gtot = gtot + tot;
                                     }
                                     else
                                     {
                                         quiz="N.A";
                                         cgpa=false;
                                     }
                                     
                                     
                                     String query7="select * from markstable where subid=? and rno=? and examtype=?";
                                    PreparedStatement myst7=myconnection.prepareStatement(query7);
                                    myst7.setString(1,subid12);
                                    myst7.setString(2,session.getAttribute("rno").toString());
                                    myst7.setString(3,"Major (50-Marks)");
                                    ResultSet myres7=myst7.executeQuery();
                                     if(myres7.next())
                                     {
                                         major = myres7.getString("marks");
                                         tot = tot + Integer.parseInt(major);
                                         //gtot = gtot + tot;
                                     }
                                     else
                                     {
                                         
                                         major="N.A";
                                         cgpa=false;
                                     }
                                     
                                     
                                     
                                        
                                     
                                     
                                     
                                     
                                     
                                     out.print("<tr>"
                                             + "<td>"
                                               +"<input type='text' name='subname"+count2+"' id='subname"+count2+"' value='"+subnameitr.next()+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                                +"<input type='text' name='minor1_"+count2+"' id='minor1_"+count2+"' value='"+minor1+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='minor2_"+count2+"' id='minor2_"+count2+"' value='"+minor2+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='quiz"+count2+"' id='quiz"+count2+"' value='"+quiz+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='major"+count2+"' id='major"+count2+"' value='"+major+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='total"+count2+"' id='total"+count2+"' value='"+tot+"' readonly='readonly'>"
                                             + "</td>"
                                             + "</tr>");
                                     gtot = gtot + tot;
                                      count2=count2+1;
                                 }
                                 per=gtot/(subname.size()*100);
                                 if(cgpa)
                                 {
                                 out.print("Grand Total:"+ gtot);
                                 out.print("<br>");
                                 out.print("Percentage:"+ per);
                                 }
                             out.print("</tbody></div>"
                                 +"</div>");
                                     
  }
                                     else{
                                         out.print("no data available");
                                     }
      
                                         
                                       
                                     }
                                         
                                     else
                                     {
                                         out.print("No Such User Exist");
     
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
                                    ResultSet myresult2322=myst101010101010.executeQuery();
                                     if(myresult2322.next())
                                     {
                                         int count=1;
                                       
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
                                                 +"<th>" +"Update Marks"+"<th>" 
				+"</tr>"
				+"</thead>"
                                + "<tbody>");
                                 
                                 do{
                                     out.print("<tr>"
                                             + "<td>"
                                             +"<input type='text' name='rno"+count+"' id='rno"+count+"' value='"+myresult2322.getString("rno")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                                +"<input type='text' name='name"+count+"' id='name"+count+"' value='"+myresult2322.getString("name")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='sec"+count+"' id='sec"+count+"' value='"+myresult2322.getString("sec")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='sem"+count+"' id='sem"+count+"' value='"+myresult2322.getString("sem")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             +"<input type='text' name='marks"+count+"' id='marks"+count+"' value='"+myresult2322.getString("marks")+"' readonly='readonly'>"
                                             + "</td>"
                                             + "<td>"
                                             + "<a href='marksupdate.jsp?di="+new java.util.Date().getTime()+"_"+myresult2322.getString("rno")+"_"+request.getParameter("subject10101")+"_"+request.getParameter("examtype")+"'> <i class='fa fa-file' aria-hidden='true'></i></a>"
                                             + "</td>"
                                             + "</tr>");
                                      count=count+1;
                                 }while(myresult2322.next());
                                 count=count-1;
                             out.print("</tbody></div>"
                                 +"</div>"
                                     + "<div>"
                                     + "Total Students <input type='text' name='tot' id='tot' value='"+count+"' readonly='readonly'>"
                                     + "</div>");
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                     }
      
                                     
                                     else{
                                         out.print("Marks Has Not Been Uploaded");
     
                 
                                        }                                
                
            
        }
       catch(Exception e)
        {
          out.print("Error in query"+e.getMessage());
        }
   }
   }






















%>