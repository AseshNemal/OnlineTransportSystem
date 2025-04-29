package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Ride;
import com.util.DBConnect;

public class RideDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess = false;
	
	public static boolean addRide( String date, String time,String cLocation, String dLocation, String feedback, String passengerID) {
		
		int convertedid = Integer.parseInt(passengerID);
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "INSERT into ride(rid,date,time,cLocation,disLocation,feedback,passengerID) values (0, '"+ date +"' , '"+ time +"' , '"+ cLocation +"', '"+ dLocation+"' , '"+ feedback +"' , '"+ convertedid +"') ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
				}
			else {
				isSuccess=false;
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}	
		return isSuccess;
	}
	
	public static boolean acceptRide(String rid, String id) {
		int convertedid = Integer.parseInt(id);
		int convertedrid = Integer.parseInt(rid);
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "Update ride set driverID = '"+ convertedid +"' where rid = '"+ convertedrid +"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
				}
			else {
				isSuccess=false;
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		return isSuccess;
	}
	
	public static List<Ride> getRideList(String id){
		int convertedid = Integer.parseInt(id);
		ArrayList<Ride> ride = new ArrayList<>();
		 
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from ride where rid = '"+ convertedid +"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int rid = rs.getInt(1);
				String date = rs.getString(2);
				String time = rs.getString(3);
				String feedback = rs.getString(4);
				String cLocation = rs.getString(5);
				String disLocation = rs.getString(6);
				int totDistance = rs.getInt(7);
				String ridefee = rs.getString(8);
				int passengerID = rs.getInt(9);
				int driver = rs.getInt(10);
				
				Ride r = new Ride(rid, date, time, feedback,disLocation,cLocation, totDistance, ridefee, passengerID, driver);
				ride.add(r);
			}
			
			
		}catch(Exception e){
			
		}		
		return ride;
	}
	
	public static String updateRideFee(String rid, String totDistance) {
		String totfee = null;
		int fee = 0;
		int convertedrid = Integer.parseInt(rid);
		int converteddis = Integer.parseInt(totDistance);
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			fee = converteddis * 100;
			
			totfee = String.valueOf(fee);
			
			String sql = "Update ride set ridefee = '"+ totfee +"', totDistance = '"+totDistance+"'  where rid = '"+ convertedrid +"' ";
			stmt.executeUpdate(sql);
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
			
		return totfee;
	}
	
	
	public static boolean deleteRide(String rid) {
		int convRID = Integer.parseInt(rid);
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from ride where rid = '"+ convRID +"' ";
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
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
	
	

	public static List<Ride> getALLRideList(){
		ArrayList<Ride> ride = new ArrayList<>();
		 
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from ride";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int rid = rs.getInt(1);
				String date = rs.getString(2);
				String time = rs.getString(3);
				String feedback = rs.getString(4);
				String cLocation = rs.getString(5);
				String disLocation = rs.getString(6);
				int totDistance = rs.getInt(7);
				String ridefee = rs.getString(8);
				int passengerID = rs.getInt(9);
				int driver = rs.getInt(10);
				
				Ride r = new Ride(rid, date, time, feedback,cLocation,disLocation, totDistance, ridefee, passengerID, driver);
				ride.add(r);
			}
			
			
		}catch(Exception e){
			
		}		
		return ride;
	}
	

	
	

}
