<%@page import="java.sql.*"%>
<%@page import=" java.util.*"%>
<%
    if(request.getParameter("deptid")!=null)
    {
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
                                            String query="select * from coursetable where deptid=?";
                                            PreparedStatement myst=myconnection.prepareStatement(query);
                                            myst.setString(1,request.getParameter("deptid"));
                                            ResultSet myresult=myst.executeQuery();
                                            if(myresult.next())
                                                {
                                                  out.print("<select id='course' name='course' required>");
                                            out.print("<option value=''>Choose course</option>");
                                            do{
                                               out.print("<option value="+myresult.getString("courseid")+">"+myresult.getString("coursename")+"</option>"); 
                                            }while(myresult.next());
                                        out.print("</select>");
                                                }
                                            else{
                                                                                                 
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
    
    else if(request.getParameter("deptid1")!=null && request.getParameter("courseid")!=null)
    {
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
                                            String query="select * from sectable where deptid=? and courseid=?";
                                            PreparedStatement myst=myconnection.prepareStatement(query);
                                            myst.setString(1,request.getParameter("deptid1"));
                                            myst.setString(2,request.getParameter("courseid"));
                                            ResultSet myresult=myst.executeQuery();
                                            if(myresult.next())
                                                {
                                                    out.print("<select id='year' name='year' required>");
                                            out.print("<option value=''>Choose Year</option>");
                                                  
                                                    TreeSet<String> abc=new TreeSet<String>();
                                            do{
                                              abc.add(myresult.getString("admisyear"));
                                             }while(myresult.next());
                
                                             Iterator<String> itr=abc.iterator();
                                            while(itr.hasNext()){  
                                               out.print( "<option>"+itr.next()+"</option>"
                                                    + "</select>");
                                                    }  
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
    

    else if(request.getParameter("courseid2")!=null)
    {
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
                                            String query="select * from coursetable where courseid=?";
                                            PreparedStatement myst=myconnection.prepareStatement(query);
                                            myst.setString(1,request.getParameter("courseid2"));
                                            ResultSet myresult=myst.executeQuery();
                                            if(myresult.next())
                                                {
                                                    int sems = Integer.parseInt(myresult.getString("sems"));
                                                  out.print("<select id='semester' name='semester' required>");
                                                  out.print("<option value=''>Choose Semester</option>");
                                                  for(int i=1;i<=sems;i++)
                                                  {
                                                      out.print("<option>"+i+"</option>");
                                                  }
                                                      
                                                  out.print("</select>");
                                                }
                                            else{
                                                                                                 
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
    

    else if(request.getParameter("did")!=null && request.getParameter("cid")!=null && request.getParameter("year1")!=null )
    {
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
                                            String query="select * from sectable where deptid=? and courseid=? and admisyear=?";
                                            PreparedStatement myst=myconnection.prepareStatement(query);
                                            myst.setString(1,request.getParameter("did"));
                                            myst.setString(2,request.getParameter("cid"));
                                            myst.setString(3,request.getParameter("year1"));
                                            ResultSet myresult=myst.executeQuery();
                                            if(myresult.next())
                                                {
                                                  out.print("<select id='section' name='section' required>");
                                            out.print("<option value=''>Choose Section</option>");
                                            do{
                                               out.print("<option>"+myresult.getString("sec")+"</option>"); 
                                            }while(myresult.next());
                                        out.print("</select>");
                                                }
                                            else{
                                                                                                 
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