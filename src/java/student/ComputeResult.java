
package student;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DB.DBCon;

public class ComputeResult extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session= request.getSession();
            String user= session.getAttribute("user").toString();
            String id[]= new String[20];
            String ans[]= new String[20];
            int count=1,i;
            //Get Question Id and Answer
            for(i=0; i<20; i++)
            {
            id[i]=request.getParameter("id"+count);
            ans[i]=request.getParameter("ans"+count);
            count++;
        }
            DBCon db= new DBCon();
            //Store Answer Sheet
            for(i=0;i<20;i++){
                db.pstmt= db.con.prepareStatement("insert into result_trans(user,qid,ans,date_time) values(?,?,?,?)");
                db.pstmt.setString(1, user);
                db.pstmt.setString(2, id[i]);
                db.pstmt.setString(3, ans[i]);
                db.pstmt.setString(4, new java.util.Date().toString());
                db.pstmt.executeUpdate();
                
            }
            //Compute Obtained Marks
            int marks=0;
            for(i=0; i<20; i++){
                db.pstmt= db.con.prepareStatement("select * from ques_mstr where qid=? and ans=?");
                db.pstmt.setString(1, id[i]);
                db.pstmt.setString(2, ans[i]);
                db.rst= db.pstmt.executeQuery();
                if(db.rst.next()){
                    marks= marks+5;
                } 
            }
            //Store final result
            db.pstmt= db.con.prepareStatement("insert into result_mstr(user,maximum,obt,date_time) values(?,?,?,?)");
            db.pstmt.setString(1, user);
            db.pstmt.setString(2, "100");
            db.pstmt.setInt(3, marks);
            db.pstmt.setString(4, new java.util.Date().toString());
            i= db.pstmt.executeUpdate();
            if(i>0){
                response.sendRedirect("StuResult.jsp");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
