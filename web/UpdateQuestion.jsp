<%-- 
    Document   : UpdateQuestion
    Created on : 22 Jul, 2025, 1:10:21 AM
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
        border: 2px solid blueviolet;">
        <h1 Style="color: brown"><u>Update Question </u></h1>
        <form action="SearchQuestionList.jsp">
        <table width="600" cellpadding="5" cellspacing="0" border="1">
            <tr><td width="300">Enter Question ID</td><td><input type="number" name="qid"></td></tr>   
            <tr><th><input type="submit" value="Search"></th><td><input type="reset" ></td></tr>   
</table> 
</form> 
  </div> 
    </center> 
</body> 
</html> 
