package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Passenger;
import com.util.DBConnect;

public class PassengerDbUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess = false;
	
	public static int pvalidate(String userName,String password) {
		int pid =0;
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM passenger WHERE username = '" + userName+ "' AND password = '" + password + "'";
			
			rs =stmt.executeQuery(sql);
			
			if(rs.next()) {
				pid = rs.getInt(1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		return pid;
	}
	
	
	public static boolean pregister(String name, String email, String phoneNumber, String district, String username, String password) {
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into passenger values (0,'"+name+"','"+email+"','"+phoneNumber+"','"+district+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
				}
			else {
				isSuccess=false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
public static boolean updatePassenger(String pid, String name, String email, String phoneNumber, String district, String username, String password) {
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Update passenger set name= '"+ name +"' ,email = '"+ email +"' ,phoneNumber = '"+ phoneNumber +"', district = '"+ district +"' , username = '"+ username +"' , password = '"+ password +"' where pid = '"+ pid +"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}


public static List<Passenger> getPassengerDetails(String PID){
	int convertedID = Integer.parseInt(PID);
	
	ArrayList<Passenger> passenger = new ArrayList<>();
	
	try {
		//Database Connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "Select * from passenger where pid = '"+ convertedID +"'";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phoneNumber = rs.getString(4);
			String district = rs.getString(5);
			String username = rs.getString(6);
			String password = rs.getString(7);
			
			
			Passenger p = new Passenger(id,name,email,phoneNumber,district,username,password);
			passenger.add(p);
			
		}		
		
	} catch (Exception e) {
		e.printStackTrace();
	}	
	return passenger;
}

public static boolean deletePassenger(String pid) {
	int convID = Integer.parseInt(pid);
	try {
		//Database Connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from passenger where pid = '"+ convID +"' ";
		
		int r = stmt.executeUpdate(sql);
		
		if(r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
			
		
	}catch(Exception e){
		e.printStackTrace();
		
	}
	
	
	return isSuccess;
}

public static String passengerCount() {
	String count = "0";
	
	
	try {
		//Database Connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "SELECT count(*) FROM passenger ";
		
		rs =stmt.executeQuery(sql);
		
		if (rs.next()) {  
            count = rs.getString(1);
        }
		
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	

	
	return count;
	
}


}


