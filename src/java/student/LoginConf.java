
package student;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DBCon;
import javax.servlet.http.HttpSession;
public class LoginConf extends HttpServlet {


    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String user= request.getParameter("user");
            String pswd= request.getParameter("pswd");
            DBCon db= new DBCon();
            db.pstmt= db.con.prepareStatement("select* from stu_mstr where user=? and pswd=?");
            db.pstmt.setString(1, user);
            db.pstmt.setString(2, pswd);
            db.rst= db.pstmt.executeQuery();
            if(db.rst.next()){
                HttpSession session= request.getSession();
                session.setAttribute("user",user);
                response.sendRedirect("StudentHome.jsp");
            }
            else{
                out.println("<h2>Incorrect User or Password </h2>");
                out.println("<a href=index.html>Back to Student Login page</a>");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
