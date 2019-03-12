package model;

import java.io.Serializable;

public class Counter implements Serializable{
	private int id,number;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	
	
}
