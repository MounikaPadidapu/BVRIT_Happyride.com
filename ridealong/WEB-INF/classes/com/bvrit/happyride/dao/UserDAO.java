
package com.bvrit.happyride.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bvrit.happyride.beans.UserBeans;

public class UserDAO {
	 static Connection con;
	  static PreparedStatement st;
	  ConnectionDAO cd;
	 
	  public UserDAO() throws ClassNotFoundException{
		  cd = new ConnectionDAO(); 
		  con = cd.getConnection();
		  

	  }

	public boolean signup(String firstname, String lastname,String email,String contactnumber, String username,String password) 	
		throws SQLException{
		boolean result = false;
		String query = "insert into users values('"+firstname+"','"+lastname+"','"+email+"','"+contactnumber+"','"+username+"','"+password+"')";
		
		System.out.println(query);
		
		st = con.prepareStatement(query);
		

	
        int ans = st.executeUpdate();
        if(ans > 0){
        	result = true;
        }
        return result;

		
	 
       
 }
	
	public boolean login(String username, String password)

			throws ClassNotFoundException,SQLException{

			boolean result = false;

			st = con.prepareStatement("Select * from users where username = '" + username	+ "'");

			ResultSet r = st.executeQuery();

			if(r.next()){

				if(r.getString(6).equals(password)){

					result = true;
				}

			}

			return result;
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
	
	public ArrayList<UserBeans> getAlldetails() throws SQLException{
		ArrayList<UserBeans>  cc = new ArrayList<UserBeans>();
		PreparedStatement pst = null;
		ResultSet r = null;
		try {
			pst =  con.prepareStatement("select * from user U left join cardetails CD on CD.username=U.username left join licence L on L.username=U.username left join journeydetails JD on JD.username=U.username where startingpoint = 'hyderabad' and destinationpoint = 'lbnagar'");
		} catch (SQLException e) {
			System.out.println("error");
			e.printStackTrace();
		}
		try {
			r=pst.executeQuery();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			while(r.next()){
			//	UserBeans c  = new UserBeans(r.getString(1),r.getString(3),r.getString(5),r.getString(8), r.getString(9), r.getString(15), r.getString(16));
				//cc.add(c);
			}
			return  cc;
		}
}


	
	  
