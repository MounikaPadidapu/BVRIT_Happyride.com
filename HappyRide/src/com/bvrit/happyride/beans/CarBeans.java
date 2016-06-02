package com.bvrit.happyride.beans;

public class CarBeans {
	public int id;
	public String name;
	public String make;
	public String model;
	public int make_year;
	public int comfort_level;
	CarBeans(int id, String name,String make, String model, int make_year, int comfort_level){
		this.id = id;
		this.name = name;
		this.make = make;
		this.model = model;
		this.make_year = make_year;
		this.comfort_level = comfort_level;
	}

}