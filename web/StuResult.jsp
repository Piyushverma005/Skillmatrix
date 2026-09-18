<%-- 
    Document   : StuResult
    Created on : 23 Jul, 2025, 10:14:30 AM
    Author     : Piyush verma
--%>
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
    <div style="width: 1000px; height: 550px; background-color: antiquewhite; 
        border: 2px solid blueviolet; ">
        <h1 Style="color: brown"><u>Student Result</u></h1>     
        <table width="400" cellpadding="10" cellspacing="0" border="1">
            
            <%
           String user=session.getAttribute("user").toString();  
           DB.DBCon db=new DB.DBCon(); 
           db.pstmt=db.con.prepareStatement("select * from result_mstr where user=?"); 
           db.pstmt.setString(1, user);  
           db.rst=db.pstmt.executeQuery();  
           if(db.rst.next()) 
  { 
  out.println("<tr><td width=220>User name</td><td>"+db.rst.getString(1)+"</td></tr>");     
 out.println("<tr><td>Maximum Marks</td><td>"+db.rst.getString(2)+"</td></tr>");  
 out.println("<tr><td>Obtained Marks</td><td>"+db.rst.getString(3)+"</td></tr>"); 
 out.println("<tr><td>Exam Date and Time</td><td>"+db.rst.getString(4)+"</td></tr>");     
  } 


 %>
 </table> </div></center>
    
</body>
</html>


