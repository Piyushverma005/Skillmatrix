<%-- 
    Document   : AddQuestion
    Created on : 18 Jul, 2025, 11:12:18 AM
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
        <div style="width: 1200px; height: 400px; background-color: lightgrey; border: 2px solid blueviolet; overflow: scroll ">
            <h1 style="color: brown"><u>Add Question</u></h1>
            <form action='AddQuestion'>
            <table width='800' cellpadding='5' cellspacing='0' border='1'>
                <tr><td>Question ID</td><td ><input style='width: 800px;height: 30px;' type="number" name="qid"></td></tr>
                <tr><td>Question</td><td ><input type="text" style='width: 800px;height: 30px;' name="ques"></td></tr>
                <tr><td>Question 1</td><td ><input type="text" style='width: 800px;height: 30px;' name="opt1"></td></tr>
                <tr><td>Question 2</td><td><input type="text" style='width: 800px;height: 30px;' name="opt2"></td></tr>
                <tr><td>Question 3</td><td><input type="text" style='width: 800px;height: 30px;' name="opt3"></td></tr>
                <tr><td>Question 4</td><td ><input type="text" style='width: 800px;height: 30px;' name="opt4"></td></tr>
                <tr><td>Answer</td><td> <input type="text" style='width: 800px;height: 30px;' name="ans"></td></tr>
                <tr><th><input type="submit" style="width:200px; height: 40px; background-color: lightgreen" value="Submit"></th>
                    <th><input type="reset"  value="Submit"></th></tr>
                
            </form> 
            </table>
    </div></center>
    
</body>
</html>

