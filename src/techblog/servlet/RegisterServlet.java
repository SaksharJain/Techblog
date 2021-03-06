
package techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import techblog.dao.userDao;
import techblog.entites.user;
/**
 * Servlet implementation class RegisterServlet
 */

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.setContentType("text/html;charset=UTF-8");
			 PrintWriter out = response.getWriter();
				
				String check=request.getParameter("user_check");
				if(check==null) {
					out.println("box not checked");
				}
				else {
					
					String name=request.getParameter("user_name");
					String email=request.getParameter("user_email");
					String password=request.getParameter("user_password");
					String about=request.getParameter("about");
					String gender=request.getParameter("gender");
					//create a user object
					user u=new user(name,email,password,gender,about);
					//create userDao object
					userDao dao=new userDao(Connectionprovider.getConnection2());
					if(dao.saveuser(u))
					{
					out.println("done");
					}
					else
					{
						out.println("error");
					}
					
				}
		}

	}