package com.bvrit.happyride.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	
		  Connection conn;
		  PreparedStatement st;
		  ConnectionDAO cd;
		  public MemberDAO() throws ClassNotFoundException{
			  cd = new ConnectionDAO(); 
			  conn = cd.getConnection();
		  }
		public int signup(MemberBean ubean) 	
					throws SQLException{
			     String user = ubean.getUser();
			     String password = ubean.getPassword();
			     String first_name = ubean.getFirst_name();
			     String last_name = ubean.getLast_name();
			     int contact_number = ubean.getContact_number();
				 String query = "insert into user values(?,?,?,?,?)";
				 int result = 0;
			
				 st = conn.prepareStatement(query);
				 st.setString(1, user);
				 st.setString(2, password);	
				 st.setString(3, first_name);
				 st.setString(4, last_name);
				 st.setInt(5,contact_number);
				 
			     result = st.executeUpdate();
				 		return result;
		    }
		    public boolean login(MemberBean ubean) 
		    		throws SQLException{
		    	String user = ubean.getUser();
			    String password = ubean.getPassword();
		    	boolean result = false;
		    	ResultSet rs;
		    	String query = 
		    	"SELECT * from user WHERE username=? and password=?";
		   		 st = conn.prepareStatement(query);	
		   		 st.setString(1, user);
				 st.setString(2, password);	
		   		 rs = st.executeQuery();
		   		if(rs.next()) {
		   			result = true;
		   		}
		    	return result;		
		    }
		

}
