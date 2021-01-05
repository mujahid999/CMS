package model;

import java.sql.*;

import BeanClass.BeanStudent;
import BeanClass.CategoryBean;
import java.util.*;

public class DBManager {
	
	static Connection con = null;
	
	
	   
	    	static {
	    	  try {
	    	 
	    	Class.forName("com.mysql.jdbc.Driver");
	    	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root","");
	    	
	    	  }catch(Exception e) {
	    		  e.printStackTrace();
	    	  }

	    	
	    	}
	
	
	

	
	public static BeanStudent  getStudent(String name,String password) {
		
	
      String query ="Select * from registration where std_name='"+name+"' and password='"+password+"'";

		
		BeanStudent bean =null;
		try {
			
			
			 Class.forName("com.mysql.jdbc.Driver");
			   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root","");
			 
			PreparedStatement pr =con.prepareStatement(query);
			ResultSet rs =pr.executeQuery();
			
			
			
			
			while(rs.next()) {
				
				bean =new BeanStudent();
				
				bean.setStdId(rs.getInt("std_id"));
				bean.setStdName(rs.getString("std_name"));
				bean.setPassword(rs.getString("password"));
				bean.setAddress(rs.getString("address"));
			    bean.setPhone(rs.getString("phone"));
			    bean.setCnic(rs.getString("cnic"));
			    bean.setGender(rs.getString("gender"));
	     						
				
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return bean;
	}
	
	
	
	public static int  insertData(BeanStudent bean) {
    	  	
   
   	String  query ="Insert INTO registration (std_name,std_surname,password,phone,address,cnic,gender)value('"+bean.getStdName()+"','"+bean.getSurname()+"','"+bean.getPassword()+"','"+bean.getPhone()+"','"+bean.getAddress()+"','"+bean.getCnic()+"','"+bean.getGender()+"')";
   	
	int num=0;
   	
	try {
		

   	
   PreparedStatement pr = con.prepareStatement(query);
    num= pr.executeUpdate();
	
	
	
   	 }catch(Exception e) {
   		 e.printStackTrace();
   	 }
	
	
	
	return num;
	
	}

	
public static ArrayList getCategory() {
	
	
	String sql ="Select * from category";
	
	CategoryBean bean =null;
	ArrayList<CategoryBean> arr =new ArrayList<CategoryBean>();
	try {
		
		PreparedStatement pr =con.prepareStatement(sql);
		ResultSet rs =pr.executeQuery();
		
		
		while (rs.next()) {
			
			 bean =new CategoryBean();
			
			bean.setCategoryId(rs.getInt("category_id"));
			bean.setCategory(rs.getString("category"));

			arr.add(bean);

		}
		
		
		
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	return arr;
}
	
	
	
	
}
