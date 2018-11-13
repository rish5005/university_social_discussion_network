<%@page import="java.sql.*"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>OTP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shadow Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css_signup/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files --> 
<!-- web font --> 
<link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main --> 
	<div class="main-agileinfo slider ">
		<div class="items-group">
			<div class="item agileits-w3layouts">
				<div class="block text main-agileits"> 
					<span class="circleLight"></span> 
					<!-- login form -->
					<div class="login-form loginw3-agile"> 
						<div class="agile-row">
							<h1>Enter OTP</h1> 
							<div class="login-agileits-top"> 	
								<form method="post"> 
									<input type="password" class="name" name="otp" placeholder="Check Your Email" required=""/>
									<br></br>
                                                                        <input type="submit" name="reg2" value="Confirm"> 
                                                                        
                                                                        <%
                                                    
                                                                           
               if(request.getParameter("reg2")!=null)
                {                                                            
                String user = "root";
                String pass = "";
                String path = "jdbc:mysql://localhost/";
                String place = "community";
                           try{
                                 Connection myconnection;
                                 Class.forName("com.mysql.jdbc.Driver");
                                 myconnection=DriverManager.getConnection(path+place,user,pass);
                                 String opt=String.valueOf(session.getAttribute("otp"));
                                 String p=String.valueOf(session.getAttribute("pass"));
                                 String r=String.valueOf(session.getAttribute("rno"));
                                 String u=String.valueOf(session.getAttribute("email"));
                                 String n=String.valueOf(session.getAttribute("name"));
                                 
                                 
                                 
                                 
                                          if(opt.equals(request.getParameter("otp")))
                                          {
                                              try
                                              {
                                                  String query2="insert into rusers values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                                                  PreparedStatement myst2=myconnection.prepareStatement(query2);
                                                  myst2.setString(1, u);
                                                  myst2.setString(2, p);
                                                  myst2.setString(3, r);
                                                  myst2.setString(4, n);
                                                  myst2.setString(5, "");
                                                  myst2.setString(6,"");
                                                  myst2.setString(7,"");
                                                  myst2.setString(8,"");
                                                  myst2.setString(9,"");
                                                  myst2.setString(10,"");
                                                  myst2.setString(11,"");
                                                 myst2.setString(12,"");
                                                 myst2.setString(13,"");
                                                 myst2.setString(14,"");
                                                  if(myst2.executeUpdate()>0)
                                                  {
                                                    
                                                      session.invalidate();
                                                   response.sendRedirect("index.jsp");
                                                   
                                                  }
                                              }
                                              catch(Exception e)
                                              {
                                                  out.print("Error in insertion query"+e.getMessage());
                                              }
                                          }
                                          else
                                          {
                                              out.print("Wrong Otp");
                                          }
                                     }
                                 
                                 
             
                              
                           catch(Exception e)
                              {
                                out.print("<h2 class='mera'>Error in Connection</h2>");
                              }
                }
       
       
        
                                                                        %>
                                                                </form> 						
							</div> 
						</div>  
					</div>   
				</div>
				<div class="w3lsfooteragileits">
					<p> &copy; 2017 Shadow Login Form. All Rights Reserved | Design by <a href="http://w3layouts.com" target="=_blank">W3layouts</a></p>
				</div> 
			</div>   
		</div>
	</div>	 
	<!-- //main --> 
</body>
</html>
