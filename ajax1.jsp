<%@page import="java.sql.*"%>
<%
    if(request.getParameter("email")!=null)
    {
       Thread.sleep(2000);
                            String user = "root";
                            String pass = "";
                            String path = "jdbc:mysql://localhost/";
                            String place = "community";
                            try
                               {
                                  Connection myconnection;
                                  Class.forName("com.mysql.jdbc.Driver");
                                  myconnection=DriverManager.getConnection(path+place,user,pass);
                                       try
                                          {
                                            String query="select * from rusers where email=?";
                                            PreparedStatement myst=myconnection.prepareStatement(query);
                                            myst.setString(1,request.getParameter("email"));
                                            ResultSet myresult=myst.executeQuery();
                                            if(myresult.next())
                                                {
                                                  out.print("<font color='red'><i class='fa fa-times'></i></font>"+"Sorry Id Not Available");
                                                }
                                            else{
                                                  out.print("<font color='green'><i class='fa fa-check'></i></font>"+"Id Available");                                                
                                            }
                                                
                                          }
                                       catch(Exception e)
                                       {
                                        out.print("Error in query"+e.getMessage());
                                       }
                               }
                            catch(Exception e)
                                       {
                                        out.print("Error in connection"+e.getMessage());
                                       }
    }
    if(request.getParameter("rno")!=null)
    {
       Thread.sleep(2000);
                            String user = "root";
                            String pass = "";
                            String path = "jdbc:mysql://localhost/";
                            String place = "community";
                            try
                               {
                                  Connection myconnection;
                                  Class.forName("com.mysql.jdbc.Driver");
                                  myconnection=DriverManager.getConnection(path+place,user,pass);
                                       try
                                          {
                                            String query="select * from rusers where rno=?";
                                            PreparedStatement myst=myconnection.prepareStatement(query);
                                            myst.setString(1,request.getParameter("rno"));
                                            ResultSet myresult=myst.executeQuery();
                                            if(myresult.next())
                                                {
                                                  out.print("<font color='red'><i class='fa fa-times'></i></font>"+"You Have Already Registered!Please Login");
                                                }
                                            else{
                                                  out.print("<font color='green'><i class='fa fa-check'></i></font>"+"Available");                                                
                                            }
                                                
                                          }
                                       catch(Exception e)
                                       {
                                        out.print("Error in query"+e.getMessage());
                                       }
                               }
                            catch(Exception e)
                                       {
                                        out.print("Error in connection"+e.getMessage());
                                       }
    }
%>