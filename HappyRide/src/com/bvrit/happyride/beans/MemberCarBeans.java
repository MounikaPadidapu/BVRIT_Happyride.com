package com.bvrit.happyride.beans;

public class MemberCarBeans {
	public int id;
	public int member_id;
	public int car_id;
	public String car_registration_number;
	public String car_color;


	MemberCarBeans(int id, int member_id, int car_id,String car_registration_number,String car_color){
		this.id = id;
		this.member_id = member_id;
		this.car_id = car_id;
		this.car_registration_number = car_registration_number;
		this.car_color = car_color;
		

	}
}