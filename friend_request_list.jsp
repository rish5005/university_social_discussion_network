
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.*"%><!--
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

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-comments.js"></script>
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
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
									
						</ul>
				</li>
				<li class="second top_bell_nav">
				   <ul class="top_dp_agile ">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-bell-o" aria-hidden="true"></i> <span class="badge blue">4</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Notifications</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											  <li><a href="#">
												<div class="user_img"><img src="images/a4.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
                                                                                           </div>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Notifications</a>
												</div> 
											</li>
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
                                                                                                    if(counter<=3)
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
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue">9</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 4 Pending tasks</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Database update</span><span class="percentage">40%</span>
													<div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													<div class="bar yellow" style="width:40%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar green" style="width:90%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
													<div class="clearfix"></div>	
												</div>
											   <div class="progress progress-striped active">
													 <div class="bar red" style="width: 33%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar  blue" style="width: 80%;"></div>
												</div>
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all pending tasks</a>
												</div> 
											</li>
										</ul>
									</li>	
								</ul>
				</li>

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
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Designer, UI</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> London, UK</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1988</p>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
          <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Groups</button>
          <div id="Demo1" class="w3-hide w3-container">
            <p>Some text..</p>
          </div>
          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Events</button>
          <div id="Demo2" class="w3-hide w3-container">
            <p>Some other text..</p>
          </div>
          <button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw w3-margin-right"></i> My Photos</button>
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         <br>
           <div class="w3-half">
             <img src="images2/lights.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="images2/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="images2/mountains.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="images2/forest.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="images2/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="images2/fjords.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
         </div>
          </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      <div class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <p>Interests</p>
          <p>
            <span class="w3-tag w3-small w3-theme-d5">News</span>
            <span class="w3-tag w3-small w3-theme-d4">W3Schools</span>
            <span class="w3-tag w3-small w3-theme-d3">Labels</span>
            <span class="w3-tag w3-small w3-theme-d2">Games</span>
            <span class="w3-tag w3-small w3-theme-d1">Friends</span>
            <span class="w3-tag w3-small w3-theme">Games</span>
            <span class="w3-tag w3-small w3-theme-l1">Friends</span>
            <span class="w3-tag w3-small w3-theme-l2">Food</span>
            <span class="w3-tag w3-small w3-theme-l3">Design</span>
            <span class="w3-tag w3-small w3-theme-l4">Art</span>
            <span class="w3-tag w3-small w3-theme-l5">Photos</span>
          </p>
        </div>
      </div>
      <br>
      
      <!-- Alert Box -->
      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>People are looking at your profile. Find out who.</p>
      </div>
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
      
        

      
    <!-- End Middle Column -->
    
    
    <!-- Right Column -->
    <h3 class='headertekst'>Pending Friend Request<i class="fa fa-users"></i></h3>
    <hr>
    
    
    
    
    
    <%
                                                                                                ArrayList<String> rno1 = new ArrayList<String>();
                                                                                                ArrayList<String> reqid1 = new ArrayList<String>();
                                                                                                int size1=0;
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
                                                                                                                        rno1.add(myres1.getString("from_"));
                                                                                                                        reqid1.add(myres1.getString("reqid"));
                                                                                                                        }while(myres1.next());

                                                                                                                    }
                                                                                                   }
                                                                                                   catch(Exception e)
                                                                                                   {
                                                                                                    out.print("Error in query"+e.getMessage());   
                                                                                                   }
                                                                                                   
                                                                                                   Object rno_array1[]= rno1.toArray();
                                                                                                   Object reqid_array1[]= reqid1.toArray();
                                                                                                    size1 = rno_array1.length;
                                                                                                   String noroo;
                                                                                                   String name1[] = new String[size];
                                                                                                   String image1[] = new String[size];
                                                                                                   for(int i=0;i<size;i++)
                                                                                                   {
                                                                                                       
                                                                                                    try{
                                                                                                        noroo=rno_array1[i].toString();

                                                                                                                    String query2="select * from rusers where rno=?";
                                                                                                                    PreparedStatement myst2=myconnection.prepareStatement(query2);
                                                                                                                    myst2.setString(1, noroo);
                                                                                                                    ResultSet myres2=myst2.executeQuery();
                                                                                                                    if(myres2.next())
                                                                                                                    {
                                                                                                                        
                                                                                                                            name1[i]=myres2.getString("name");
                                                                                                                            image1[i]=myres2.getString("image");
                                                                                                                        

                                                                                                                    }
                                                                                                   }
                                                                                                   catch(Exception e)
                                                                                                   {
                                                                                                    out.print("Error in query"+e.getMessage());   
                                                                                                   }
                                                                                                }
                                                                                                   
                                                                                                   
                                                                                                  
                                                                                                    out.print("<form>");
                                                                                                   for(int i=0;i<size1;i++)
                                                                                                { 
                                                                                                    
                                                                                                    out.print("<div class='w3-col m3'>"
                                                                                                            +"<div class='w3-row-padding'>"
                                                                                                            +"<div class='w3-card w3-round w3-white w3-center'>"
                                                                                                            +"<div class='w3-container'>"
                                                                                                            +"<p>Friend Request</p>"
                                                                                                            +"<img src='teacher_pics/"+image1[i]+"' alt='Avatar' style='width:50%'><br>"
                                                                                                            +"<span>"+name1[i]+"</span>"
                                                                                                            +"<div class='w3-row w3-opacity'>"
                                                                                                            +"<div class='w3-half'>"
                                                                                                            +"<button type='submit' class='w3-button w3-block w3-green w3-section' title='Accept' name='accept1_"+i+"'> <i class='fa fa-check'></i></button>"
                                                                                                            +"</div>"
                                                                                                            +"<div class='w3-half'>"
                                                                                                            +"<button type='submit' class='w3-button w3-block w3-red w3-section' title='Decline' name='decline1_"+i+"'><i class='fa fa-remove'></i></button>"
                                                                                                            +"</div>"
                                                                                                            +"</div>"
                                                                                                            +"</div>"
                                                                                                            +"</div>"
                                                                                                            +"</div>"
                                                                                                            +"</div>");
                                                                                                    
                                                                                                }
                                                                                                   
                                                                                                   
                                                                                            out.print("</form>");

                                                                                     String ridi1;                         
                                                                                     String accept1,decline1;
                                                                                      for(int i=0;i<size;i++)
                                                                                      {
                                                                                          
                                                                                           accept1 ="accept1_" + String.valueOf(i);
                                                                                           decline1 ="decline1_" + String.valueOf(i);
                                                                                          
                                                                                          if(request.getParameter(accept1)!=null)
                                                                                          {


                                                                                              try{
                                                                                                ridi1=reqid_array1[i].toString();

                                                                                                String query3="update friendstable set status=? where reqid=?";
                                                                                                PreparedStatement myst3=myconnection.prepareStatement(query3);
                                                                                                myst3.setString(1, "approved");
                                                                                                myst3.setString(2, ridi1);
                                                                                                if(myst3.executeUpdate()>0)
                                                                                                {
                                                                                                     //response.sendRedirect("friend_request_list.jsp");

                                                                                                }
                                                                                         }
                                                                                       catch(Exception e)
                                                                                       {
                                                                                        out.print("Error in query"+e.getMessage());   
                                                                                       }
                                                                                          }
                                                                                          if(request.getParameter(decline1)!=null)
                                                                                          {

                                                                                      try{
                                                                                                        ridi1=reqid_array1[i].toString();

                                                                                                                    String query4="delete from friendstable where reqid=?";
                                                                                                                    PreparedStatement myst4=myconnection.prepareStatement(query4);
                                                                                                                    myst4.setString(1, ridi1);
                                                                                                                    if(myst4.executeUpdate()>0)
                                                                                                                    {
                                                                                                                        
                                                                                                                             //response.sendRedirect("friend_request_list.jsp");
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
	 <p>© 2017 Esteem. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
</div>	

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