package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class Login1 extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session =request.getSession();
		
		
		
		 session.getAttribute("student");
		String logout =request.getParameter("logout");
		 
		 if (session.getAttribute("student") !=null)
			response.sendRedirect("Welcome");
			
		
		
		 else if(logout != null) 
		request.getRequestDispatcher("/WEB-INF/login.jsp?logout").forward(request, response);
			
		
		
		
		else 
			request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
		
	}

	
}
