<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>

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


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-comments.js"></script>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif;}
li.second.logo h1{
        line-height:42px;
    }
    .midu{
       text-align: center;
    }
</style>

<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet"></head>
<body>
    <script type="text/javascript" src="jquery/jquery.js"></script>
    <script src="jquery/jquery.fancybox.min.js"></script>
    
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
								<li><a href="add_assignment.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Assignment</a></li>
							<li><a href="add_marks.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Marks</a></li>
                                                                <li><a href="update_marks.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Update Marks</a></li>
                                                        <li><a href="view_assignment.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Assignments</a></li>
                                                        </ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
				<li class="second logo"><h1><a href="teacher_mp.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Home</a></h1></li>
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
											<li> <a href="mypost_t.jsp"><i class="fa fa-user"></i> My Post</a> </li> 
											
                                                                                        <li> <a href="changepassword_t.jsp"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
									
						</ul>
				</li>
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

                String q="SELECT COUNT(notfid) as total from adminteachernotificationtable where teacherid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                mystatement.setString(1, session.getAttribute("teach_id").toString());
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

                String q="select * from adminteachernotificationtable,admintable,posttable where adminteachernotificationtable.adminid=admintable.email and adminteachernotificationtable.postid=posttable.postid and teacherid=?";
                PreparedStatement mystatement=myconnection.prepareStatement(q);
                mystatement.setString(1, session.getAttribute("teach_id").toString());
                ResultSet result = mystatement.executeQuery();
                if(result.next())
                { 
                    do{
                         out.print("<li>"
                                + "<a href='comment_t.jsp?pid="+ result.getString("postid") +"'>"
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
				<li >
				   <!--<ul class="top_dp_agile ">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Your Messages</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/a3.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>John Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>3 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/a1.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>Jasmin Leo</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>2 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/a2.jpg" alt=""></div>
											   <div class="notification_desc">
											     <h6>James Smith</h6>
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all Messages</a>
												</div> 
											</li>
										</ul>
									</li>
									
						</ul>-->
				</li>
				<li >
				   <!--<ul class="top_dp_agile ">
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
								</ul>-->
				</li>


				<li class="second w3l_search">
				 
								<form action="#" method="post">
							<input type="search" name="search" placeholder="Search here..." required="">
							<button class="btn btn-default" name="search_button" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
						</form>
                                    <%
                                        if(request.getParameter("search_button")!=null)
                                        {
                                            response.sendRedirect("search_people_t.jsp?sea="+request.getParameter("search"));
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
         <%
                if(request.getParameter("rno")!=null)
                {
                    String em="",n="",i="",bod="",d="";
                   try{
                           String user4 = "root";
                            String pass4 = "";
                            String path4 = "jdbc:mysql://localhost/";
                            String place4 = "community";

                            Connection myconnection;
                            Class.forName("com.mysql.jdbc.Driver");
                            myconnection=DriverManager.getConnection(path4+place4,user4,pass4);

                           try{

                               String q112="select * from rusers, depttable where depttable.deptid=rusers.dept";
                               PreparedStatement mystatement112=myconnection.prepareStatement(q112);
                               ResultSet myres112 = mystatement112.executeQuery();
                               if(myres112.next())
                               {
                                   do{
                                   if(myres112.getString("rno").equals(request.getParameter("rno")))
                                   {
                                       em=myres112.getString("email");
                                       n=myres112.getString("name");
                                       i=myres112.getString("image");
                                       bod=myres112.getString("dob");
                                       d=myres112.getString("deptname");
                                       break;
                                       
                                   }
                                   }while(myres112.next());
                                   
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
              out.print("<h4 class='w3-center'>"+n+"</h4>");
              out.print("<p class='w3-center'><img src='teacher_pics/"+i+"' class='w3-circle' style='height:106px;width:106px' </p>");
              out.print("<hr>");
               out.print("<p><i class='fa fa-university fa-fw w3-margin-right w3-text-theme'></i>"+d+"</p>"
         +"<p><i class='fa fa-envelope fa-fw w3-margin-right w3-text-theme'></i>"+ em +"</p>"
         +"<p><i class='fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme'></i>"+bod+"</p>");
                }
            %>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
         <!-- <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Groups</button>
          <div id="Demo1" class="w3-hide w3-container">
            <p>Some text..</p>
          </div>
          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Events</button>
          <div id="Demo2" class="w3-hide w3-container">
            <p>Some other text..</p>
          </div>
          --><button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw w3-margin-right"></i> Photos</button>
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         <br>
           
         <%
               int count=0,flag=0 ;
               
               
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
                mystatement.setString(2, request.getParameter("rno") );
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
                                 flag=1;
                                 
                                 out.print("<div class='w3-half'>"
                                          +"<a data-fancybox='images'   href='postpics/"+myresult2.getString("postpic")+"'><img src='postpics/"+myresult2.getString("postpic")+" ' style='width:100%' class='w3-margin-bottom'></a>"
                                          +"</div>");
                                 
                             
                             }while(myresult2.next());
                             
                         }
                         
                    }while(myresult.next());
                    
                     if(flag==0)
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
    <div class="w3-col m7">
    
      
<%       
    String dipti="";
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
            String q="select * from posttable where userid=? and type=? order by postid desc";
            PreparedStatement mystatement=myconnection.prepareStatement(q);   
           mystatement.setString(1,request.getParameter("rno") );
                            mystatement.setString(2,"student");
            
            ResultSet myresult = mystatement.executeQuery();
            if(myresult.next())
            { 
                do
                {
                    try{
                            String q2="select * from imagetable where postid=?";
                            PreparedStatement mystatement2=myconnection.prepareStatement(q2);
                            mystatement2.setString(1, myresult.getString("postid"));
                            ResultSet myresult2 = mystatement2.executeQuery();
                            if(myresult2.next())
                            {
                                try
                                    {
                                        String q3="SELECT COUNT(imageid) as totalpics from imagetable where postid=?";
                                        PreparedStatement mystatement3=myconnection.prepareStatement(q3);
                                        mystatement3.setString(1, myresult.getString("postid"));
                                        ResultSet myresult3 = mystatement3.executeQuery();
                                        if(myresult3.next())
                                        {
                                            if(myresult3.getInt("totalpics")==1)
                                            {
                                                if(myresult.getString("type").equals("admin"))
                                                {
                                                    String q4="select * from admintable where email=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                        + "<img src='teacher_pics/"+ myresult4.getString("image") +"' alt='Avatar' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                        + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                        + "<h4>"+myresult4.getString("Name")+" (Admin)</h4><br>"
                                                        + "<hr class='w3-clear'>"
                                                        + "<p>"+myresult.getString("message")+"</p>"
                                                         + "<div class='w3-row-padding' style='margin:0 -16px'>");
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            out.print("<a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic")+"' style='width:100%' class='w3-margin-bottom'></a>");
                                                        }
                                                        
                                                        out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                        out.print("</div> "); 
                                                    }
                                                }
                                                else if(myresult.getString("type").equals("student"))
                                                {
                                                    String q4="select * from rusers,depttable where rusers.dept=depttable.deptid and  rno=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                        + "<img src='teacher_pics/"+ myresult4.getString("image") +"' alt='Avatar' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                        + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                        + "<h4>"+myresult4.getString("Name")+"</h4><br>"
                                                        +" <br><hr class='w3-clear'>"
                                                        + "<p>"+myresult.getString("message")+"</p>"
                                                         + "<div class='w3-row-padding' style='margin:0 -16px'>");
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            out.print("<a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic")+"' style='width:100%' class='w3-margin-bottom'></a>");
                                                        }
                                                        
                                                        out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                        
                                                        out.print("</div> "); 
                                                    }
                                                }
                                                else if(myresult.getString("type").equals("teacher"))
                                                {
                                                    String q4="select * from teachertable,depttable where teachertable.deptid=depttable.deptid and teacherid=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                        + "<img src='teacher_pics/"+ myresult4.getString("image") +"' alt='Avatar' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                        + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                        + "<h4>"+myresult4.getString("Name")+" (Teacher)</h4><br>"
                                                        + " <br><hr class='w3-clear'>"
                                                        + "<p>"+myresult.getString("message")+"</p>"
                                                         + "<div class='w3-row-padding' style='margin:0 -16px'>");
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            out.print("<a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic")+"' style='width:100%' class='w3-margin-bottom'></a>");
                                                        }
                                                        
                                                        out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                         if(myresult.getString("userid").equals(session.getAttribute("teach_id").toString()) && myresult.getString("type").equals("teacher"))
                                                        {
                                                            out.print("<a class='mylink' id='" + myresult.getString("postid") + "' href='delcat.jsp'><button type='button' class='w3-button w3-theme-d1 w3-margin-bottom'><i class=' fa fa-trash' saria-hidden='true'></i> &nbsp;Delete</button></a> ");
                                                        }
                                                        out.print("</div> "); 
                                                    }    
                                                }
                                            }
                                            else if(myresult3.getInt("totalpics")==2)
                                            {
                                                if(myresult.getString("type").equals("admin"))
                                                {
                                                    String q4="select * from admintable where email=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                       + "<img src='teacher_pics/"+myresult4.getString("image")+"' alt='pic' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                       + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                       + "<h4>"+myresult4.getString("name") +" (Admin)</h4><br>"
                                                       + "<hr class='w3-clear'>"
                                                       + "<p>"+myresult.getString("message")+"</p>"
                                                       + "<div class='w3-row-padding' style='margin:0 -16px'>");
                                                        
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            do{
                                                            out.print("<div class='w3-half'><a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic") +"' style='width:100%' alt='postpics' class='w3-margin-bottom'></a></div>");
                                                            }while(myresult5.next());
                                                        }
                                                        
                                                       out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a></div>");
                                                       
                                                    }                         
                                                }
                                                else if(myresult.getString("type").equals("student"))
                                                {
                                                    String q4="select * from rusers,depttable where rusers.dept=depttable.deptid and  rno=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                       + "<img src='teacher_pics/"+myresult4.getString("image")+"' alt='pic' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                       + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                       + "<h4>"+myresult4.getString("name") +"</h4><br>"
                                                       + " <br><hr class='w3-clear'>"
                                                       + "<p>"+myresult.getString("message")+"</p>"
                                                       + "<div class='w3-row-padding' style='margin:0 -16px'>");
                                                        
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            do{
                                                            out.print("<div class='w3-half'><a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic") +"' style='width:100%' alt='postpics' class='w3-margin-bottom'></a></div>");
                                                            }while(myresult5.next());
                                                        }
                                                        
                                                       out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                       out.print("</div> "); 
                                                    }
                                                }
                                                 else if(myresult.getString("type").equals("teacher"))
                                                {
                                                    String q4="select * from teachertable,depttable where teachertable.deptid=depttable.deptid and teacherid=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                       + "<img src='teacher_pics/"+myresult4.getString("image")+"' alt='pic' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                       + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                       + "<h4>"+myresult4.getString("name") +" (Teacher)</h4><br>"
                                                       +" <br><hr class='w3-clear'>"
                                                       + "<p>"+myresult.getString("message")+"</p>"
                                                       + "<div class='w3-row-padding' style='margin:0 -16px'>");
                                                        
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            do{
                                                            out.print("<div class='w3-half'><a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic") +"' style='width:100%' alt='postpics' class='w3-margin-bottom'></a></div>");
                                                            }while(myresult5.next());
                                                        }
                                                        
                                                       out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                         if(myresult.getString("userid").equals(session.getAttribute("teach_id").toString()) && myresult.getString("type").equals("teacher"))
                                                        {
                                                            out.print("<a class='mylink' id='" + myresult.getString("postid") + "' href='delcat.jsp'><button type='button' class='w3-button w3-theme-d1 w3-margin-bottom'><i class=' fa fa-trash' saria-hidden='true'></i> &nbsp;Delete</button></a> ");
                                                        }
                                                        out.print("</div> ");  
                                                    }
                                                }
                                            }    
                                            else
                                            {
                                                if(myresult.getString("type").equals("admin"))
                                                {
                                                    String q4="select * from admintable where email=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                       + "<img src='teacher_pics/"+myresult4.getString("image")+"' alt='pic' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                       + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                       + "<h4>"+myresult4.getString("name") +" (Admin)</h4><br>"
                                                       + "<hr class='w3-clear'>"
                                                       + "<p>"+myresult.getString("message")+"</p>"
                                                       + "<div class='w3-row-padding' style='margin:0 -16px; width:710px; background-color:white; height:400px; overflow:scroll; overflow-y: scroll; overflow-x: hidden;'>");
                                                        
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            do{
                                                            out.print("<div class='w3-half'><a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic") +"' style='width:100%' alt='postpics' class='w3-margin-bottom'></a></div>    ");
                                                            }while(myresult5.next());
                                                        }
                                                        
                                                       out.print("</div>"
                                                      + "<br><a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  "
                                                      + "</div> "); 
                                                    }
                                                } 
                                                 else if(myresult.getString("type").equals("student"))
                                                {
                                                    String q4="select * from rusers,depttable where rusers.dept=depttable.deptid and  rno=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                       + "<img src='teacher_pics/"+myresult4.getString("image")+"' alt='pic' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                       + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                       + "<h4>"+myresult4.getString("name") +"</h4><br>"
                                                       + " <br><hr class='w3-clear'>"
                                                       + "<p>"+myresult.getString("message")+"</p>"
                                                       + "<div class='w3-row-padding' style='margin:0 -16px; width:710px; background-color:white; height:400px; overflow:scroll; overflow-y: scroll; overflow-x: hidden;'>");
                                                        
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            do{
                                                            out.print("<div class='w3-half'><a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic") +"' style='width:100%' alt='postpics' class='w3-margin-bottom'></a></div>    ");
                                                            }while(myresult5.next());
                                                        }
                                                        
                                                       out.print("</div>"
                                                      + "<br><a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                      out.print("</div> "); 
                                                    }
                                                }
                                                else if(myresult.getString("type").equals("teacher"))
                                                {
                                                    String q4="select * from teachertable,depttable where teachertable.deptid=depttable.deptid and teacherid=?";
                                                    PreparedStatement mystatement4=myconnection.prepareStatement(q4);
                                                    mystatement4.setString(1, myresult.getString("userid"));
                                                    ResultSet myresult4 = mystatement4.executeQuery();
                                                    if(myresult4.next())
                                                    {
                                                        out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                                       + "<img src='teacher_pics/"+myresult4.getString("image")+"' alt='pic' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                                       + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>"
                                                       + "<h4>"+myresult4.getString("name") +" (Teacher)</h4><br>"
                                                       + " <br><hr class='w3-clear'>"
                                                       + "<p>"+myresult.getString("message")+"</p>"
                                                       + "<div class='w3-row-padding' style='margin:0 -16px; width:710px; background-color:white; height:400px; overflow:scroll; overflow-y: scroll; overflow-x: hidden;'>");
                                                        
                                                        String q5="select * from imagetable where postid=?";
                                                        PreparedStatement mystatement5=myconnection.prepareStatement(q5);
                                                        mystatement5.setString(1, myresult.getString("postid"));
                                                        ResultSet myresult5 = mystatement5.executeQuery();
                                                        if(myresult5.next())
                                                        {
                                                            do{
                                                            out.print("<div class='w3-half'><a data-fancybox='images' data-trigger='images' href='postpics/"+myresult5.getString("postpic")+"'><img src='postpics/"+myresult5.getString("postpic") +"' style='width:100%' alt='postpics' class='w3-margin-bottom'></a></div>    ");
                                                            }while(myresult5.next());
                                                        }
                                                        
                                                       out.print("</div>"
                                                      + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                         if(myresult.getString("userid").equals(session.getAttribute("teach_id").toString()) && myresult.getString("type").equals("teacher"))
                                                        {
                                                            out.print("<a class='mylink' id='" + myresult.getString("postid") + "' href='delcat.jsp'><button type='button' class='w3-button w3-theme-d1 w3-margin-bottom'><i class=' fa fa-trash' saria-hidden='true'></i> &nbsp;Delete</button></a> ");
                                                        }
                                                        out.print("</div> "); 
                                                    }
                                                }
                                            }
                                            
                                        }
                                    }
                                   catch(Exception e)
                                   {
                                    out.print("Error in q3"+e.getMessage());
                                   } 
                            }
                            else
                            {
                                if(myresult.getString("type").equals("admin"))
                                         {
                                            String q3="select * from admintable where email=?";
                                            PreparedStatement mystatement3=myconnection.prepareStatement(q3);
                                            mystatement3.setString(1, myresult.getString("userid"));
                                            ResultSet myresult3 = mystatement3.executeQuery();
                                            if(myresult3.next())
                                            {
                                                out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                         + "<img src='teacher_pics/"+myresult3.getString("image")+"' alt='Avatar' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                         + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>");
                                                out.print( "<h4>"+myresult3.getString("name")+" (Admin)</h4><br>");
                                                out.print("<hr class='w3-clear'>");
                                                out.print("<p>"+myresult.getString("message")+"</p>"
                                              + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                            
                                            }   
                                         }
                                         else if(myresult.getString("type").equals("teacher"))
                                         {
                                            String q3="select * from teachertable,depttable where teachertable.deptid=depttable.deptid and teacherid=?";
                                            PreparedStatement mystatement3=myconnection.prepareStatement(q3);
                                            mystatement3.setString(1, myresult.getString("userid"));
                                            ResultSet myresult3 = mystatement3.executeQuery();
                                            if(myresult3.next())
                                            {
                                                out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                         + "<img src='teacher_pics/"+myresult3.getString("image")+"' alt='Avatar' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                         + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>");
                                                out.print( "<h4>"+myresult3.getString("name")+" (Teacher)</h4><br>");
                                                out.print("<hr class='w3-clear'>");
                                                out.print("<p>"+myresult.getString("message")+"</p>"
                                              + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");
                                                 if(myresult.getString("userid").equals(session.getAttribute("teach_id").toString()) && myresult.getString("type").equals("teacher"))
                                                {
                                                    out.print("<a class='mylink' id='" + myresult.getString("postid") + "' href='delcat.jsp'><button type='button' class='w3-button w3-theme-d1 w3-margin-bottom'><i class=' fa fa-trash' saria-hidden='true'></i> &nbsp;Delete</button></a> ");
                                                }
                                            }
                                         }
                                         else 
                                         {
                                            String q3="select * from rusers,depttable where rusers.dept=depttable.deptid and  rno=?";
                                            PreparedStatement mystatement3=myconnection.prepareStatement(q3);
                                            mystatement3.setString(1, myresult.getString("userid"));
                                            ResultSet myresult3 = mystatement3.executeQuery();
                                            if(myresult3.next())
                                            {
                                                    out.print("<div class='w3-container w3-card w3-white w3-round w3-margin'><br>"
                                             + "<img src='teacher_pics/"+myresult3.getString("image")+"' alt='Avatar' class='w3-left w3-circle w3-margin-right' style='width:60px'>"
                                             + "<span class='w3-right w3-opacity'>"+myresult.getString("time")+"</span>");
                                                    out.print( "<h4>"+myresult3.getString("name")+"</h4><br>");
                                                    out.print("<hr class='w3-clear'>");

                                                     out.print("<p>"+myresult.getString("message")+"</p>"
                                              + "<a href='comment_t.jsp?pid="+ myresult.getString("postid") +"'<button type='button' class='w3-button w3-theme-d2 w3-margin-bottom'><i class='fa fa-comment'></i> &nbsp;Comment</button></a>  ");

                                               
                                                       
                                             
                                            }
                                         }
                                     out.print("</div>");       
                            }
                        }
                        catch(Exception e)
                        {
                         out.print("Error in q"+e.getMessage());
                        }
                }while(myresult.next());
                out.print("<h3 class='tittle-w3l'>"
                            + "<span class='heading-style'>"
                            + " <i> </i> "
                            + " <i> </i> "
                            + " <i> </i> "
                            + "  </span></h3>");
            }
            else
            {
                out.print("<h3 class='midu'>This Person Has'nt Posted AnyThing<i class='fas fa-frown'></i></h3>");
            }
        }
        catch(Exception e)
        {
         out.print("Error in q"+e.getMessage());
        }
    }
    catch(Exception e)
    {
     out.print("Error in connection"+e.getMessage());
    }
