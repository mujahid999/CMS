package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BeanClass.BeanStudent;
import model.DBManager;

import java.io.*;


public class Insertform extends HttpServlet {
	
    
	
	
	
	
	
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		PrintWriter out =response.getWriter();
		
		String name =request.getParameter("name");
		String surname =request.getParameter("surname");
		String password =request.getParameter("password");
		String phone =request.getParameter("phone");
		String address=request.getParameter("address");
		String cnic =request.getParameter("cnic");
		String gender =request.getParameter("gender");
		
		
		
		BeanStudent bean = new BeanStudent();
		bean.setStdName(name);
		bean.setSurname(surname);
		bean.setPassword(password);
		bean.setPhone(phone);
		bean.setAddress(address);
    	bean.setCnic(cnic);
		bean.setGender(gender);
			int num =DBManager.insertData(bean);
		
		if(num==1) {
			response.sendRedirect("login");
		}else {
			request.getRequestDispatcher("registration.jsp").forward(request, response);
			   
		}
			
					
		
}


}
