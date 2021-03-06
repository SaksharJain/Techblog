package techblog.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import techblog.entites.Messages;
import techblog.dao.userDao;
import techblog.entites.user;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=UTF-8");
		
		try {	 PrintWriter out = response.getWriter();
		String userEmail=request.getParameter("email");
		String userPassword=request.getParameter("password");
		userDao dao=new userDao(Connectionprovider.getConnection2());
		user u=dao.getuser(userEmail, userPassword);
		
		if(u==null) {
			  Messages msg = new Messages("Invalid Details ! try with another", "error", "alert-danger");
              HttpSession s = request.getSession();
              s.setAttribute("msg", msg);
              response.sendRedirect("login.jsp");
		}
		else {
			HttpSession s=request.getSession();
			s.setAttribute("currentUser", u);
			response.sendRedirect("profile.jsp");
		}
		}
		catch(Exception e){
			System.out.println("not ok");
			e.printStackTrace();
		}
}
}
