<%-- 
    Document   : StudentList
    Created on : 18 Jul, 2025, 10:22:20 AM
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
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@800&family=Baloo+Bhaina+2:wght@800&display=swap" rel="stylesheet">
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
        <li><a href="StudentList.jsp "> Student List</a> </li>
        <li><a href="AddQuestion.jsp">Add Question</a></li>
        <li><a href="QuestionList.jsp">Question List</a></li>
        <li> <a href="UpdateQuestion.jsp">Update Question</a></li>
        <li><a href="AdminResult.jsp">Result</a></li>
        <li><a href="AdminChangePswd.jsp">Change Password</a></li>
        <li><a href="Logout">LogOut</a></li>
        </ul>
    </div><hr>
    </header><center><br>
    <div style="width: 1200px; height: 400px; background-color: lightgrey; 
        border: 2px solid blueviolet; overflow:scroll; ">
        <h1 Style="color: brown"><u>Student List</u></h1>     
        <table width="1100" cellpadding="5" cellspacing="0" border="1">
            <tr bgcolor="lightcyan"><th>Roll Number</th><th>Student Name</th><th>Date of Birth</th><th>Gender</th>
                <th>Course</th><th>Sem</th><th>Address</th><th>Contact</th><th>E-mail</th><th>User</th><th>Registration Date</th></tr>
            <%
            DBCon db=new DBCon();
            db.pstmt=db.con.prepareStatement("select* from stu_mstr");
            db.rst=db.pstmt.executeQuery();
            while(db.rst.next()){
            out.println("<tr><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td>");
             out.println("<td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td>");
             out.println("<td>"+db.rst.getString(5)+"</td><td>"+db.rst.getString(6)+"</td>");
             out.println("<td>"+db.rst.getString(7)+"</td><td>"+db.rst.getString(8)+"</td>");
             out.println("<td>"+db.rst.getString(9)+"</td><td>"+db.rst.getString(10)+"</td>");
              out.println("<td>"+db.rst.getString(12)+"</td></tr>");
            }
            %>
        </table>
        
        
        
        
    </div></center>
    
</body>
</html>
