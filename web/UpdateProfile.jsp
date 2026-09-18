<%-- 
    Document   : UpdateProfile
    Created on : 22 Jul, 2025, 9:58:59 AM
    Author     : Piyush verma
--%>


<%@page import="DB.DBCon;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student List</title>
   
    <style>
        /* CSS RESET  */
        body{
            font-family: 'Baloo Bhai 2', cursive;
            margin: 0px;
            padding: 0px;
            background: url(Images/Student7.jpg);
            background-repeat:no-repeat ;
           background-size: 1550px 800px;  
          
           
        }
        .navbar
        {
         display: inline-block;
         border: 3px solid white;
        margin-left: 0%;
         margin-top: 25px;
         border-radius: 5px;
        }
        .navbar li{
            display: inline-block;
        }
        .navbar li a{
            color: black;
            font-size:23px;
            padding: 15px;
            text-decoration: none;
        }
        .navbar li a:hover{
           
           color: red;
           font-size:23px;
           padding:15px;
           text-decoration: none; 
       }
     

    
    </style>
</head>
<body>
    <header>
        <div class="navbar">
        <ul>
        <li><a href="StuProfile.jsp ">Profile</a> </li>
        <li><a href="StartExam.jsp">Exam</a></li>
        <li><a href="StuResult.jsp">Result</a></li>
        <li> <a href="StuChangePswd.jsp">Change Password </a></li>
        <li><a href="Logout">LogOut</a></li>
        </ul>
    </div><hr>
    </header><center><br>
    <div style="width: 1000px; height: 600px; background-color: lightgrey; 
        border: 2px solid blueviolet; overflow:scroll; ">
        <h1 Style="color: brown"><u>Update Profile</u></h1>  
        <form action="UpdateProfile"> 
 <table width="500" cellpadding="10" border="1" cellspacing="0"> 
 <% 
  String user=session.getAttribute("user").toString();  
  DB.DBCon db=new DB.DBCon();
  db.pstmt=db.con.prepareStatement("select * from stu_mstr where user=?"); 
  db.pstmt.setString(1, user); 
  db.rst=db.pstmt.executeQuery();  
  if(db.rst.next()) 
  { 
  out.println("<tr><td width=220>Roll Number</td><td>"+db.rst.getString(1)+"</td></tr>");     
 out.println("<tr><td>Student Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'></td></tr>");  
 out.println("<tr><td>Date of Birth</td><td><input type=date name=dob value='"+db.rst.getString(3)+"'></td></tr>"); 
 out.println("<tr><td>Gender</td><td><input type=text name=gender value='"+db.rst.getString(4)+"'></td></tr>"); 
 out.println("<tr><td>Course</td><td><input type=text name=course value='"+db.rst.getString(5)+"'></td></tr>");   
 out.println("<tr><td>Semester</td><td><input type=text name=sem value='"+db.rst.getString(6)+"'></td></tr>");    
 out.println("<tr><td>Address</td><td><input type=text name=addr value='"+db.rst.getString(7)+"'></td></tr>");  
    out.println("<tr><td>Contact</td><td><input type=text name=cont value='"+db.rst.getString(8)+"'></td></tr>"); 
    out.println("<tr><td>E Mail</td><td><input type=mail name=mail value='"+db.rst.getString(9)+"'></td></tr>");     
 out.println("<tr><td>User</td><td>"+db.rst.getString(10)+"</td></tr>");     
 out.println("<tr><td>Registration Date</td><td>"+db.rst.getString(12)+"</td></tr>");   
 out.println("<tr><th colspan=2><input type=submit value=Update></a></th></tr>");     
  } 
  else 
  { 
  response.sendRedirect("index.html?msg=Please Login First"); 
  } 
     %> 
 </table> 
 </form> 
 </div>     
</center> 
    </body> 
</html> 
 

