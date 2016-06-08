package com.bvrit.happyride.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bvrit.happyride.beans.UserBeans;

public class JourneyDetailsDAO {
	static Connection con;
	  static PreparedStatement st;
	  ConnectionDAO cd;
	  
	  public JourneyDetailsDAO() throws ClassNotFoundException{
		  cd = new ConnectionDAO(); 
		  con = cd.getConnection();
		  
	  }

public boolean journeydetails(String username, String startingpoint, String destinationpoint,String via1, String via2, String via3, int fare, String journeydate, int seatsavailable) throws SQLException{
		
		boolean result = false;
		

		String query = "insert into journeydetails (username, startingpoint, destinationpoint, fare, journeydate, seatsavailable)values ('"+username+"','"+startingpoint+"','"+destinationpoint+"','"+fare+"','"+journeydate+"','"+seatsavailable+"')";
		
		System.out.println(query);
		
		
		st = con.prepareStatement(query);
		
        int ans = st.executeUpdate();
        String selectquery = "select id from journeydetails where username = '"+username+"'";
        st = con.prepareStatement(selectquery);
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
        	String viaquery = "insert into viapoints (journeydetailsid , via1, via2, via3) values ('"+rs.getInt("id")+"', '"+via1+"', '"+via2+"', '"+via3+"')";
            st = con.prepareStatement(viaquery);
            int aws = st.executeUpdate();
        }
         
        
        //write code to get id of journey details
        //select statement
        //insert into journey via details (id,via cities)
        if(ans > 0){
        	result = true;
        }
        return result;

		
	}

public  List<UserBeans> findRideDetails(String username) throws SQLException{
	 	List<UserBeans> listOfRides = new ArrayList<UserBeans>();
		String getUserJourneyDetailsQry = "select jd.*, vp.* from journeydetails jd join viapoints vp on jd.id = vp.journeydetailsid where username =?";
		try {
			st = con.prepareStatement(getUserJourneyDetailsQry);
			st.setString(1, username);
			ResultSet rsJD = st.executeQuery();
			while(rsJD.next())
	        {
				String getAllUserViaPointsQry =  "select jd.*, us.username, us.firstname, us.lastname, us.contactnumber, us.email, cd.carmodel, cd.carcolor "
						+ " from journeydetails jd"
						+ " join users us on us.username = jd.username"
						+ " join cardetails cd on cd.username = jd.username"
						+ " where jd.destinationpoint = ? and jd.startingpoint in (?,?,?)"; 

				st = con.prepareStatement(getAllUserViaPointsQry);
				st.setString(1, rsJD.getString("destinationpoint") );
				st.setString(2, rsJD.getString("via1"));
				st.setString(3, rsJD.getString("via2"));
				st.setString(4, rsJD.getString("via3"));
				
				ResultSet rsJDVp = st.executeQuery();
				while(rsJDVp.next())
		        {
					UserBeans usrBean  = new UserBeans();
					usrBean.setFirstname(rsJDVp.getString("firstname"));
					usrBean.setLastname(rsJDVp.getString("lastname"));
					usrBean.setUsername(rsJDVp.getString("username"));
					usrBean.setEmail(rsJDVp.getString("email"));
					usrBean.setContactnumber(rsJDVp.getString("contactnumber"));
					usrBean.setStartingpoint(rsJDVp.getString("startingpoint"));
					usrBean.setDestinationpoint(rsJDVp.getString("destinationpoint"));
					usrBean.setCarcolor(rsJDVp.getString("carcolor"));
					usrBean.setCarmodel(rsJDVp.getString("carmodel"));
					listOfRides.add(usrBean);
		        }
	        }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listOfRides;
		
}

}
