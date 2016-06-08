package com.bvrit.happyride.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.happyride.beans.UserBeans;
import com.bvrit.happyride.dao.UserDAO;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
  //  public LoginController() {
    //    super();
   // }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doProcess(request,response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		doProcess(request,response);

	}
	protected  void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean result;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		HttpSession session = request.getSession();
	    session.setAttribute("username", username);
		
		try{
				UserDAO ud = new UserDAO();
			
			result = ud.login(username,password);
			
			 if(result){
					response.sendRedirect("welcome.jsp");
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