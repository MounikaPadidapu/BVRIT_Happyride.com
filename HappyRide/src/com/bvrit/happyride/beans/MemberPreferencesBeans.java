package com.bvrit.happyride.beans;

public class MemberPreferencesBeans {
	public int id;
	public char is_smoking_allowed ;
	public char is_pet_allowed;
	
	MemberPreferencesBeans(int id, char is_smoking_allowed,char is_pet_allowed){
		this.id = id;
		this.is_pet_allowed = is_pet_allowed;
		this.is_smoking_allowed = is_smoking_allowed;
		
	}
	public char getIs_smoking_allowed() {
		return is_pet_allowed;
	}
	public char getIs_pet_allowed() {
		return is_smoking_allowed ;
	}
	
}