package com.bvrit.happyride.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrit.happyride.dao.UserDAO;


public class SignupController extends HttpServlet {
	
	

	 
	private static final long serialVersionUID = 1L;
       
      // public SignupController() {
       // super();
	
	

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			 // Set response content type
		     
		//response.getWriter().append("Served at: ").append(request.getContextPath());
			doProcess(request,response);
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}
		
		protected  void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			boolean result = false;
			
				
			
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String email = request.getParameter("email");
			String contactnumber = request.getParameter("contactnumber");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
					
			
			
			
			 
			try {
				UserDAO ud = new UserDAO();
				//UserBeans uBean = new UserBeans(id,firstname,lastname,email,contactnum,username,password);
			    result = ud.signup(firstname, lastname, email,contactnumber, username,password);
			    
			   
			    if(result){
					
			        response.sendRedirect("startwelcome.jsp");	
			    }
				else{
						
					     response.sendRedirect("signup.jsp");	
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	

}
