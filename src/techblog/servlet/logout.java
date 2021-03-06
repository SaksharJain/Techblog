package techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import techblog.entites.*;
/**
 * Servlet implementation class logout
 */

public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//(request, response);
		response.setContentType("text/html;charset=UTF-8");
		try { HttpSession s=request.getSession();
			 s.removeAttribute("currentUser");
			 Messages m=new Messages("you are loggedout!","success","alert-success");
			 s.setAttribute("msg", m);
			 response.sendRedirect("login.jsp");
			 }
		 catch(Exception e){
			 
		 }
	}

}
