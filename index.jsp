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
<title>Login</title>
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
    <h1>Guru Nanak Dev University Webkiosk</h1>
	
	<!-- main --> 
      <div class="main-agileinfo slider ">
		<div class="items-group">
			<div class="item agileits-w3layouts">
				<div class="block text main-agileits"> 
					<span class="circleLight"></span> 
					<!-- login form -->
                                        
					<div class="login-form loginw3-agile"> 
						<div class="agile-row">
							<div class="login-agileits-top"> 
                                                            <form method="post">
                                                                    <h1>Welcome</h1>
									<p>User Name </p>
									<input type="email" id="login" class="name" name="uname" placeholder="Email" required=""/>
									<p>Password</p>
									<input type="password" class="password" name="password1" placeholder="Password"required=""/>  
									<br>
                                                                        <input type="submit" name="sub"value="Login"> 
                                                                        <%!
                                                                            String s_admin_name,teach_name,s_name,s_rno,s_admin_email="",s_admin_pass="",s_admin_image="",s_email="",s_pass="",s_image="",s_teacher_email="",s_teacher_pass="",s_teacher_image="",teach_id="";
                                                                        %>
                                                                        <%
                   String em=request.getParameter("uname");
                   int admin_flag=0;
                   int stu_flag=0;
                   int teacher_flag=0;
                   String type="";
                   String pss=request.getParameter("password1");
                   if(request.getParameter("sub")!=null)
                          {
                            String user = "root";
                            String pass = "";
                            String path = "jdbc:mysql://localhost/";
                            String place = "community";
                            try
                               {
                                  Connection myconnection;
                                  Class.forName("com.mysql.jdbc.Driver");
                                  myconnection=DriverManager.getConnection(path+place,user,pass);
                                 try
                                   {
                                        String query="select * from admintable where email=?";
                                        PreparedStatement myst=myconnection.prepareStatement(query);
                                        myst.setString(1,em);
                                        ResultSet myresult=myst.executeQuery();
                                        if(myresult.next())
                                            {
                                               if(myresult.getString("password").equals(pss))
                                                   {
                                                   
                                                       admin_flag=1;
                                                       s_admin_email=myresult.getString("email");
                                                       s_admin_image=myresult.getString("image");
                                                       s_admin_pass=myresult.getString("password");
                                                       s_admin_name=myresult.getString("name");
                                                       
                                                   }
                                                else
                                                   {
                                                       admin_flag=2;
                                                       //out.print("admintable vicho kuch nhi aya");
                                                   }
                                            }
                                    }
                                   catch(Exception e)
                                    {
                                      out.print("Error in query"+e.getMessage());
                                    }
                                 
                                 
                                 
                                 
                                 
                               try
                                   {
                                        String query="select * from teachertable where email=?";
                                        PreparedStatement myst=myconnection.prepareStatement(query);
                                        myst.setString(1,em);
                                        ResultSet myresult=myst.executeQuery();
                                        if(myresult.next())
                                            {
                                               if(myresult.getString("password").equals(pss))
                                                   {
                                                   
                                                       teacher_flag=1;
                                                       s_teacher_email=myresult.getString("email");
                                                       s_teacher_image=myresult.getString("image");
                                                       s_teacher_pass=myresult.getString("password");
                                                       teach_id= myresult.getString("teacherid");
                                                       teach_name=myresult.getString("name");
                                                   }
                                                else
                                                   {
                                                       teacher_flag=2;
                                                       //out.print("admintable vicho kuch nhi aya");
                                                   }
                                            }
                                    }
                                   catch(Exception e)
                                    {
                                      out.print("Error in query"+e.getMessage());
                                    }
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                                       
                                
                                 
                              try{
                                String query1="select * from rusers where email=?";
                                PreparedStatement myst1=myconnection.prepareStatement(query1);
                                myst1.setString(1,em);
                                ResultSet myresult1=myst1.executeQuery();
                                if(myresult1.next())
                                 {

                                   if(myresult1.getString("password").equals(pss))
                                   {
                                       stu_flag=1;
                                     s_email=myresult1.getString("email");
                                     s_image=myresult1.getString("image");
                                     s_pass=myresult1.getString("password");
                                     s_rno=myresult1.getString("rno");
                                     s_name=myresult1.getString("name");
                                   }     
                                   else
                                   {
                                       stu_flag=2;
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
                        out.print("<h2>Error in Connection</h2>");
                        }
                            
                            if( admin_flag == 1 && stu_flag==1 && teacher_flag==1)
                                       {
                                            type="both";
                                            session.setAttribute("email", s_admin_email);
                                            session.setAttribute("image", s_admin_image);
                                            session.setAttribute("name", s_admin_name);
                                            response.sendRedirect("admin_mp.jsp");
                                           
                                       }
                                       else if(admin_flag == 1 && stu_flag==0 && teacher_flag==0)
                                       
                                       {
                                          type="admin";
                                           session.setAttribute("email", s_admin_email);
                                           session.setAttribute("image", s_admin_image);
                                           session.setAttribute("name", s_admin_name);
                                           response.sendRedirect("admin_mp.jsp");
                                       }
                                       
                                       
                                       else if(admin_flag == 0 && stu_flag==1 && teacher_flag==0)
                                       {
                                          type="student";
                                          try
                                              {
                                  Connection myconnection;
                                  Class.forName("com.mysql.jdbc.Driver");
                                  myconnection=DriverManager.getConnection(path+place,user,pass);
                                 try
                                   {
                                        String query12="select * from rusers where email=?";
                                        PreparedStatement myst12=myconnection.prepareStatement(query12);
                                        myst12.setString(1,em);
                                        ResultSet myresult12=myst12.executeQuery();
                                        if(myresult12.next())
                                            {
                                               if(myresult12.getString("fname").trim().equals(""))
                                               {
                                                   session.setAttribute("email", s_email);
                                                   response.sendRedirect("complete_details.jsp");
                                               }
                                               else
                                               {
                                                    session.setAttribute("email", s_email);
                                           session.setAttribute("image", s_image);
                                           session.setAttribute("password", s_pass);
                                           session.setAttribute("name", s_name);
                                           session.setAttribute("rno", s_rno);
                                           response.sendRedirect("student_mp.jsp");
                                               }
                                             }   
                                          } 

                                               catch(Exception e)
                                            {
                                            out.print("<h2>Error in Query</h2>");
                                            }
                                        }
                                              catch(Exception e)
                                              {
                                               out.print("<h2>Error in Connection</h2>");

                                              }

                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                       }
                                       else if(admin_flag == 0 && stu_flag==0 && teacher_flag==1)
                                       {
                                          type="teacher";
                                          session.setAttribute("email", s_teacher_email);
                                           session.setAttribute("image", s_teacher_image);
                                           session.setAttribute("name", teach_name);
                                           session.setAttribute("teach_id", teach_id);
                                           response.sendRedirect("teacher_mp.jsp");
                                       }
                                       else if(admin_flag == 1 && stu_flag==1 && teacher_flag==0)
                                       {
                                          type="admin";
                                          session.setAttribute("email", s_admin_email);
                                           session.setAttribute("image", s_admin_image);
                                           session.setAttribute("name", s_admin_name);
                                           response.sendRedirect("admin_mp.jsp");
                                       }
                                       else if(admin_flag ==1  && stu_flag==0 && teacher_flag==1)
                                       {
                                          type="admin";
                                          session.setAttribute("email", s_admin_email);
                                           session.setAttribute("image", s_admin_image);
                                           session.setAttribute("name", s_admin_name);
                                           response.sendRedirect("admin_mp.jsp");
                                       }
                                       
                                       else if(admin_flag == 0 && stu_flag==1 && teacher_flag==1)
                                       {
                                                              type="student";
                                                               try
                                                                  {
                                                      Connection myconnection;
                                                      Class.forName("com.mysql.jdbc.Driver");
                                                      myconnection=DriverManager.getConnection(path+place,user,pass);
                                                     try
                                                       {
                                                            String query12="select * from rusers where email=?";
                                                            PreparedStatement myst12=myconnection.prepareStatement(query12);
                                                            myst12.setString(1,em);
                                                            ResultSet myresult12=myst12.executeQuery();
                                                            if(myresult12.next())
                                                                {
                                                                   if(myresult12.getString("fname").trim().equals(""))
                                                                   {
                                                                       session.setAttribute("email", s_email);
                                                                       response.sendRedirect("complete_details.jsp");
                                                                   }
                                                                   else
                                                                   {
                                                                        session.setAttribute("email", s_email);
                                                               session.setAttribute("image", s_image);
                                                               session.setAttribute("password", s_pass);
                                                               response.sendRedirect("admin_mp.jsp");
                                                                   }
                                                                 }   
                                                              } 

                                                                   catch(Exception e)
                                                                {
                                                                out.print("<h2>Error in Query</h2>");
                                                                }
                                                            }
                                                                  catch(Exception e)
                                                                  {
                                                                   out.print("<h2>Error in Connection</h2>");

                                                                  }
                                       }
                                       else if(admin_flag == 0 && stu_flag==0 && teacher_flag==0)
                                       {
                                           out.print("You Are Not Registered!Please Register");
                                       }
                                       else if(admin_flag == 2 || stu_flag == 2 || teacher_flag == 2 )
                                       {
                                           out.print("Incorrect Password");
                                       }
                                       
                            
                          }
                          
                          
                                                                        
                                                                        %>
                                                                        </form>
								 						
							</div>
                                        <div class="login-agileits-top"> 	
								<form action="signup.jsp" method="post">
                                                                    <br></br>
									<input type="submit" name="reg1" value="Register"> 
								</form> 						
							</div>							
							<div class="login-agileits-bottom wthree"> 
								<h6><a href="forgotpass.jsp">Forgot password?</a></h6>
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
        $('#login').blur(function(){
            
            logineml=$(this).val();
           
            $.ajax({
               url : 'ajax1.jsp',
               type : 'post',
               data :{"loginemail" : logineml},
               
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


</html>