<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import=" java.util.*"%>
<%
    if(request.getParameter("id")!=null)
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
      String query1010101010="select * from assignment_submission_table where assid=? and rno=? order by submissionid desc";
                                    PreparedStatement myst101010101010=myconnection.prepareStatement(query1010101010);
                                    myst101010101010.setString(1, request.getParameter("id"));
                                    myst101010101010.setString(2, session.getAttribute("rno").toString());
                                    ResultSet myres2322=myst101010101010.executeQuery();
                                     if(myres2322.next())
                                     {
                                                String fle=myres2322.getString("assignment");
                                                out.print("<embed src='teacher_pics/"+fle+"'" +" width='1300px' height='800px' />");
                                     }
                                         
                                     else
                                     {
                                         out.print("No Submission Made for this Assignement");
     
                                     }
   }
     catch(Exception e)
        {
          out.print("Error in conenction"+e.getMessage());
        }
    }
%>
