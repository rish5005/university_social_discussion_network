<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
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
<title>Add Teacher</title>
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
								<li><a href="add_admin.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Admin</a></li>
                                                                <li><a href="add_dept.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Department</a></li>
                                                                <li><a href="add_class.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Course</a></li>
                                                                <li><a href="add_section.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Section</a></li>
                                                                <li><a href="add_teacher.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Teacher</a></li>
                                                                <li><a href="add_subjects.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Add Subjects</a></li>
                                                                <li><a href="assign_teachers.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>Assign Teachers</a></li>
                                                                <li><a href="showdept.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Department</a></li>
                                                                <li><a href="showcourse.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Course</a></li>
                                                                <li><a href="showsection.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Section</a></li>
                                                                <li><a href="showteacher.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Teacher</a></li>
								<li><a href="showsubject.jsp"> <i class="fa fa-file-text-o" aria-hidden="true"></i>View Subjects</a></li>
								</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
				<li class="second logo"><h1><a href="admin_mp.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Home</a></h1></li>
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
                                                                                    <li> <a href="mypost_a.jsp"><i class="fa fa-user"></i> My Posts</a> </li>
                                                                                    <li> <a href="update_a.jsp"><i class="fa fa-user"></i> Update Profile</a> </li>
										    <li> <a href="changepassword_a.jsp"><i class="fa fa-cog"></i> Settings</a> </li> 
									            <li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
												</li>
									
						</ul>
				</li>
				<li >
				   
				</li>
				<li >
				   
				</li>
				<li >
				   </li>


				<li class="second w3l_search">
				 
						<form action="#" method="post">
							<input type="search" name="search" placeholder="Search here..." required="">
							<button class="btn btn-default" name="search_button" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
						</form>
                                    <%
                                        if(request.getParameter("search_button")!=null)
                                        {
                                            response.sendRedirect("search_people_a.jsp?sea="+request.getParameter("search"));
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
                                            <h3 >Add Teacher</h3>
                                           <div class="agile-validation agile_info_shadow">
								<div class="validation-grids widget-shadow" data-example-id="basic-forms"> 
									<div class="form-body form-body-info">
                                                                            <form method="post" enctype="multipart/form-data">
											<div class="form-group ">	
                                                                                            <select  id="deptbox" name="deptbox" class="form-control" required="" >
                                                                                                <option value=" ">Choose Department</option>
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

                                                                                                                        String query0="select * from depttable";
                                                                                                                        PreparedStatement myst0=myconnection.prepareStatement(query0);
                                                                                                                        ResultSet rs = myst0.executeQuery();
                                                                                                                        if(rs.next())
                                                                                                                        {
                                                                                                                            do{
                                                                                                                            out.print("<option value="+rs.getString("deptid")+">"+rs.getString("deptname")+"</option>");
                                                                                                                            }while(rs.next());
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
                                                                                            </select>
                                                                                                </div>
                                                                                    
                                                                                    
                                                                                    <div class="form-group ">
                                                                                            
												<input type="text" class="form-control" name="name" placeholder="Full Name" required="">
											</div>
                                                                                            
                                                                                    
                                                                                        <div class="form-group ">
                                                                                            
												<input type="email" class="form-control" name="email" placeholder="Email" required="">
											</div>
                                                                                            
                                                                                            <div class="form-group ">
                                                                                            
												<input type="password" class="form-control" name="pass" placeholder="Password" required="">
											</div>
                                                                                            
                                                                                            <div class="form-group ">
                                                                                            
												<input type="password" class="form-control" name="pass2" placeholder="Confirm Password" required="">
											</div>
                                                                                            <div class="form-group ">
                                                                                            
												<input type="text" class="form-control" name="quali" placeholder="Highest Qualification" required="">
											</div>
                                                                                            
                                                                                    <div class="form-group ">
                                                                                            
												<input type="number" class="form-control" name="phno" placeholder="Contact Number" required="">
											</div>
                                                                                            <div class="form-group ">
                                                                                            
												<input type="Date" class="form-control" name="dob" placeholder="Contact Number" max="<%
                                                                        SimpleDateFormat mydate=new SimpleDateFormat("yyyy-MM-dd");
                                                                        java.util.Date dat=new java.util.Date();
                                                                        out.print(mydate.format(dat));%>"required="">
											</div>
                                                                                        <div class="form-group ">
                                                                                            <div id='desig'>
                                                                                            <select class="form-control" id="type" name="type"><option>Choose Designation</option></select>
                                                                                            </div>
                                                                                        </div>
                                                                                        <br>
                                                                                    <div class="form-group">
                                                                                            
												<input type="file" class="form-control" name="image">
											</div>
                                                                                            
                                                                                            <div class="form-group">
												<div class="radio">
													<label>
													  <input type="radio" name="gender" value="female"required="">
													  Female
													</label>
												</div>
												<div class="radio">
													<label>
													<input type="radio" name="gender" value="male" required="">
													Male
													</label>
												</div>
											</div>
                                                                                        
                                                                                            
                                                                                            <div class="form-group">
												<input type="submit" class = "btn btn-success" name="sub" value="Submit">
											</div>
											
										</form>
                                                                            <%
         
           String deptid="", name="",email="",password="",pass5="",quali="",phno="",dob="",gender="",image="",desig="",path1;
           boolean successful=true;
              boolean isMultipart = ServletFileUpload.isMultipartContent(request);
              
    if(isMultipart)
    {
   
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List<FileItem> items = null;
   try
   {
   items = upload.parseRequest(request);
   }
   catch (FileUploadException e)
   {
       e.printStackTrace();
   }
   
   for(FileItem myitem:items)
   {
        if (myitem.isFormField())
        {
            String itemName1 = myitem.getFieldName();
            String value=myitem.getString();
          
            if(itemName1.equals("deptbox")) //control's name - textbox name
           {
                deptid=value;
           }
            else if(itemName1.equals("name")) //control's name - textbox name
           {
                name=value;
            }
            else if(itemName1.equals("email")) //control's name - textbox name
           {
                email=value;
            }
            else if(itemName1.equals("pass")) //control's name - textbox name
           {
                password=value;
            }
            else if(itemName1.equals("pass2")) //control's name - textbox name
           {
                pass5=value;
            }
            else if(itemName1.equals("quali")) //control's name - textbox name
           {
                quali=value;
            }
            else if(itemName1.equals("phno")) //control's name - textbox name
           {
                phno=value;
            }
            else if(itemName1.equals("dob")) //control's name - textbox name
           {
                dob=value;
            }
            else if(itemName1.equals("gender")) //control's name - textbox name
           {
                gender=value;
            }
            else if(itemName1.equals("type")) //control's name - textbox name
           {
                desig =value;
            }
            else if(itemName1.equals("type")) //control's name - textbox name
           {
                desig=value;
            }
         }
        else
        {
                String type=myitem.getContentType();
                long size=myitem.getSize()/1024; //kbytes
                
                if(size==0)
                {
                    image="default.png";
                }
                else if((type.equals("image/pjpeg") || type.equals("image/jpeg")
                        || type.equals("image/png") || type.equals("image/x-png")
                        || type.equals("image/gif")) && size<6000)
                    {
                        
               
               image=new java.util.Date().getTime()+myitem.getName();
               path1=config.getServletContext().getRealPath("/") + "teacher_pics\\" + image;
                File savefile=new File(path1);
                myitem.write(savefile);    
                
               
                }
                else
                    {
                        successful=false;
                        out.println("Sorry only pictures of less than 6000kb are allowed to upload");
                    }
                        
        }
   
  }
   
   if(successful==true)
   {
       
       try{
           String user4 = "root";
        String pass4 = "";
        String path4 = "jdbc:mysql://localhost/";
        String place4 = "community";
       
                        Connection myconnection;
                        Class.forName("com.mysql.jdbc.Driver");
                        myconnection=DriverManager.getConnection(path4+place4,user4,pass4);
                        try{

                           if(password.equals(pass5))
                         {
                    try{
                        String user2 = "root";
        String pass3 = "";
        String path2 = "jdbc:mysql://localhost/";
        String place2 = "community";
       
                        Class.forName("com.mysql.jdbc.Driver");
                        myconnection=DriverManager.getConnection(path2+place2,user2,pass3);
                        try{

                            String query01="insert into teachertable(deptid,name,email,password,qualification,phone,dob,gender,image,desig) values(?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement myst01=myconnection.prepareStatement(query01);
                            myst01.setString(1, deptid);
                            myst01.setString(2, name);
                            myst01.setString(3, email);
                            myst01.setString(4, password);
                            myst01.setString(5, quali);
                            myst01.setString(6, phno);
                            myst01.setString(7, dob);
                            myst01.setString(8, gender);
                            myst01.setString(9, image);
                            myst01.setString(10,desig);
                            if(myst01.executeUpdate()>0)
                            {
                                out.print("Data Inserted Successfully");

                            }
                            else
                            {
                                out.print("Insertion Unsuccessfull");

                            }
                        }
                        catch(Exception e)
                        {
                         out.print("Error in query01"+e.getMessage());
                        }
                    }
                    catch(Exception e)
                        {
                         out.print("Error in connection"+e.getMessage());
                        }
       }
       else
       {
           out.print("Password Mismatch");
       }
                                
                                
                                
                                
                                
                                
                                

                            
                        }
                        catch(Exception e)
                        {
                         out.print("Error in query12"+e.getMessage());
                        }
                    }
                    catch(Exception e)
                        {
                         out.print("Error in connection12"+e.getMessage());
                        }
       
       
   
   }
    }
        %>
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
									</div>
								</div>
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


<script type="text/javascript" src="jquery/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#deptbox').change(function(){
            
            eml=$(this).val();
           
            $.ajax({
               url : 'ajax2.jsp',
               type : 'post',
               data :{"desig" : eml},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   //$('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#desig').html(result)
               },
               error :  function(e)
               {
                   $('#desig').html("error"+e)
               }
            })
        })
    })
    </script>



</body>
</html>