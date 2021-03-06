package techblog.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;
import techblog.dao.userDao;
import techblog.entites.user;
public class EditServlet extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out = response.getWriter();
            
//            fetch all data
            String userEmail = request.getParameter("user_email");
            String userName = request.getParameter("user_name");
            String userPassword = request.getParameter("user_password");
            String userAbout = request.getParameter("user_about");
          
           //get the user from the session...
            HttpSession s = request.getSession();
            user user = (user)s.getAttribute("currentUser");
            user.setEmail(userEmail);
            user.setName(userName);
            user.setPassword(userPassword);
            user.setAbout(userAbout);
           

            //update database....
            userDao userDao = new userDao(Connectionprovider.getConnection2());

            boolean ans = userDao.updateUser(user);
            if(ans){
               out.println("updated to db");
            }
            else {
            	out.println("not updated");
            }

          
        }
    }
