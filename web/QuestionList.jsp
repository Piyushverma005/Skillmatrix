<%-- 
    Document   : QuestionList
    Created on : 20 Jul, 2025, 10:50:33 PM
    Author     : Piyush verma
--%>

 
<%@page import="DB.DBCon"%> 
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=devicewidth, initial-scale=1.0">     <title>Student List</title> 
     <style> 
        /* CSS RESET  */         body{             font-family:Century Gothic;             margin: 0px;             padding: 0px;             background: url(Images/Student7.jpg);             background-repeat:no-repeat ;            background-size: 1550px 800px;   
            
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
        <div class="navbar">         <ul> 
        <li><a href="StudentList.jsp">Student List</a> </li> 
        <li><a href="AddQuestion.jsp">Add Question</a></li> 
        <li><a href="QuestionList.jsp">Question List</a></li> 
        <li> <a href="UpdateQuestion.jsp">Update Question</a></li> 
        <li><a href="AdminResult.jsp">Result</a></li> 
        <li><a href="AdminChangePswd.jsp">Change Password</a></li> 
        <li><a href="Logout">Log Out</a></li> 
        </ul> 
    </div><hr> 
    </header> 
    <center> 
        <br><br> 
  <div 
style="width:1200px;height:450px;backgroundcolor:lightgrey;border:2px solid red;overflow:scroll;">  
<h1 style="color:brown"><u>Question List</u></h1> 
<table width="1100" cellspacing="0" cellpadding="5" border="1"> 
 <tr bgcolor="yellow">
     <th>Question ID</th><th>Question</th><th>Option1</th> 
     
<th>Option2</th><th>Option3</th><th>Option4</th></tr>  
 <% 
 DBCon db=new DBCon(); db.pstmt=db.con.prepareStatement("select * from ques_mstr"); db.rst=db.pstmt.executeQuery(); while(db.rst.next()) 
{ 
out.println("<tr><td>"+db.rst.getString(1)+"</td><td>"+db.rst.getString(2)+"</td>");

out.println("<td>"+db.rst.getString(3)+"</td><td>"+ db.rst.getString(4)+"</td>");
    out.println("<td>"+db.rst.getString(5)+"</td><td>"+ db.rst.getString(6)+"</td></tr>"); 
} 
%>   
</table> 
  </div> 
    </center> 
</body> 
</html> 
 
