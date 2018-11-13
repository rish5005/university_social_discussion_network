<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
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
							<h1>Forgot Password</h1> 
							<div class="login-agileits-top"> 	
								<form method="post"> 
									<input type="text" class="name" name="email" placeholder="Enter Your Email" required=""/>
									<br></br>
                                                                        <input type="submit" name="reg2" value="Confirm"> 
                                                                        
                                                                        <%
                                                                            int b=(int)(Math.random()*10000);
                        int c=(int)(Math.random()*100);
                        int vi=(int)b*(int)(Math.random()*124)*c + b*(int)(Math.random()*100)+b*(int)(Math.random()*10)+ b + c;
                        int o=vi;
                        String otp=String.valueOf(o);
                        
                                                    
                                                                           
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
                                 
                                 
                                          String query1="update admintable set password=? where email=?";
                 PreparedStatement myst1=myconnection.prepareStatement(query1);
                 myst1.setString(1,otp);
                 myst1.setString(2,request.getParameter("email"));
                 
                 if(myst1.executeUpdate()>0)
                 {
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     String to=request.getParameter("email");
                        
                        
                        
                                                            Properties props = new Properties();
                                    props.put("mail.smtp.host", "smtp.gmail.com");
                                    props.put("mail.smtp.socketFactory.port", "465");
                                    props.put("mail.smtp.socketFactory.class",
                                    "javax.net.ssl.SSLSocketFactory");
                                    props.put("mail.smtp.auth", "true");
                                    props.put("mail.smtp.port", "465");

                                    Session session2 = Session.getInstance(props,
                                    new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                    return new PasswordAuthentication("webkiosk.gndu@gmail.com","Webkiosk.gndu.password");
                                    }
                                    });
                                    try {
                                    Message message = new MimeMessage(session2);
                                    message.addHeader("Content-type", "text/html; charset=UTF-8");
                                    message.setFrom(new InternetAddress("webkiosk.gndu@gmail.com"));
                                    message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(to));
                                    message.setSubject("GNDU WebKiosk Account Signup (donotreply)");

                                    message.setText( "\n\nPassword Has Been Updated To"+ otp + "\n\nPlease Fill This For  Login\n\nHave A Nice Day!");




                                    Transport.send(message);


                                    }
                                    catch(Exception e) 
                                    {
                                    out.println("Mail does not works");
                                    }
                        
                        
                     
                     response.sendRedirect("index.jsp");
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                 }
                 else
                 {
                     
                     String query2="update teachertable set password=? where email=?";
                 PreparedStatement myst2=myconnection.prepareStatement(query2);
                 myst2.setString(1,otp);
                 myst2.setString(2,request.getParameter("email"));
                 
                 if(myst2.executeUpdate()>0)
                 {
                     
                     
                     String to=request.getParameter("email");
                     
                                            Properties props = new Properties();
                                    props.put("mail.smtp.host", "smtp.gmail.com");
                                    props.put("mail.smtp.socketFactory.port", "465");
                                    props.put("mail.smtp.socketFactory.class",
                                    "javax.net.ssl.SSLSocketFactory");
                                    props.put("mail.smtp.auth", "true");
                                    props.put("mail.smtp.port", "465");

                                    Session session2 = Session.getInstance(props,
                                    new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                    return new PasswordAuthentication("webkiosk.gndu@gmail.com","Webkiosk.gndu.password");
                                    }
                                    });
                                    try {
                                    Message message = new MimeMessage(session2);
                                    message.addHeader("Content-type", "text/html; charset=UTF-8");
                                    message.setFrom(new InternetAddress("webkiosk.gndu@gmail.com"));
                                    message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(to));
                                    message.setSubject("GNDU WebKiosk Account Signup (donotreply)");

                                    message.setText( "\n\nPassword Has Been Updated To"+ otp + "\n\nPlease Fill This For  Login\n\nHave A Nice Day!");




                                    Transport.send(message);


                                    }
                                    catch(Exception e) 
                                    {
                                    out.println("Mail does not works");
                                    }
                     
                     
                     
                     
                     
                     response.sendRedirect("index.jsp");
                 }
                 else
                 {
                     String query3="update rusers set password=? where email=?";
                 PreparedStatement myst3=myconnection.prepareStatement(query3);
                 myst3.setString(1,otp);
                 myst3.setString(2,request.getParameter("email"));
                 
                 if(myst3.executeUpdate()>0)
                 {
                     
                     
                     
                     
                     String to=request.getParameter("email");
                     
                     
                     
                     
                                            Properties props = new Properties();
                                    props.put("mail.smtp.host", "smtp.gmail.com");
                                    props.put("mail.smtp.socketFactory.port", "465");
                                    props.put("mail.smtp.socketFactory.class",
                                    "javax.net.ssl.SSLSocketFactory");
                                    props.put("mail.smtp.auth", "true");
                                    props.put("mail.smtp.port", "465");

                                    Session session2 = Session.getInstance(props,
                                    new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                    return new PasswordAuthentication("webkiosk.gndu@gmail.com","Webkiosk.gndu.password");
                                    }
                                    });
                                    try {
                                    Message message = new MimeMessage(session2);
                                    message.addHeader("Content-type", "text/html; charset=UTF-8");
                                    message.setFrom(new InternetAddress("webkiosk.gndu@gmail.com"));
                                    message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(to));
                                    message.setSubject("GNDU WebKiosk Account Signup (donotreply)");

                                    message.setText( "\n\nPassword Has Been Updated To"+ otp + "\n\nPlease Fill This For  Login\n\nHave A Nice Day!");




                                    Transport.send(message);


                                    }
                                    catch(Exception e) 
                                    {
                                    out.println("Mail does not works");
                                    }
                     response.sendRedirect("index.jsp");
                 }
                 else
                 {
                     
                     out.print("Your Email Is Not Registered With Us");
                 }
                     
                 }
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
