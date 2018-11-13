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
<title>Register</title>
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
<!--font awesome file-->
<link href="css_signup/font-awesome.css" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main --> 
        <h1>Guru Nanak Dev University Webkiosk</h1>
	<div class="main-agileinfo slider ">
		<div class="items-group">
			<div class="item agileits-w3layouts">
				<div class="block text main-agileits"> 
					<span class="circleLight"></span> 
					<!-- login form -->
					<div class="login-form loginw3-agile"> 
						<div class="agile-row">
							<h1>Register</h1> 
							<div class="login-agileits-top"> 	
								<form method="get"> 
									<p>User Name </p>
									<input id="email" type="email" class="name" name="uname" placeholder="Email" required=""/>
									<div id="emarea"></div>
                                                                        <p>Name </p>
									<input type="text" class="name" name="name" placeholder="Full name" required=""/>
                                                                        <p>Roll Number</p>
									<input id="rno" type="text" class="name" name="rno" placeholder="Roll Number" required=""/>
                                                                        <div id="rnoarea"></div>
                                                                        <p>Password</p>
									<input type="password" class="password" name="password1" placeholder="Password"required=""/>  
									<p>Confirm Password</p>
                                                                        <input type="password" class="password" name="password2" placeholder="Confirm Password"required=""/>  
                                                                        <br></br>
                                                                        <input type="submit" name="reg" value="Register"> 
                                                                        
                                                                        <%
           String pass1=request.getParameter("password1");
           String pass2=request.getParameter("password2");
        String em = request.getParameter("uname");
        String rn = request.getParameter("rno");
        if(request.getParameter("reg")!=null){
       if(pass1.equals(pass2))
       {
           
         String user = "root";
         String pass = "";
         String path = "jdbc:mysql://localhost/";
         String place = "community";
         try{
             Connection myconnection;
             Class.forName("com.mysql.jdbc.Driver");
             myconnection=DriverManager.getConnection(path+place,user,pass);
             try{
                 
                 String query1="select * from rusers where rno=?";
                 PreparedStatement myst1=myconnection.prepareStatement(query1);
                 myst1.setString(1,rn);
                 ResultSet myresult1=myst1.executeQuery();
                 if(myresult1.next())
                 {
                     out.print("Sorry!This Roll Number Is Already Registerd");
                 }
                 else
                 {
                    String query2="select * from rusers where email=?";
                 PreparedStatement myst2=myconnection.prepareStatement(query2);
                 myst2.setString(1,em);
                 ResultSet myresult2=myst2.executeQuery();
                 if(myresult2.next())
                    {
                         out.print("Sorry!This Email Id Is Already Registerd");
                    
                    }
                 else
                    {
                        session.setAttribute("email", request.getParameter("uname"));
                        session.setAttribute("name", request.getParameter("name"));
                        int b=(int)(Math.random()*10000);
                        int c=(int)(Math.random()*100);
                        int vi=(int)b*(int)(Math.random()*124)*c + b*(int)(Math.random()*100)+b*(int)(Math.random()*10)+ b + c;
                        int o=vi;
                        String otp=String.valueOf(o);
                        session.setAttribute("otp", otp);
                        session.setAttribute("pass",request.getParameter("password1") );
                        session.setAttribute("rno",request.getParameter("rno") );
                        
                        String to=request.getParameter("uname");
                        
                        
                        
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

                                    message.setText("Hey,  " + request.getParameter("name") + "\n\nOne Time Password For Your Signup At Gndu's Webkiosk Platform Is "+ otp + "\n\nPlease Fill This OTP To Complete Your Registeration\n\nHave A Nice Day!");




                                    Transport.send(message);


                                    }
                                    catch(Exception e) 
                                    {
                                    out.println("Mail does not works");
                                    }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        response.sendRedirect("otp_page.jsp");

                    }
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
}
       else
         {
                out.print("<h3 class='mera'>Password Mismatch</h3>");
            
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
<script type="text/javascript" src="jquery/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#email').blur(function(){
            
            eml=$(this).val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"email" : eml},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   $('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#emarea').html(result)
               },
               error :  function(e)
               {
                   $('#emarea').html("error"+e)
               }
            })
        })
    })
  
    
    

</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#rno').blur(function(){
            
            rn=$(this).val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"rno" : rn},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   $('#rnoarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#rnoarea').html(result)
               },
               error :  function(e)
               {
                   $('#rnoarea').html("error"+e)
               }
            })
        })
    })
</script>
</html>