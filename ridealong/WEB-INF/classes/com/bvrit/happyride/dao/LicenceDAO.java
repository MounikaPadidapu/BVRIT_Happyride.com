package com.bvrit.happyride.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class LicenceDAO {
	
	static Connection con;
	  static PreparedStatement st;
	  ConnectionDAO cd;
	 
	  public LicenceDAO() throws ClassNotFoundException{
		  cd = new ConnectionDAO(); 
		  con = cd.getConnection();
		  

	  }
	
public boolean licence(String username, String licencenumber, String validationdate) throws SQLException{
		
		boolean result = false;
		String query = "insert into licence values ('"+username+"','"+licencenumber+"','"+validationdate+"')";
		
		System.out.println(query);
		
		
		st = con.prepareStatement(query);
		
        int ans = st.executeUpdate();
        if(ans > 0){
        	result = true;
        }
        return result;

		
	}

}
