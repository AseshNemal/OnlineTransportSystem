package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Passenger;
import com.model.TripModel;
import com.util.DBConnect;

public class TripDBUtil {
	
	//Database Connection
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Data Insert Function
	
	public static boolean insertTrip(int tripID, String pid, String bookingDate, String vehicleType, String pickupLoc, String dropoffLoc, String startDate, String endDate, String notes, String price, String status) {
		
		isSuccess = false;
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "INSERT INTO trip VALUES (0, '"+pid+"', '"+bookingDate+"', '"+vehicleType+"', '"+pickupLoc+"', '"+dropoffLoc+"', '"+startDate+"', '"+endDate+"', '"+notes+"', '"+price+"', '"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Get Trip Details According to the Passenger ID
	
	public static List<TripModel> getTripByID(String Pid){
		ArrayList<TripModel> trip = new ArrayList<>();
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL Statement
			String sql = "SELECT * FROM trip WHERE pid = '"+Pid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String pid = rs.getString(2);
				String bookingDate = rs.getString(3);
				String vehicleType = rs.getString(4);
				String pickupLoc = rs.getString(5);
				String dropoffLoc = rs.getString(6);
				String startDate = rs.getString(7);
				String endDate = rs.getString(8);
				String notes = rs.getString(9);
				String price = rs.getString(10);
				String status = rs.getString(11);
				
				TripModel t = new TripModel(id, pid, bookingDate, vehicleType, pickupLoc, dropoffLoc, startDate, endDate, notes, price, status);
				trip.add(t);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return trip;
	}
	
	//Get All data in the trips table
	
	public static List <TripModel> getAllTrips(){
		
		ArrayList <TripModel> trips = new ArrayList<>();
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL Statement
			String sql = "SELECT * FROM trip";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String pid = rs.getString(2);
				String bookingDate = rs.getString(3);
				String vehicleType = rs.getString(4);
				String pickupLoc = rs.getString(5);
				String dropoffLoc = rs.getString(6);
				String startDate = rs.getString(7);
				String endDate = rs.getString(8);
				String notes = rs.getString(9);
				String price = rs.getString(10);
				String status = rs.getString(11);
				
				TripModel t = new TripModel(id, pid, bookingDate, vehicleType, pickupLoc, dropoffLoc, startDate, endDate, notes, price, status);
				trips.add(t);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return trips;
		
	}
	
	public static boolean updateTrip(String id, String pid, String bookingDate, String vehicleType, String pickupLoc, String dropoffLoc, String startDate, String endDate, String notes, String price, String status) {
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "UPDATE trip SET bookingDate = '"+bookingDate+"', vehicleType = '"+vehicleType+"', pickupLoc = '"+pickupLoc+"', dropoffLoc = '"+dropoffLoc+"', startDate = '"+startDate+"', endDate = '"+endDate+"', notes = '"+notes+"', price = '"+price+"', status = '"+status+"' WHERE tripID = '"+id+"' AND pid = '"+pid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteTrip(String tripID) {
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "DELETE FROM trip WHERE tripID = '"+tripID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Passenger> exit(String pid){
		ArrayList<Passenger> passenger= new ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM passenger WHERE pid = '"+pid+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String district = rs.getString(5);
				String username = rs.getString(6);
				String pword = rs.getString(7);
				
				Passenger c= new Passenger(id, name, email, phone, district, username, pword);
				passenger.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return passenger;
	}
	
	public static boolean updateStatus(String id, String price, String status) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE trip SET price = '"+price+"', status = '"+status+"' WHERE tripID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}


}