%>             
      
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    <div class="w3-col m2">
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p>Upcoming Events:</p>
          <img src="images2/forest.jpg" alt="Forest" style="width:100%;">
          <p><strong>Holiday</strong></p>
          <p>Friday 15:00</p>
          <p><button class="w3-button w3-block w3-theme-l4">Info</button></p>
        </div>
      </div>
      <br>
      
      
      <br>
      
      
      
    <!-- End Right Column -->
    </div>
    
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




<script>
    var selDiv = "";
         var files="";
          
    document.addEventListener("DOMContentLoaded", init, false);
    
    function init() {
        document.querySelector('#files').addEventListener('change', handleFileSelect, false);
        selDiv = document.querySelector("#selectedFiles");
    }
        
    function handleFileSelect(e) {
        
        if(!e.target.files) return;
        
        selDiv.innerHTML = "";
        
        files = e.target.files;
        for(var i=0; i<files.length; i++) {
           
            var f = files[i];
             
            selDiv.innerHTML += f.name + "<br/>";
            
        }
        
        
    }
    
    
</script>
  <script>
$(document).ready(function() 
{
$(".mylink").click(function(e){
e.preventDefault();
var cid=$(this).attr("id")
var pr1=$(this).parent();//td

if(confirm("Are u sure you want to delete?"))
{
$.ajax(
{
url: 'deleteajax.jsp',
type: 'post',
data: {"deletepostid":cid},
beforeSend: function() 
{
pr1.append("<i class='fa fa-spinner fa-spin' aria-hidden='true'></i>")

},
success: function(reslt) 
{
if($.trim(reslt)=="success")
{
pr1.css({'Color':'#fb6c6c'});
pr1.fadeOut(600,function()
{
pr1.remove()
})
}
else
{
alert("Some Problem occured");
}
},
error: function(e) 
{
alert("Error in Ajax")
}
});
}

})
});
</script>
</body>
</html>