<%@page import="java.sql.*"%>
<%
    
    if(request.getParameter("deptid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from depttable where deptid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("deptid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    
    else if(request.getParameter("courseid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from coursetable where courseid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("courseid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    else if(request.getParameter("teacherid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from teachertable where teacherid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("teacherid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    else if(request.getParameter("sectid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from sectable where sectid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("sectid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    else if(request.getParameter("subid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from subtable where subid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("subid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    else if(request.getParameter("assignid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from assignedsubjects where assignid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("assignid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    else if(request.getParameter("deletepostid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from posttable where postid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("deletepostid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }
    else if(request.getParameter("deletecommentid")!=null)
    {
        Thread.sleep(1000);
        String user = "root";
String pass = "";
String path = "jdbc:mysql://localhost/";
String place = "community";
                                                                                    try{
                                                                                        Connection myconnection;
                                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                                        myconnection=DriverManager.getConnection(path+place,user,pass);                                                                            try
                                                                                    {
                                                                                        String q="delete from commenttable where commentid=?";
                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                        mystatement.setString(1, request.getParameter("deletecommentid"));
                                                                                        
                                                                                        if(mystatement.executeUpdate()>0)
                                                                                        {   
                                                                                            out.print("success");
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            out.print("Email Id Available");
                                                                                        }
                                                                                    }    
                                                                                    catch(Exception e)
                                                                                    {
                                                                                        out.print("<h2>Error occured in query due to " + e.getMessage() + "</h2>");
                                                                                    }

                                                                                }

                                                                                catch(Exception e)
                                                                                {
                                                                                    out.print("<h2>Error occured in connection due to " + e.getMessage() + "</h2>");
                                                                                }
    }

    %>