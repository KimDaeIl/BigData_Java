package work.model;

import java.io.Serializable;

public class Customer implements Serializable{
	private int  num;    		
	private String name;
	private String address;	

	public Customer(int num, String name, String address){
		setNum(num);
		setName(name);
		setAddress(address);
	}

	public void setNum(int num){this.num=num;}
	public void setName(String name){this.name=name;}
	public void setAddress(String address){this.address=address;}

	public int getNum(){return num;}
	public String getName(){return name;}
	public String getAddress(){return address;}
}