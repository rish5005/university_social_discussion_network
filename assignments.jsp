<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import= "java.util.*"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Assignment</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/export.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/flipclock.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/circles.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet"></head>
<body>
<!-- banner -->
<div class="wthree_agile_admin_info">
		  <!-- /w3_agileits_top_nav-->
		  <!-- /nav-->
		  <div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fa fa-bars" aria-hidden="true"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
                                                            <li><a href="assignments.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Assignments</a></li>
                                                        <li><a href="view_result.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Results</a></li>
                                                        
                                                        </ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
				<li class="second logo"><h1><a href="student_mp.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Home</a></h1></li>
					<li class="second admin-pic">
				       <ul class="top_dp_agile">
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<%
                                                                                                out.print("<span class='prfil-img'><img src='teacher_pics/"+session.getAttribute("image")+"'"+"width='60px' heigth='60px'></span>");
                                                                                            %> 
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="mypost.jsp"><i class="fa fa-user"></i> My Posts</a> </li> 
											<li> <a href="changepassword.jsp"><i class="fa fa-cog"></i> Settings</a> </li> 
											
                                                                                        <li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
									
						</ul>
				</li>
                                
                                
                                
                                
                                
                                
                                
				        <!--top three starts here-->                                                                                
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
				
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
					<li class="dropdown head-dpdn">
                                            
                                            <%
                                                
                                                try{
            
            String user4 = "root";
            String pass4 = "";
            String path4 = "jdbc:mysql://localhost/";
            String place4 = "community";

                            Connection myconnection;
                            Class.forName("com.mysql.jdbc.Driver");
                            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);
               try{

                String q="SELECT COUNT(notfid) as total from adminstudentnotificationtable where studentid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                mystatement.setString(1, session.getAttribute("rno").toString());
                ResultSet result = mystatement.executeQuery();
                if(result.next())
                { 
                    out.print("<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'>"
                            + "<i class='fa fa-bell-o' aria-hidden='true'></i> "
                            + "<span class='badge blue'>"+result.getString("total") +"</span>"
                            + "</a>"); 
                }
                else
                {
                    out.print("<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'>"
                            + "<i class='fa fa-bell-o' aria-hidden='true'></i> "
                            + "<span class='badge blue'></span>"
                            + "</a>");
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
                                            
                                            
                                            
                                            
                                            
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Admin Notifications</h3>
												</div>
											</li>
											
                                                                                        
                                                                                        
                                                                                    <%
                            
        try{
            
            String user4 = "root";
            String pass4 = "";
            String path4 = "jdbc:mysql://localhost/";
            String place4 = "community";

                            Connection myconnection;
                            Class.forName("com.mysql.jdbc.Driver");
                            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);
            try{

                String q="select * from adminstudentnotificationtable,admintable,posttable where adminstudentnotificationtable.adminid=admintable.email and adminstudentnotificationtable.postid=posttable.postid and studentid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                mystatement.setString(1, session.getAttribute("rno").toString());
                ResultSet result = mystatement.executeQuery();
                if(result.next())
                { 
                    do{
                         out.print("<li>"
                                + "<a href='comment.jsp?pid="+ result.getString("postid") +"'>"
                                + "<div class='user_img'>"
                                + "<img src='teacher_pics/"+result.getString("image")+"' alt=''>"
                                + "</div>"
                                + "<div class='notification_desc'>"
                                + "<h6>"+result.getString("name")+"</h6>"
                                + "<p>You Have New Notification</p>"
                                + "<p><span>"+result.getString("time")+"</span></p>"
                                + "</div><div class='clearfix'></div>"
                                + "</a>"
                                + "</li>"); 
                        
                    }while(result.next());
                   
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
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
										</ul>
									</li>
									
						</ul>
				</li>
                                
				 <%
                                                                                                ArrayList<String> rno = new ArrayList<String>();
                                                                                                ArrayList<String> reqid = new ArrayList<String>();
                                                                                                int size=0;
												try{
            

                                                                                                String user4 = "root";
                                                                                                String pass4 = "";
                                                                                                String path4 = "jdbc:mysql://localhost/";
                                                                                                String place4 = "community";

                                                                                                                Connection myconnection;
                                                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                                                myconnection=DriverManager.getConnection(path4+place4,user4,pass4);
                                                                                                   try{

                                                                                                                    String query1="select * from friendstable where to_=? and status=?";
                                                                                                                    PreparedStatement myst1=myconnection.prepareStatement(query1);
                                                                                                                    myst1.setString(1, session.getAttribute("rno").toString());
                                                                                                                    myst1.setString(2, "pending");
                                                                                                                    ResultSet myres1=myst1.executeQuery();
                                                                                                                    if(myres1.next())
                                                                                                                    {
                                                                                                                        do{
                                                                                                                        rno.add(myres1.getString("from_"));
                                                                                                                        reqid.add(myres1.getString("reqid"));
                                                                                                                        }while(myres1.next());

                                                                                                                    }
                                                                                                   }
                                                                                                   catch(Exception e)
                                                                                                   {
                                                                                                    out.print("Error in query"+e.getMessage());   
                                                                                                   }
                                                                                                   
                                                                                                   Object rno_array[]= rno.toArray();
                                                                                                   Object reqid_array[]= reqid.toArray();
                                                                                                    size = rno_array.length;
                                                                                                   String nor;
                                                                                                   String name[] = new String[size];
                                                                                                   String image[] = new String[size];
                                                                                                   for(int i=0;i<size;i++)
                                                                                                   {
                                                                                                       
                                                                                                    try{
                                                                                                        nor=rno_array[i].toString();

                                                                                                                    String query2="select * from rusers where rno=?";
                                                                                                                    PreparedStatement myst2=myconnection.prepareStatement(query2);
                                                                                                                    myst2.setString(1, nor);
                                                                                                                    ResultSet myres2=myst2.executeQuery();
                                                                                                                    if(myres2.next())
                                                                                                                    {
                                                                                                                        
                                                                                                                            name[i]=myres2.getString("name");
                                                                                                                            image[i]=myres2.getString("image");
                                                                                                                        

                                                                                                                    }
                                                                                                   }
                                                                                                   catch(Exception e)
                                                                                                   {
                                                                                                    out.print("Error in query"+e.getMessage());   
                                                                                                   }
                                                                                                }
                                                                                                   
                                                                                                   
                                                                                                   int counter=1;
																								    out.print("<li class='second top_bell_nav'>"
                                                                                                              +"<ul class='top_dp_agile '>"
		                                                                                                      +"<li class='dropdown head-dpdn'>"
		                                                                                                      +"<a href='' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'><i class='fa fa-user-plus'></i> <span class='badge blue'>"+size+"</span></a>"
																											  +"<ul class='dropdown-menu'>"
																											  +"<li>"
																											  +"<div class='notification_header'>"
																											  +"<h3>Friend Request</h3>"
																											  +"</div>"
																											  +"</li>"
																											  +"<li>");
                                                                                                    out.print("<form>");
                                                                                                   for(int i=0;i<size;i++)
                                                                                                { 
                                                                                                    
                                                                                                    out.print("<div class='user_img'><img src=teacher_pics/"+image[i]+" alt=''></div>"
											            +"<div class='notification_desc'>"
											            +"<h6>"+name[i]+"</h6>"
											            +"<input type='submit' class='btn success red' value='Accept' name='accept_"+i+"'>"
                                                                                                            
												    +"<input type='submit' class='btn success red' value='Decline' name='decline_"+i+"'>"
												    +"</div>"
											            +"<div class='clearfix'></div>"	
											            +"</li>"
                                                                                                    +"<br>");
                                                                                                    counter++;
                                                                                                    
                                                                                                }
                                                                                                   
                                                                                                   if(size>3)
                                                                                                   {
                                                                                                        out.print("<li>"
												        +"<div class='notification_bottom'>"
													+"<a href='friend_request_list.jsp'>See All Requests</a>"
													+"</li>");
                                                                                                    }
                                                                                            out.print("</ul>"
                                                                                            +"</li>"
                                                                                            +"</ul>"
                                                                                            +"</li>");
                                                                                            out.print("</form>");

                                                                                     String ridi;                         
                                                                                     String accept,decline;
                                                                                      for(int i=0;i<size;i++)
                                                                                      {
                                                                                          
                                                                                           accept ="accept_" + String.valueOf(i);
                                                                                           decline ="decline_" + String.valueOf(i);
                                                                                          
                                                                                          if(request.getParameter(accept)!=null)
                                                                                          {


                                                                                              try{
                                                                                                ridi=reqid_array[i].toString();

                                                                                                String query3="update friendstable set status=? where reqid=?";
                                                                                                PreparedStatement myst3=myconnection.prepareStatement(query3);
                                                                                                myst3.setString(1, "approved");
                                                                                                myst3.setString(2, ridi);
                                                                                                if(myst3.executeUpdate()>0)
                                                                                                {
                                                                                                     response.sendRedirect("student_mp.jsp");

                                                                                                }
                                                                                        }
                                                                                       catch(Exception e)
                                                                                       {
                                                                                        out.print("Error in query"+e.getMessage());   
                                                                                       }
                                                                                          }
                                                                                          if(request.getParameter(decline)!=null)
                                                                                          {

                                                                                      try{
                                                                                                        ridi=reqid_array[i].toString();

                                                                                                                    String query4="delete from friendstable where reqid=?";
                                                                                                                    PreparedStatement myst4=myconnection.prepareStatement(query4);
                                                                                                                    myst4.setString(1, ridi);
                                                                                                                    if(myst4.executeUpdate()>0)
                                                                                                                    {
                                                                                                                        
                                                                                                                             response.sendRedirect("student_mp.jsp");
                                                                                                                    }
                                                                                                   }
                                                                                                   catch(Exception e)
                                                                                                   {
                                                                                                    out.print("Error in query"+e.getMessage());   
                                                                                                   }
                                                                                          }
                                                                                                                                                                      
                                                                                                                                                                      
                                                                                                                                                                      
                                                                                                                                                                      
                                                                                                                                                                  
                                                                              }
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
																								
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                               
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                 }
                                                                                                 catch(Exception e)
                                                                                                       {
                                                                                                        out.print("Error in query"+e.getMessage());   
                                                                                                       }
        
                                                                                                
                                                                                                
                                                                                                        %>
                                                                                                        
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
				       <li class="dropdown head-dpdn">
										
                                           <%
                                                
                                                try{
            String user4 = "root";
            String pass4 = "";
            String path4 = "jdbc:mysql://localhost/";
            String place4 = "community";

            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);

            try{

                String q="SELECT COUNT(notfid) as total from teacherstudentnotificationtable where studentid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                mystatement.setString(1, session.getAttribute("rno").toString());
                ResultSet result = mystatement.executeQuery();
                if(result.next())
                { 
                    out.print("<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'>"
                            + "<i class='fa fa-graduation-cap'></i> "
                            + "<span class='badge blue'>"+result.getString("total") +"</span>"
                            + "</a>"); 
                }
                else
                {
                    out.print("<a href='#' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'>"
                            + "<i class='fa fa-bell-o' aria-hidden='true'></i> "
                            + "<span class='badge blue'></span>"
                            + "</a>");
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
                                           
                                           
                                           
                                           <ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Teacher Notification</h3>
												</div>
											</li>
											<%
                            
        try{
            
            String user4 = "root";
            String pass4 = "";
            String path4 = "jdbc:mysql://localhost/";
            String place4 = "community";

            Connection myconnection;
            Class.forName("com.mysql.jdbc.Driver");
            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);try{

                String q="select * from teacherstudentnotificationtable,teachertable,posttable where teacherstudentnotificationtable.teacherid=teachertable.teacherid and teacherstudentnotificationtable.postid=posttable.postid and studentid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                mystatement.setString(1, session.getAttribute("rno").toString());
                ResultSet result = mystatement.executeQuery();
                if(result.next())
                { 
                    do{
                         out.print("<li>"
                                + "<a href='comment.jsp?pid="+ result.getString("postid") +"'>"
                                + "<div class='user_img'>"
                                + "<img src='teacher_pics/"+result.getString("image")+"' alt=''>"
                                + "</div>"
                                + "<div class='notification_desc'>"
                                + "<h6>"+result.getString("name")+"</h6>"
                                + "<p>You Have New Notification</p>"
                                + "<p><span>"+result.getString("time")+"</span></p>"
                                + "</div><div class='clearfix'></div>"
                                + "</a>"
                                + "</li>"); 
                        
                    }while(result.next());
                   
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
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                               
										</ul>
									</li>	
								</ul>
				</li>
                                
                                
                                <!--top three ends here-->
				<li class="second w3l_search">
				 
						<form action="#" method="post">
							<input type="search" name="search" placeholder="Search here..." required="">
							<button class="btn btn-default" name="search_button" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
						</form>
                                    <%
                                        if(request.getParameter("search_button")!=null)
                                        {
                                            response.sendRedirect("search_people.jsp?sea="+request.getParameter("search"));
                                        }
                                    %>
					
				</li>
				<li class="second full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>
				</li>

			</ul>
			<!-- //nav -->
			
		</div>
		<div class="clearfix"></div>
		<!-- //w3_agileits_top_nav-->
		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
					<div class="inner_content_w3_agile_info">
                                            				
									
                                                                                            
                                                                                            <div class="inner_content_w3_agile_info two_in">
                                                                                                
						                                 <h3>Choose Subject</h3>
					  				<div class="agile-tables">
                                                                            	<div class="w3l-table-info agile_info_shadow">
                                                                                    <form method="post">
                                                                                        <div class="form-group ">	
                                                                                            <select  id="subject" name="subject" class="form-control" required="" >
                                                                                                <option value=" ">Choose Subject</option>
                                                                                                <%
                                                                                                    String user = "root";
                                                                                                             String pass = "";
                                                                                                             String path = "jdbc:mysql://localhost/";
                                                                                                             String place = "community";
                                                                                                                try{
                                                                                                                    Connection myconnection;
                                                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                                                    myconnection=DriverManager.getConnection(path+place,user,pass);
                                                                                                                    try{
                                                                                                                        String deptid="",courseid="",sem="",sec="";
                                                                                                                        String query0="select * from rusers where rno=?";
                                                                                                                        PreparedStatement myst0=myconnection.prepareStatement(query0);
                                                                                                                        myst0.setString(1, session.getAttribute("rno").toString());
                                                                                                                        ResultSet rs = myst0.executeQuery();
                                                                                                                        if(rs.next())
                                                                                                                        {
                                                                                                                             deptid=rs.getString("dept");
                                                                                                                             courseid=rs.getString("class");
                                                                                                                             sem=rs.getString("sem");
                                                                                                                             sec=rs.getString("sec");
                                                                                                                             
                                                                                                                             String query01="select * from subtable where deptid=? and courseid=? and sem=?";
                                                                                                                        PreparedStatement myst01=myconnection.prepareStatement(query01);
                                                                                                                        myst01.setString(1, deptid);
                                                                                                                        myst01.setString(2, courseid);
                                                                                                                        myst01.setString(3, sem);
                                                                                                                        ResultSet rs1 = myst01.executeQuery();
                                                                                                                        if(rs1.next())
                                                                                                                        {
                                                                                                                            do{
                                                                                                                             out.print("<option value='"+rs1.getString("subid")+"'>"+rs1.getString("subname")+"("+rs1.getString("type")+" credits: "+rs1.getString("credits")+")</option>");
                                                                                                                            }while(rs1.next());
                                                                                                                            out.print("<input type='hidden' name='section' id='section' value='"+sec+"'>");
                                                                                                                            //out.print(request.getParameter("section"));

                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            out.print("no subjects added");
                                                                                                                        }
                                                                                                                             

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
                                                                                                                     out.print("Error in query"+e.getMessage());
                                                                                                                    }

                                                                                                %>
                                                                                        </select><br>
                                                                                        <div id="spinarea">
                                                                                            
                                                                                        </div>
                                                                                        <div id="ass_area">
                                                                                            
                                                                                        </div>
                                                                                                </div>
                                                                                    
                                                                                    
                                                                                    	
										</form>
                                                                            
                                                                                            
								</div>
									  
								
						</div>
							<!-- //tables -->
					
							<!-- /social_media-->
						  
						<!-- //social_media-->
				    </div>
                                                                                            
									
								
						
                                        </div>
					<!-- //inner_content_w3_agile_info-->
				</div>
		<!-- //inner_content-->
	</div>
<!-- banner -->
<!--copy rights start here-->
	

<!--copy rights end here-->
<!-- js -->

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

	<!-- /amcharts -->
				<script src="js/amcharts.js"></script>
		       <script src="js/serial.js"></script>
				<script src="js/export.js"></script>	
				<script src="js/light.js"></script>
				<!-- Chart code -->
	 <script>
var chart = AmCharts.makeChart("chartdiv", {
    "theme": "light",
    "type": "serial",
    "startDuration": 2,
    "dataProvider": [{
        "country": "USA",
        "visits": 4025,
        "color": "#FF0F00"
    }, {
        "country": "China",
        "visits": 1882,
        "color": "#FF6600"
    }, {
        "country": "Japan",
        "visits": 1809,
        "color": "#FF9E01"
    }, {
        "country": "Germany",
        "visits": 1322,
        "color": "#FCD202"
    }, {
        "country": "UK",
        "visits": 1122,
        "color": "#F8FF01"
    }, {
        "country": "France",
        "visits": 1114,
        "color": "#B0DE09"
    }, {
        "country": "India",
        "visits": 984,
        "color": "#04D215"
    }, {
        "country": "Spain",
        "visits": 711,
        "color": "#0D8ECF"
    }, {
        "country": "Netherlands",
        "visits": 665,
        "color": "#0D52D1"
    }, {
        "country": "Russia",
        "visits": 580,
        "color": "#2A0CD0"
    }, {
        "country": "South Korea",
        "visits": 443,
        "color": "#8A0CCF"
    }, {
        "country": "Canada",
        "visits": 441,
        "color": "#CD0D74"
    }, {
        "country": "Brazil",
        "visits": 395,
        "color": "#754DEB"
    }, {
        "country": "Italy",
        "visits": 386,
        "color": "#DDDDDD"
    }, {
        "country": "Taiwan",
        "visits": 338,
        "color": "#333333"
    }],
    "valueAxes": [{
        "position": "left",
        "axisAlpha":0,
        "gridAlpha":0
    }],
    "graphs": [{
        "balloonText": "[[category]]: <b>[[value]]</b>",
        "colorField": "color",
        "fillAlphas": 0.85,
        "lineAlpha": 0.1,
        "type": "column",
        "topRadius":1,
        "valueField": "visits"
    }],
    "depth3D": 40,
	"angle": 30,
    "chartCursor": {
        "categoryBalloonEnabled": false,
        "cursorAlpha": 0,
        "zoomable": false
    },
    "categoryField": "country",
    "categoryAxis": {
        "gridPosition": "start",
        "axisAlpha":0,
        "gridAlpha":0

    },
    "export": {
    	"enabled": true
     }

}, 0);
</script>
<!-- Chart code -->
<script>
var chart = AmCharts.makeChart("chartdiv1", {
    "type": "serial",
	"theme": "light",
    "legend": {
        "horizontalGap": 10,
        "maxColumns": 1,
        "position": "right",
		"useGraphSettings": true,
		"markerSize": 10
    },
    "dataProvider": [{
        "year": 2017,
        "europe": 2.5,
        "namerica": 2.5,
        "asia": 2.1,
        "lamerica": 0.3,
        "meast": 0.2,
        "africa": 0.1
    }, {
        "year": 2016,
        "europe": 2.6,
        "namerica": 2.7,
        "asia": 2.2,
        "lamerica": 0.3,
        "meast": 0.3,
        "africa": 0.1
    }, {
        "year": 2015,
        "europe": 2.8,
        "namerica": 2.9,
        "asia": 2.4,
        "lamerica": 0.3,
        "meast": 0.3,
        "africa": 0.1
    }],
    "valueAxes": [{
        "stackType": "regular",
        "axisAlpha": 0.5,
        "gridAlpha": 0
    }],
    "graphs": [{
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Europe",
        "type": "column",
		"color": "#000000",
        "valueField": "europe"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "North America",
        "type": "column",
		"color": "#000000",
        "valueField": "namerica"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Asia-Pacific",
        "type": "column",
		"color": "#000000",
        "valueField": "asia"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Latin America",
        "type": "column",
		"color": "#000000",
        "valueField": "lamerica"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Middle-East",
        "type": "column",
		"color": "#000000",
        "valueField": "meast"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Africa",
        "type": "column",
		"color": "#000000",
        "valueField": "africa"
    }],
    "rotate": true,
    "categoryField": "year",
    "categoryAxis": {
        "gridPosition": "start",
        "axisAlpha": 0,
        "gridAlpha": 0,
        "position": "left"
    },
    "export": {
    	"enabled": true
     }
});
</script>

	<!-- //amcharts -->
		<script src="js/chart1.js"></script>
				<script src="js/Chart.min.js"></script>
		<script src="js/modernizr.custom.js"></script>
		
		<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
			<!-- script-for-menu -->

<!-- /circle-->
	 <script type="text/javascript" src="js/circles.js"></script>
					         <script>
								var colors = [
										['#ffffff', '#fd9426'], ['#ffffff', '#fc3158'],['#ffffff', '#53d769'], ['#ffffff', '#147efb']
									];
								for (var i = 1; i <= 7; i++) {
									var child = document.getElementById('circles-' + i),
										percentage = 30 + (i * 10);
										
									Circles.create({
										id:         child.id,
										percentage: percentage,
										radius:     80,
										width:      10,
										number:   	percentage / 1,
										text:       '%',
										colors:     colors[i - 1]
									});
								}
						
				</script>
	<!-- //circle -->
	<!--skycons-icons-->
<script src="js/skycons.js"></script>
<script>
									 var icons = new Skycons({"color": "#fcb216"}),
										  list  = [
											"partly-cloudy-day"
										  ],
										  i;

									  for(i = list.length; i--; )
										icons.set(list[i], list[i]);
									  icons.play();
								</script>
								<script>
									 var icons = new Skycons({"color": "#fff"}),
										  list  = [
											"clear-night","partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind","fog"
										  ],
										  i;

									  for(i = list.length; i--; )
										icons.set(list[i], list[i]);
									  icons.play();
								</script>
<!--//skycons-icons-->
<!-- //js -->
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
		<script src="js/flipclock.js"></script>
	
	<script type="text/javascript">
		var clock;
		
		$(document).ready(function() {
			
			clock = $('.clock').FlipClock({
		        clockFace: 'HourlyCounter'
		    });
		});
	</script>
<script src="js/bars.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>







<!--ajax-->
<script type="text/javascript" src="jquery/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#subject').change(function(){
            
            eml=$(this).val();
            sec=$('#section').val();
           
           $.ajax({
               url : 'ajax3.jsp',
               type : 'post',
               
               data :{"ass_subject" : eml, "sec": sec},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   $('#spinarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#spinarea').html(" ");
                   $('#ass_area').html(result)
               },
               error :  function(e)
               {
                   $('#ass_area').html("error"+e)
               }
            })
        })
    })
  
    
    

 

</script>
  
    



</body>
</html>