<%@page import="java.util.TreeSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.*"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Home</title>
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
<link href="css1/c1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css1/c2.css" rel="stylesheet" type="text/css" media="all" />
<link href="css1/c4.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="comments_css/jquery-comments.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<link href="css/jquery.fancybox.min.css" rel="stylesheet" type="text/css" media="all" />

<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif;}
li.second.logo h1{
        line-height:42px;
    }
    .headertekst {
    
      text-align: center;
      width:100%
    }
</style>


<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet"></head>
<body>
<!-- banner -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="jquery/jquery.fancybox.min.js"></script>
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
                                                                                                ArrayList<String> rno56= new ArrayList<String>();
                                                                                                ArrayList<String> reqid = new ArrayList<String>();
                                                                                                int size12345=0;
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
                                                                                                                        rno56.add(myres1.getString("from_"));
                                                                                                                        reqid.add(myres1.getString("reqid"));
                                                                                                                        }while(myres1.next());

                                                                                                                    }
                                                                                                   }
                                                                                                   catch(Exception e)
                                                                                                   {
                                                                                                    out.print("Error in query"+e.getMessage());   
                                                                                                   }
                                                                                                   
                                                                                                   Object rno_array[]= rno56.toArray();
                                                                                                   Object reqid_array[]= reqid.toArray();
                                                                                                    size12345 = rno_array.length;
                                                                                                   String nor;
                                                                                                   String name[] = new String[size12345];
                                                                                                   String image[] = new String[size12345];
                                                                                                   for(int i=0;i<size12345;i++)
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
		                                                                                                      +"<a href='' class='dropdown-toggle' data-toggle='dropdown' aria-expanded='true'><i class='fa fa-user-plus'></i> <span class='badge blue'>"+size12345+"</span></a>"
																											  +"<ul class='dropdown-menu'>"
																											  +"<li>"
																											  +"<div class='notification_header'>"
																											  +"<h3>Friend Request</h3>"
																											  +"</div>"
																											  +"</li>"
																											  +"<li>");
                                                                                                    out.print("<form>");
                                                                                                   for(int i=0;i<size12345;i++)
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
                                                                                                   
                                                                                                   if(size12345>3)
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
                                                                                      for(int i=0;i<size12345;i++)
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
				 
						<form  method="post">
							<%out.print("<input type='search' name='search' placeholder='Search here...' required='' value='"+request.getParameter("sea")+"' >"); %>
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
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
            <h4 class="w3-center"><%out.print(session.getAttribute("name").toString());%></h4>
         <%
          out.print("<p class='w3-center'><img src='teacher_pics/"+session.getAttribute("image")+"' class='w3-circle' style='height:106px;width:106px' </p>");
         %> 
         <hr>
         <%
             String rno12345667="",dobo="",dipi="",emili="";
             try{
                           String user4 = "root";
                            String pass4 = "";
                            String path4 = "jdbc:mysql://localhost/";
                            String place4 = "community";

                            Connection myconnection;
                            Class.forName("com.mysql.jdbc.Driver");
                            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);

                           try{

                               String q112="select * from rusers where rno=?";
                               PreparedStatement mystatement112=myconnection.prepareStatement(q112);
                               mystatement112.setString(1, session.getAttribute("rno").toString());
                               ResultSet myres112 = mystatement112.executeQuery();
                               if(myres112.next())
                               {
                                   rno12345667 = myres112.getString("dept");
                                   emili = myres112.getString("email");
                                   dobo = myres112.getString("dob");
                               }
                           }
                           catch(Exception e)
                           {
                            out.print("Error"+e.getMessage());   
                           }
                           
                           
                           try{

                               String q112="select * from depttable where deptid=?";
                               PreparedStatement mystatement112=myconnection.prepareStatement(q112);
                               mystatement112.setString(1, rno12345667);
                               ResultSet myres112 = mystatement112.executeQuery();
                               if(myres112.next())
                               {
                                   dipi= myres112.getString("deptname");
                               }
                           }
                           catch(Exception e)
                           {
                            out.print("Error"+e.getMessage());   
                           }
             }
             catch(Exception e)
                           {
                            out.print("Error"+e.getMessage());   
                           }
          
             
             
             
         out.print("<p><i class='fa fa-university fa-fw w3-margin-right w3-text-theme'></i>"+dipi+"</p>"
         +"<p><i class='fa fa-envelope fa-fw w3-margin-right w3-text-theme'></i>"+ emili +"</p>"
         +"<p><i class='fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme'></i>"+dobo+"</p>");
         %></div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
          <!--<button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Groups</button>
          <div id="Demo1" class="w3-hide w3-container">
            <p>Some text..</p>
          </div>
          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Events</button>
          <div id="Demo2" class="w3-hide w3-container">
            <p>Some other text..</p>
          </div>
          --><button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw w3-margin-right"></i> My Photos</button>
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         <br>
           
           <%
               int count=0,flag1=0 ;
               
               
                      try{
                           String user4 = "root";
                            String pass4 = "";
                            String path4 = "jdbc:mysql://localhost/";
                            String place4 = "community";

                            Connection myconnection;
                            Class.forName("com.mysql.jdbc.Driver");
                            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);
                            
                            
                            
                            try
            {
                String q="select * from posttable where type=? and userid=? order by postid desc";
                PreparedStatement mystatement=myconnection.prepareStatement(q);   
                mystatement.setString(1, "student");
                mystatement.setString(2, session.getAttribute("rno").toString() );
                ResultSet myresult = mystatement.executeQuery();
                if(myresult.next())
                { 
                    
                                                       
                    do{
                            String q2="select * from imagetable where postid=?";
                         PreparedStatement mystatement2=myconnection.prepareStatement(q2);
                         mystatement2.setString(1, myresult.getString("postid"));
                         ResultSet myresult2 = mystatement2.executeQuery();
                         if(myresult2.next())
                         {
                             
                             do{
                                 count++;
                                 flag1=1;
                                 
                                 out.print("<div class='w3-half'>"
                                          +"<a data-fancybox='images' data-trigger='images'  href='postpics/"+myresult2.getString("postpic")+"'><img src='postpics/"+myresult2.getString("postpic")+" ' style='width:100%' class='w3-margin-bottom'></a>"
                                          +"</div>");
                                 
                             
                             }while(myresult2.next());
                             
                         }
                         
                    }while(myresult.next());
                    
                     if(flag1==0)
                    {
                        out.print("<p>"+"No Photos"+"</p>");
                    }
                    
                }
                else
                    {
                        out.print("<p>"+"No Photos"+"</p>");
                    }
            }
            catch(Exception e)
            {
             out.print("Error in q3"+e.getMessage());
            }

                      }
                      catch(Exception e)
                      {
                          out.print("error in connection"+e.getMessage());
                      }










                

           %>
         </div>
          </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      
      <br>
      
      <!-- Alert Box -->
      
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <%
        int flag=0,new_index,friends_index,pending_index;
        HashSet <String> rno = new HashSet();
        HashSet <String> friendlist = new HashSet();
        HashSet <String> pendinglist = new HashSet();
        try{
            

           String user4 = "root";
        String pass4 = "";
        String path4 = "jdbc:mysql://localhost/";
        String place4 = "community";
       
                        Connection myconnection;
                        Class.forName("com.mysql.jdbc.Driver");
                        myconnection=DriverManager.getConnection(path4+place4,user4,pass4);
           try{
                            
                            String query1="select * from rusers where name like ?";
                            PreparedStatement myst1=myconnection.prepareStatement(query1);
                            myst1.setString(1, request.getParameter("sea")+"%");
                            ResultSet myres1=myst1.executeQuery();
                            if(myres1.next())
                            {
                                
                                do{
                                 rno.add(myres1.getString("rno"));
                                }while(myres1.next());
                            }
                            //out.print("1");
                            
                            String query2="select * from  friendstable where to_=? and status=?";
                            PreparedStatement myst2=myconnection.prepareStatement(query2);
                            myst2.setString(1, session.getAttribute("rno").toString());
                            myst2.setString(2, "approved");
                            ResultSet myres2=myst2.executeQuery();
                            if(myres2.next())
                            {
                                
                                do{
                                 friendlist.add(myres2.getString("from_"));
                                }while(myres2.next());
                            }
                            //out.print("2");
                           
                            String query3="select * from  friendstable where from_=? and status=?";
                            PreparedStatement myst3=myconnection.prepareStatement(query3);
                            myst3.setString(1, session.getAttribute("rno").toString());
                            myst3.setString(2, "approved");
                            ResultSet myres3=myst3.executeQuery();
                            if(myres3.next())
                            {
                                
                                do{
                                 friendlist.add(myres3.getString("to_"));
                                }while(myres3.next());
                            }
                            friendlist.retainAll(rno);
                            rno.removeAll(friendlist);
                            
                            //out.print("3");
                            String query4="select * from  friendstable where to_=? and status=?";
                            PreparedStatement myst4=myconnection.prepareStatement(query4);
                            myst4.setString(1, session.getAttribute("rno").toString());
                            myst4.setString(2, "pending");
                            ResultSet myres4=myst4.executeQuery();
                            if(myres4.next())
                            {
                                
                                do{
                                 pendinglist.add(myres4.getString("from_"));
                                }while(myres4.next());
                            }
                            //out.print("4");
                            String query5="select * from  friendstable where from_=? and status=?";
                            PreparedStatement myst5=myconnection.prepareStatement(query5);
                            myst5.setString(1, session.getAttribute("rno").toString());
                            myst5.setString(2, "pending");
                            ResultSet myres5=myst5.executeQuery();
                            if(myres5.next())
                            {
                                
                                do{
                                 pendinglist.add(myres5.getString("to_"));
                                }while(myres5.next());
                            }
                            //out.print("5");
                            pendinglist.retainAll(rno);
                            rno.removeAll(pendinglist);
                          Object rno_array[]=rno.toArray();
                          Object pendinglist_array[]=pendinglist.toArray();
                          Object friendlist_array[]=friendlist.toArray();
                          int size=rno_array.length + pendinglist_array.length + friendlist_array.length;
                          String deptid[] = new String [size];
                          String deptname[] = new String [size];
                          String image[] = new String [size];
                          String name[] = new String [size];
                          
                          
                      for(int i=0;i<rno_array.length;i++)
                        {
                            
                          String query6="select * from  rusers where rno=? ";
                            PreparedStatement myst6=myconnection.prepareStatement(query6);
                            myst6.setString(1, rno_array[i].toString());
                            ResultSet myres6=myst6.executeQuery();
                              if(myres6.next())
                                 {
                                
                                 deptid[i]=myres6.getString("dept");
                                 name[i]=myres6.getString("name");
                                 image[i]=myres6.getString("image");
                                 
                                }
                       }
                      
                      //out.print("6");
                      for(int i=0;i<friendlist_array.length ;i++)
                        {
                          String query7="select * from  rusers where rno=?";
                            PreparedStatement myst7=myconnection.prepareStatement(query7);
                            myst7.setString(1, friendlist_array[i].toString());
                            ResultSet myres7=myst7.executeQuery();
                              if(myres7.next())
                                 {
                                     
                                do{
                                 deptid[i + rno_array.length]=myres7.getString("dept");
                                 name[i + rno_array.length]=myres7.getString("name");
                                 image[i + rno_array.length]=myres7.getString("image");
                                  }while(myres7.next());
                                }
                       }
                      //out.print("7");
                      for(int i=0;i<pendinglist_array.length ;i++)
                        {
                          String query8="select * from  rusers where rno=?";
                            PreparedStatement myst8=myconnection.prepareStatement(query8);
                            myst8.setString(1, pendinglist_array[i].toString());
                            ResultSet myres8=myst8.executeQuery();
                              if(myres8.next())
                                 {
                                     
                                do{
                                 deptid[i + rno_array.length + friendlist_array.length]=myres8.getString("dept");
                                 name[i + rno_array.length + friendlist_array.length]=myres8.getString("name");
                                 image[i + rno_array.length + friendlist_array.length]=myres8.getString("image");
                                  }while(myres8.next());
                                }
                       }
                      //out.print("8");
                      for(int i=0;i<deptid.length ;i++)
                        {
                          String query9="select * from  depttable where deptid=?";
                            PreparedStatement myst9=myconnection.prepareStatement(query9);
                            myst9.setString(1, deptid[i]);
                            ResultSet myres9=myst9.executeQuery();
                              if(myres9.next())
                                 {
                                     
                                do{
                                 deptname[i]=myres9.getString("deptname");
                                 }while(myres9.next());
                                }
                       }
                      
                      //out.print("9");
                      
                      out.print("<h3 class='headertekst'>People<i class='fa fa-search'></i></h3>");
                      //out.print("<br>");
                      out.print("<hr>");
                      
                      for(int i=0;i<friendlist_array.length;i++)
                      {
                          flag=1;
                          out.print("<div class='w3-col m3'>"
    
                                  +"<div class='w3-row-padding'>"
                                  +"<div class='w3-card w3-round w3-white'>"
                                  +"<div class='w3-container'>"
                                  +"<h4 class='w3-center'>"+name[i+rno_array.length]+"</h4>"
                                  +"<a href='profile.jsp?rno="+friendlist_array[i]+"'><p class='w3-center'><img src='teacher_pics/"+image[i+rno_array.length]+"' class='w3-circle' style='height:106px;width:106px' </p></a>" 
                                  +"<hr>"
                                  +"<h5 class='w3-center'>"+deptname[i+rno_array.length]+"</h5>"
                                  +"<a href='view_profile.jsp?rno="+friendlist_array[i]+"'><button class='btn btn-group-justified'>Friends</button></a>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>");
                      }
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      for(int i=0;i<rno_array.length;i++)
                      {
                          if(rno_array[i].toString().equals(session.getAttribute("rno")))
                          {
                              flag=1;
                              out.print("<div class='w3-col m3'>"
    
                                  +"<div class='w3-row-padding'>"
                                  +"<div class='w3-card w3-round w3-white'>"
                                  +"<div class='w3-container'>"
                                  +"<h4 class='w3-center'>"+name[i]+"</h4>"
                                  +"<a href='mypost.jsp?rno="+rno_array[i]+"'><p class='w3-center'><img src='teacher_pics/"+image[i]+"' class='w3-circle' style='height:106px;width:106px' </p></a>" 
                                  +"<hr>"
                                  +"<h5 class='w3-center'>"+deptname[i]+"</h5>"
                                  +"<a href='mypost.jsp?rno="+rno_array[i]+"'><button class='btn btn-group-justified'>View Your Profile</button></a>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>");
                          }
                          else{
                              flag=1;
                          out.print("<div class='w3-col m3'>"
    
                                  +"<div class='w3-row-padding'>"
                                  +"<div class='w3-card w3-round w3-white'>"
                                  +"<div class='w3-container'>"
                                  +"<h4 class='w3-center'>"+name[i]+"</h4>"
                                  +"<a href='mypost.jsp?rno="+rno_array[i]+"'><p class='w3-center'><img src='teacher_pics/"+image[i]+"' class='w3-circle' style='height:106px;width:106px' </p></a>" 
                                  +"<hr>"
                                  +"<h5 class='w3-center'>"+deptname[i]+"</h5>"
                                  +"<a href='no_profile.jsp?rno="+rno_array[i]+"'><button class='btn btn-group-justified'>Send Request</button></a>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>");
                          }
                      }
                      
                      
                      
                      
                      
                      for(int i=0;i<pendinglist_array.length;i++)
                      {
                          flag=1;
                          out.print("<div class='w3-col m3'>"
    
                                  +"<div class='w3-row-padding'>"
                                  +"<div class='w3-card w3-round w3-white'>"
                                  +"<div class='w3-container'>"
                                  +"<h4 class='w3-center'>"+name[i+rno_array.length+friendlist_array.length]+"</h4>"
                                  +"<a href='pprofile.jsp?rno="+pendinglist_array[i]+"'><p class='w3-center'><img src='teacher_pics/"+image[i+rno_array.length+friendlist_array.length]+"' class='w3-circle' style='height:106px;width:106px' </p></a>" 
                                  +"<hr>"
                                  +"<h5 class='w3-center'>"+deptname[i+rno_array.length+friendlist_array.length]+"</h5>"
                                  +"<a href='pprofile.jsp?rno="+pendinglist_array[i]+"'><button class='btn btn-group-justified'>Request Pending</button></a>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>"
                                  +"</div>");
                      }
                      if(flag==0)
                      {
                          out.print("<h4 class='headertekst'>Sorry No Result Found</h4>");
                          out.print("<h3 class='headertekst'><i class='fa fa-frown-o'></i>!</h3>");
                      }
                          
                            
               
                                     
           }
           catch(Exception e)
           {
               out.print("Error in query"+e.getMessage());
           }
        }
        catch(Exception e)
           {
               out.print("Error in connection details"+e.getMessage());
           }
       
    %>   
      
    <!-- End Middle Column -->
    
         
         
         
         
         
         
         
         
         
    
    <!-- Right Column -->
        
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<div id="#comments-container">
</div>
<br>




 
<script>
// Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else { 
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
		<div class="clearfix"></div>
		<!-- //w3_agileits_top_nav-->
		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
					<div class="inner_content_w3_agile_info">
                                           
                                        
				    </div>
					<!-- //inner_content_w3_agile_info-->
				</div>
		<!-- //inner_content-->
	</div>
<!-- banner -->
<!--copy rights start here-->
<div class="copyrights">
	 <p>� 2017 Esteem. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
</div>	

<!--copy rights end here-->
<!-- js -->


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














<!-- comments-->
	<script type="text/javascript">
$('#comments-container').comments({
    profilePictureURL: 'https://app.viima.com/static/media/user_profiles/user-icon.png',
    getComments: function(success, error) {
        var commentsArray = [{
            id: 1,
            created: '2015-10-01',
            content: 'Lorem ipsum dolort sit amet',
            fullname: 'Simon Powell',
            upvote_count: 2,
            user_has_upvoted: false
        }];
        success(commentsArray);
    }
});
</script>






</body>
</html>