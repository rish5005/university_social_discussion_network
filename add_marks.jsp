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
<title>Add Subject</title>
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

                                <!--top three ends here-->

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
		<div class="clearfix"></div>
		<!-- //w3_agileits_top_nav-->
		<!-- /inner_content-->
				<div class="inner_content">
				    <!-- /inner_content_w3_agile_info-->
					<div class="inner_content_w3_agile_info">
                                            				
									
                                                                                            
                                                                                            <div class="inner_content_w3_agile_info two_in">
                                                                                                
						                                 
					  				<div class="agile-tables">
                                                                            <h4>Add Marks</h4>
                                                                            	<div class="w3l-table-info agile_info_shadow">
                                                                                    <form name="form1" id="form1" method="post">
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

                                                                                                                        String query0="select * from assignedsubjects where teacher=?";
                                                                                                                        PreparedStatement myst0=myconnection.prepareStatement(query0);
                                                                                                                        myst0.setString(1, session.getAttribute("teach_id").toString());
                                                                                                                        ResultSet rs = myst0.executeQuery();
                                                                                                                        if(rs.next())
                                                                                                                        {
                                                                                                                             Set<String> subname = new HashSet<String>();
                                                                                                                             Set<Integer> subcode = new HashSet<Integer>();
                                                                                                                            do{
                                                                                                                                String query01="select * from subtable where subid=?";
                                                                                                                        PreparedStatement myst01=myconnection.prepareStatement(query01);
                                                                                                                        myst01.setString(1, rs.getString("subject"));
                                                                                                                        ResultSet rs01 = myst01.executeQuery();
                                                                                                                        if(rs01.next()){
                                                                                                                                         //TreeSet<String> subname = new TreeSet<String>();
                                                                                                                                         subname.add(rs01.getString("subname")+"("+rs01.getString("type")+")");
                                                                                                                                         //TreeSet<Integer> subcode = new TreeSet<Integer>();
                                                                                                                                         subcode.add(Integer.parseInt(rs01.getString("subid")));
                                                                          
                                                                                                                            //out.print("<option value="+rs.getString("subject")+">"+rs01.getString("subname")+"("+rs01.getString("type")+" "+"Credits:-"+rs01.getString("credits")+")"+"</option>");
                                                                                                                            //out.print("<option value="+rs.getString("subject")+">"+rs.getString("subject")+"</option>");
                                                                                                                                       }
                                                                                                                             }while(rs.next());
                                                                                                                            
                                                                                                                            
                                                                                                                            Iterator<String> iterator1 = subname.iterator();
                                                                                                                            Iterator<Integer> iterator2 = subcode.iterator();
                                                                                                                                while (iterator1.hasNext() && iterator2.hasNext())
                                                                                                                                {
                                                                                                                                    out.print("<option value="+iterator2.next()+">"+iterator1.next()+"</option>");
                                                                                                                            //out.print("<option value="+rs.getString("subject")+">"+rs.getString("subject")+"</option>");
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
                                                                                        <select  id="section" name="section" class="form-control" required="" >
                                                                                                <option value="">Choose Section</option>
                                                                                        </select>
                                                                                        <br>
                                                                                        <select  id="examtype" name="examtype" class="form-control" required="" >
                                                                                                <option value="">Choose Exam</option>
                                                                                                <option>Minor-1 (20-Marks)</option>
                                                                                                <option>Minor-2 (20-Marks)</option>
                                                                                                <option>Quiz (10-Marks)</option>
                                                                                                <option>Major (50-Marks)</option>
                                                                                        </select>
                                                                                        <br>
                                                                                        
                                                                                        <div id="tab" name="tab">
                                                                                        </div>
                                                                                        
                                                                                        <div id="emarea" name="emarea">
                                                                                        </div>
                                                                                        
                                                                                        <div class="form-group">
												<input type="submit" class = "btn btn-success" name="sub" value="Submit">
											</div>
                                                                                        
										 </form>
                                                    <%
                                                        if(request.getParameter("sub")!=null)
                                                        {
                                                            int toprint=0;
                                                            int tot=Integer.parseInt(request.getParameter("tot"));
                                                            
                                                            for(int i=1;i<=tot;i++)
                                                            {
                                                            try{
                                Connection myconnection;
                                Class.forName("com.mysql.jdbc.Driver");
                                myconnection=DriverManager.getConnection(path+place,user,pass);
                                try{

                                    String query101="insert into markstable(rno,name,sec,sem,examtype,subid,marks) values(?,?,?,?,?,?,?)";
                                    PreparedStatement myst101=myconnection.prepareStatement(query101);
                                    myst101.setString(1, request.getParameter("rno"+i));
                                    myst101.setString(2, request.getParameter("name"+i));
                                    myst101.setString(3, request.getParameter("sec"+i));
                                    myst101.setString(4, request.getParameter("sem"+i));
                                    myst101.setString(5, request.getParameter("examtype"));
                                    myst101.setString(6, request.getParameter("subject"));
                                    myst101.setString(7, request.getParameter("marks"+i));
                                    if(myst101.executeUpdate()>0)
                                    {
                                      toprint=1;
                                        
                                    }
                                    else
                                    {
                                        toprint=2;
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
                                                            
                                                        }
                                                            if(toprint==1){
                                                                out.print("Data Inserted Successfully");
                                                            }
                                                            else
                                                            {
                                                                out.print("Somthing went wrong");
                                                            }


                                                        }
                                                    %>
                                                                                            
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
           
            $.ajax({
               url : 'ajax2.jsp',
               type : 'post',
               data :{"subject1010" : eml},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   //$('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
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
        $('#examtype').change(function(){
            
            eml=$(this).val();
           dept=$('#subject').val();
           section=$('#section').val();
            $.ajax({
               url : 'ajax2.jsp',
               type : 'post',
               data :{"section10101" : section, "subject10101" : dept, "examtype" : eml},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   $('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#emarea').html(" ");
                   $('#tab').html(result)
               },
               error :  function(e)
               {
                   $('#tab').html("error"+e)
               }
            })
        })
    })
  
    
    

 

</script>



</body>
</html>