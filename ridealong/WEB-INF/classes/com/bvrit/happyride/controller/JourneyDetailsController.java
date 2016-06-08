package com.bvrit.happyride.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.happyride.dao.JourneyDetailsDAO;


public class JourneyDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
  //  public JourneyDetailsController() {
       // super();
   // }

	
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
		boolean result = false;
		
			
		
		String startingpoint = request.getParameter("startingpoint");
		String destinationpoint = request.getParameter("destinationpoint");
		String via1 = request.getParameter("via1");

		String via2 = request.getParameter("via2");

		String via3 = request.getParameter("via3");

		int fare = Integer.parseInt(request.getParameter("fare"));
		String journeydate = request.getParameter("journeydate");
		int seatsavailable = Integer.parseInt(request.getParameter("seatsavailable"));
				
		JourneyDetailsDAO jd = new JourneyDetailsDAO();
		HttpSession session=request.getSession();
	    String username =(String)session.getAttribute("username");
		
		
		
		 
		try{
		    result = jd.journeydetails(username, startingpoint, destinationpoint,via1, via2, via3 ,fare, journeydate,seatsavailable);
		    
		   
		    if(result){
			     response.sendRedirect("welcome.jsp");	
		    }
			else{
			     response.sendRedirect("journeydetails.jsp");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}



}
