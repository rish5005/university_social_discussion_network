<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%String deptid="", cname="", cid="", deptname="", year="",section="",sectid="",subname="", subid="", semester="",teachername="",teacheriid="";%>

<%
if(request.getParameter("sub")!=null)
{
    try{
                                          Connection myconnection;
                                          Class.forName("com.mysql.jdbc.Driver");
                                          myconnection=DriverManager.getConnection(PATH+PLACE,UNAME,PASS);
                                          try
                                          {
                                              String q="update assignsubjects set deptid=?, courseid=? ,admissionyear=?,sectid=?, semester=?, subid=?, teacherid=? where assignid=?" ;
                                              PreparedStatement mystatement=myconnection.prepareStatement(q);
                                              mystatement.setString(1,request.getParameter("deptbox"));
                                              mystatement.setString(2,request.getParameter("coursename"));
                                              mystatement.setString(3,request.getParameter("year"));
                                              mystatement.setString(4,request.getParameter("section"));
                                              mystatement.setString(5,request.getParameter("semester"));
                                              mystatement.setString(6,request.getParameter("subject"));
                                              mystatement.setString(7,request.getParameter("teacher"));
                                              mystatement.setString(8, request.getParameter("id"));
                                              if(mystatement.executeUpdate()>0)
                                              {   
                                                  response.sendRedirect("showassignteacher.jsp");
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

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Assign Teacher</title>
        <%@include file="headerfiles.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
         <%
                                   if(request.getParameter("id")!=null)
                                                                            {
                                                                                
                                                                                try{
                                                                                                      Connection myconnection;
                                                                                                      Class.forName("com.mysql.jdbc.Driver");
                                                                                                      myconnection=DriverManager.getConnection(PATH+PLACE,UNAME,PASS);
                                                                                                      try
                                                                                                      {
                                                                                                        String query="select * from assignsubjects, depttable, coursetable, sectable, subtable, teachertable where assignsubjects.deptid=depttable.deptid and assignsubjects.courseid=coursetable.courseid and assignsubjects.sectid=sectable.sectid and assignsubjects.subid=subtable.subid and assignsubjects.teacherid=teachertable.teacherid and assignid=?"; 
                                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(query);
                                                                                                         mystatement.setString(1, request.getParameter("id"));
                                                                                                        ResultSet myres=mystatement.executeQuery();

                                                                                                        if(myres.next())
                                                                                                        {
                                                                                                            deptid=myres.getString("deptid");
                                                                                                            deptname=myres.getString("deptname");
                                                                                                            
                                                                                                            cname=myres.getString("coursename");
                                                                                                            cid=myres.getString("courseid");
                                                                                                            
                                                                                                            year=myres.getString("admissionyear");
                                                                                                            
                                                                                                            section=myres.getString("section");
                                                                                                            sectid=myres.getString("sectid");
                                                                                                            
                                                                                                            semester=myres.getString("semester");
                                                                                                            
                                                                                                            subname=myres.getString("subname");
                                                                                                            subid=myres.getString("subid");
                                                                                                            
                                                                                                            teachername=myres.getString("name");
                                                                                                            teacheriid=myres.getString("teacherid");
                                                                                                             
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
        
        
        <div class="clearfix"></div>
                <!-- //w3_agileits_top_nav-->
                <div class="contact-w3l">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">Update Assign Subjects / Teacher
				<span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
			</h3>
			<!-- //tittle heading -->
			<!-- contact -->
			<div class="contact agileits">
				<div class="contact-agileinfo">
					<div class="contact-form wthree">
						<form method="post" id="form1">
                                                        <select  id="deptbox" name="deptbox"   required="" >
                                                             <option value="<%out.print(deptid);%>" selected><%out.print(deptname);%></option> 
                                                             <%
                                                                                                             
                                                                                                                try{
                                                                                                                    Connection myconnection;
                                                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                                                    myconnection=DriverManager.getConnection(PATH+PLACE,UNAME,PASS);
                                                                                                                    try{

                                                                                                                        String q="select * from depttable";
                                                                                                                        PreparedStatement mystatement=myconnection.prepareStatement(q);
                                                                                                                        ResultSet result = mystatement.executeQuery();
                                                                                                                        if(result.next())
                                                                                                                        {
                                                                                                                            do{
                                                                                                                                if(result.getString("deptname").equals(deptname)){
                                                                                                                                    continue;
                                                                                                                                }
                                                                                                                            out.print("<option value="+result.getString("deptid")+">"+result.getString("deptname")+"</option>");
                                                                                                                            }while(result.next());
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            out.print("No Deapertment Added");

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

                                                                                                %>
                                                                                            
                                                        </select>
                                                                                                <div id="deptboxarea"></div>
                                                        <select   name="coursename" id="coursename"  required="" >
                                                            <option value="<%out.print(cid);%>" selected><%out.print(cname);%>
                                                        </select>
                                                                                               
                                                       <select   name="year" id="year"  required="" >
                                                            <option value="<%out.print(year);%>" selected><%out.print(year);%></option> 
                                                        </select>
                                                        <select   name="section" id="section"  required="" >
                                                            <option value="<%out.print(sectid);%>" selected><%out.print(section);%></option> 
                                                        </select>
                                                        <select   name="semester" id="semester"  required="" >
                                                           <option value="<%out.print(semester);%>" selected><%out.print(semester);%> Semester </option> 
                                                        </select>
							
                                                       <select   name="subject" id="subject"  required="" >
                                                            <option value="<%out.print(subid);%>" selected><%out.print(subname);%></option> 
                                                        </select>
                                                        <select   name="teacher" id="teacher"  required="" >
                                                            <option value="<%out.print(teacheriid);%>" selected><%out.print(teachername);%></option> 
                                                        </select>
                                                        
                                                     
							<input type="submit" name="sub" id="sub" value="Submit">
                                                        <div id="message"></div>
                                                        <div id="answer"></div>
                                                        
						</form>
                                                 
					</div>
                                </div>
                        </div>
		<!-- //inner_content-->
	</div>
                                        
                                        </div>
    </body>
    
    
    <script type="text/javascript" src="jquery/jquery.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('#deptbox').change(function(){
            
            eml=$(this).val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"coursename" : eml},
               
              beforeSend : function()
              {
                   $('#deptboxarea').html("<i class='fa fa-spinner fa-spin' aria-hidden='true'></i>")
              },
                      
               success : function(result)
               {
                   $('#deptboxarea').html(" ")
                   $('#coursename').html(result)
               },
               error :  function(e)
               {
                   $('#coursename').html("error"+e)
               }
            })
        })
    })
    </script>
    <script type="text/javascript">
    $(document).ready(function(){
        $('#coursename').change(function(){
            
            eml=$(this).val();
           dept=$('#deptbox').val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
              data :{"courseid12" : eml, "dptid12" : dept},
               
              beforeSend : function()
              {
                   
              },
                      
               success : function(result)
               {
                   $('#year').html(result)
               },
               error :  function(e)
               {
                   $('#year').html("error"+e)
               }
            })
        })
    })
    </script>
    
    <script type="text/javascript">
    $(document).ready(function(){
        $('#year').change(function(){
            
            dept=$('#deptbox').val();
            courseid=$('#coursename').val();
            eml=$(this).val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
             data :{"dptaa" : dept, "csid12" : courseid, "yr12" : eml},
               
              beforeSend : function()
              {
                   
              },
                      
               success : function(result)
               {
                   $('#section').html(result)
               },
               error :  function(e)
               {
                   $('#section').html("error"+e)
               }
            })
        })
    })
    </script>
    
    <script type="text/javascript">
    $(document).ready(function(){
        $('#section').change(function(){
            
            eml=$('#coursename').val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"scoursename" : eml},
               
              beforeSend : function()
              {
                   
              },
                      
               success : function(result)
               {
                   $('#semester').html(result)
               },
               error :  function(e)
               {
                   $('#semester').html("error"+e)
               }
            })
        })
    })
    </script>
    
    <script type="text/javascript">
    $(document).ready(function(){
        $('#semester').change(function(){
            
            sem=$(this).val();
            dept=$('#deptbox').val();
            course=$('#coursename').val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"simi1" : sem, "dpt" : dept, "coursi1" : course},
               
              beforeSend : function()
              {
                   
              },
                      
               success : function(result)
               {
                   $('#subject').html(result)
               },
               error :  function(e)
               {
                   $('#subject').html("error"+e)
               }
            })
        })
    })
    </script>
 
    <script type="text/javascript">
    $(document).ready(function(){
        $('#deptbox').change(function(){
            
           dept=$('#deptbox').val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"dpt232" : dept},
               
              beforeSend : function()
              {
                   
              },
                      
               success : function(result)
               {
                   $('#teacher').html(result)
               },
               error :  function(e)
               {
                   $('#teacher').html("error"+e)
               }
            })
        })
        
        
    })
    </script>
    
    
    
</html>

