package com.bvrit.happyride.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.happyride.beans.UserBeans;
import com.bvrit.happyride.dao.ConnectionDAO;
import com.bvrit.happyride.dao.JourneyDetailsDAO;


public class FindRideController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Connection con;
	  static PreparedStatement st;
	  ConnectionDAO cd;
	  public FindRideController() throws ClassNotFoundException{
		  cd = new ConnectionDAO(); 
		  con = cd.getConnection();
		  
	  }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			doProcess(request,response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		try {
			doProcess(request,response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected  void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
		HttpSession session = request.getSession();
	    String username = (String) session.getAttribute("username");
	    JourneyDetailsDAO jd = new JourneyDetailsDAO();
	    List<UserBeans> listOfRides = new ArrayList<UserBeans>();
		try{
			listOfRides = jd.findRideDetails(username);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		request.setAttribute("listOfRides", listOfRides); 
		request.getRequestDispatcher("/findride.jsp").forward(request,response);
		
		 
		
	}



}
