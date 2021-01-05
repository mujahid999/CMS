package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import BeanClass.BeanStudent;
import model.DBManager;
import BeanClass.CategoryBean;
import java.util.*;

/**
 * Servlet implementation class Welcome
 */

@WebServlet("/Welcome")
public class Welcome extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("cache-control", "no-store");
		HttpSession session =request.getSession();
		
		BeanStudent bean =(BeanStudent)session.getAttribute("student");
		
		if(bean==null) {
			
			response.sendRedirect("login");
		}
		
		else{
			
			ArrayList arr =(ArrayList)DBManager.getCategory();
			
			request.setAttribute("arr",arr);
		
		request.getRequestDispatcher("WEB-INF/welcome.jsp").forward(request,response);
		
		
	}

	}

}
