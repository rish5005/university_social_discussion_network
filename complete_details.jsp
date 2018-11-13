<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
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
<title>Complete Form</title>
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
							<h1>Fill Details</h1> 
							<div class="login-agileits-top"> 	
								<form method="post" enctype="multipart/form-data"> 
								<label>Username </label>
                                                                <%out.print("<input type='email' name='uname' placeholder='Username' value="+session.getAttribute("email").toString()+"  readonly='readonly' required>");%>
                        		<br></br>
                                        <label>Father's Name</label>
					<input type=text name="fname" placeholder="Father's Name" required />
					<br></br>
                                        <label>Mother's Name</label>
					<input type=text name="mname" placeholder="Mother's Name" required />
					<br></br>
                                        <label>Birthday</label>
                                        <input type=date name="bday" max="<%
                                                                        SimpleDateFormat mydate=new SimpleDateFormat("yyyy-MM-dd");
                                                                        java.util.Date dat=new java.util.Date();
                                                                        out.print(mydate.format(dat));%>" required />
					<br></br>
                                        <label>Address</label>
                                        <input type="text" name="add" placeholder="Address" required>
                                        <br></br>
                                        <label>Department</label>
                                        <select id="department" name="department" required>
                                            <option value="">Choose Department</option>
                                            <%
                            
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
                                        String query="select * from depttable";
                                        PreparedStatement myst=myconnection.prepareStatement(query);
                                        ResultSet myresult=myst.executeQuery();
                                        if(myresult.next())
                                            {
                                                do{
                                               out.print("<option value="+myresult.getString("deptid")+">"+myresult.getString("deptname")+"</option>");
                                                }while(myresult.next());
                                            }
                                    }
                                   catch(Exception e)
                                    {
                                      out.print("Error in query"+e.getMessage());
                                    }
                               }
                            catch(Exception e)
                                    {
                                      out.print("Error in Connection"+e.getMessage());
                                    }

                                    %>
                                        </select>
                                        <br></br>
                                        <label>Course</label>
                                        <select id="course" name="course" required>
                                            <option value="">Choose course</option>
                                        </select>
                                                                                <br></br>
                                        <label>Year</label>
                                        <select id="year" name="year" required>
                                            <option value="">Choose Year</option>
                                        </select>
                                        <br></br>
                                        
                                        <label>Semester</label>
                                        <select id="semester" name="semester" required>
                                            <option value="">Choose Semester</option>
                                        </select>
                                        <br></br>
                                        
                                        <label>Section</label>
                                        <select id="section" name="section" required>
                                            <option value="">Choose Section</option>
                                        </select>
                                        <br></br>
                                        <label>Upload Your Photo</label>
                                        <input type="file" name="photo">
                                        <br></br>
                                        <label>Gender</label>
                                        <br>
                                        <input type="radio" name="gender" value="male">Male<br>
                                        <input type="radio" name="gender" value="female">Female<br>
                                        <br></br>
                                        <input type="submit" name="reg" value="Register" />	
                                                                    
                                                             </form> 	
                                        
                                        
                                        <%
         
           String department="", gender="",address="",image="",fname="",dob="",mname="",class1="",section="",path1,semester="",email="";
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
          
            if(itemName1.equals("department")) //control's name - textbox name
           {
                department=value;
            }
            else if(itemName1.equals("gender")) //control's name - textbox name
           {
                gender=value;
            }
            else if(itemName1.equals("add")) //control's name - textbox name
           {
                address=value;
            }
            else if(itemName1.equals("section")) //control's name - textbox name
           {
                section=value;
            }
            else if(itemName1.equals("fname")) //control's name - textbox name
           {
                fname=value;
            }
            else if(itemName1.equals("bday")) //control's name - textbox name
           {
                dob=value;
            }
            else if(itemName1.equals("mname")) //control's name - textbox name
           {
                mname=value;
            }
            else if(itemName1.equals("course")) //control's name - textbox name
           {
                class1=value;
            }
            else if(itemName1.equals("semester")) //control's name - textbox name
           {
                semester=value;
            }
            else if(itemName1.equals("uname")) //control's name - textbox name
           {
                email=value;
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

                            String query="update rusers set gender=?, address=?, image=?, fname=?, dob=?, mname=?, dept=?, class=?, sec=? ,sem=? where email=?";
                            PreparedStatement myst=myconnection.prepareStatement(query);
                 myst.setString(1,gender);
                 myst.setString(2,address);
                 myst.setString(3,image);
                myst.setString(4,fname);
                 myst.setString(5,dob);
                 myst.setString(6,mname);
                 myst.setString(7,department);
                 myst.setString(8,class1);
                 myst.setString(9,section);
                 myst.setString(10,semester);
                 myst.setString(11,email);
                 if(myst.executeUpdate()>0)
                 {
                     response.sendRedirect("index.jsp");
                 }
                 else
                 {
                     out.print("<h3 class='mera'>Insertion Not Successful</h3>");
                 }
                        }
                         catch(Exception e)
                        {
                         out.print("Error in connection12"+e.getMessage());
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
				<div class="w3lsfooteragileits">
					<p> &copy; 2017 Shadow Login Form. All Rights Reserved | Design by <a href="http://w3layouts.com" target="=_blank">W3layouts</a></p>
				</div> 
			</div>   
		</div>
	</div>	 
	<!-- //main --> 
        
        
 <!--ajax-->
<script type="text/javascript" src="jquery/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#department').change(function(){
            
            eml=$(this).val();
           
            $.ajax({
               url : 'cmpdetailajax.jsp',
               type : 'post',
               data :{"deptid" : eml},
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   //$('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#course').html(result)
               },
               error :  function(e)
               {
                   $('#course').html("error"+e)
               }
            })
        })
    })
    </script>
       
<script type="text/javascript">
    $(document).ready(function(){
        $('#course').change(function(){
            
            eml=$(this).val();
            dept=$('#department').val();

           
            $.ajax({
               url : 'cmpdetailajax.jsp',
               type : 'post',
               data :{"deptid1" : dept,"courseid" : eml },
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   //$('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#year').html(result)
               },
               error :  function(e)
               {
                   $('#year').html("error"+e)
               }
            })
        })
    })
    </script>
    
    
<script type="text/javascript">
    $(document).ready(function(){
        $('#year').change(function(){
            
            dept=$('#course').val();

           
            $.ajax({
               url : 'cmpdetailajax.jsp',
               type : 'post',
               data :{"courseid2" : dept },
               
              beforeSend : function()
              {
                   //$('#emarea').html("<img src='images/preloader.gif' width='25px'>")
                   //$('#emarea').html("<i class='fa fa-spinner' aria-hidden='true'></i>")
                   //$('#emarea').html("<i class='fa fa-spinner fa-spin ' aria-hidden='true'></i>")
                   //$('#emarea').ht
              },
                      
               success : function(result)
               {
                   $('#semester').html(result)
               },
               error :  function(e)
               {
                   $('#semester').html("error"+e)
               }
            })
        })
    })
    </script>
    
    
    
<script type="text/javascript">
    $(document).ready(function(){
        $('#semester').change(function(){
            
            did=$('#department').val();
            cid=$('#course').val();
            year=$('#year').val();
           
            $.ajax({
               url : 'cmpdetailajax.jsp',
               type : 'post',
               data :{"did" : did,"cid" : cid,"year1" : year },
               
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
    
    
    
 
</body>
</html>