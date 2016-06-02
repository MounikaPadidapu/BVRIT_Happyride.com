package com.bvrit.happyride.beans;

public class RideBeans {
	int id;
	int member_car_id;
	String created_on;
	String travel_start_time;
	int source_city_id;
	int destination_city_id;
	int seats_offered;
	int contribution_per_head;
	int luggage_size_id;
	RideBeans(int id, int member_car_id,String created_on,String travel_start_time,int source_city_id,int destination_city_id,int seats_offered,int contribution_per_head,int luggage_size_id){
		this.id = id;
		this.created_on = created_on;
		this.travel_start_time  = travel_start_time;
		this.source_city_id = source_city_id;
		this.destination_city_id = destination_city_id;
		this.seats_offered = seats_offered;
		this.contribution_per_head = contribution_per_head;
		this.luggage_size_id = luggage_size_id;
		
	}

}