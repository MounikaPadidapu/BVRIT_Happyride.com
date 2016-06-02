package com.bvrit.happyride.beans;

public class RequestBeans {
	public int id;
	public int requester_id;
	public int ride_id;
	public int enroute_city_id;
	public String created_on;
	public int request_status_id;
	RequestBeans(int id, int requester_id, int ride_id, int enroute_city_id, String created_on,int request_status_id){
		this.id = id;
		this.requester_id = requester_id;
		this.ride_id = ride_id;
		this.enroute_city_id = enroute_city_id;
		this.created_on = created_on;
		this.request_status_id = request_status_id;
		
	}

}