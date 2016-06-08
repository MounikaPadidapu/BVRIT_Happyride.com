
package com.bvrit.happyride.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CarDetailsDAO {
	static Connection con;
	  static PreparedStatement st;
	  ConnectionDAO cd;
	 
	  public CarDetailsDAO() throws ClassNotFoundException{
		  cd = new ConnectionDAO(); 
		  con = cd.getConnection();
	  }
	  
	  public boolean cardetails(String username, String carnumber, String carcolor, String carmodel) throws SQLException{
			
			boolean result = false;
			String query = "insert into cardetails values ('"+username+"','"+carnumber+"','"+carcolor+"','"+carmodel+"')";
			
			System.out.println(query);
			
			
			st = con.prepareStatement(query);
			
	        int ans = st.executeUpdate();
	        if(ans > 0){
	        	result = true;
	        }
	        return result;

			
		}
		  

}
